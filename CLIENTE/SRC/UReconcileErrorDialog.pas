{*******************************************************}
{                                                       }
{            Delphi Visual Component Library            }
{       ClientDataSet Standard Reconcile Error Dialog   }
{                                                       }
{ Copyright(c) 1995-2010 Embarcadero Technologies, Inc. }
{                                                       }
{*******************************************************}

{ Note: To use this dialog you should add a call to HandleReconcileError in
  the OnReconcileError event handler of TClientDataSet (see the Client dataset
  demos for an example).  Also, after adding this unit to your project you must
  go into the Project Options dialog and remove this form from the list of
  Auto-created forms or an error will occur when compiling. }

unit UReconcileErrorDialog;

interface
                          
uses
  SysUtils, Windows, Variants, Messages, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DB, DBClient, Provider, ExtCtrls, DBConsts, pngimage,
  Tabs, DockTabSet;

resourcestring
  SCaption = 'Erro ao enviar os dados - %s';
  SUnchanged = '<inalterado>';
  SBinary = '(Bin�rio)';
  SAdt = '(ADT)';
  SArray = '(Array)';
  SFieldName = 'Nome do campo';
  SOriginal = 'Valor original';
  SConflict = 'Valor conflitante';
  SValue = 'Valor de ';
  SNoData = '<sem registros>';
  SNew = 'Novo';

const
  ActionStr: array[TReconcileAction] of string = ('Ignorar', 'Abortar', 'Mesclar', 'Corrigir', 'Cancelar', 'Atualizar');
  UpdateKindStr: array[TUpdateKind] of string = ('Altera��o', 'Inser��o', 'Exclus�o');

type
  TReconcileErrorForm = class(TForm)
    UpdateType: TLabel;
    UpdateData: TStringGrid;
    ActionGroup: TRadioGroup;
    CancelBtn: TButton;
    OKBtn: TButton;
    ConflictsOnly: TCheckBox;
    IconImage: TImage;
    ErrorMsg: TMemo;
    ChangedOnly: TCheckBox;
    DKTSMensagens: TDockTabSet;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure UpdateDataSetEditText(Sender: TObject; ACol, ARow: Integer; const Value: string);
    procedure DisplayFieldValues(Sender: TObject);
    procedure UpdateDataSelectCell(Sender: TObject; Col, Row: Integer; var CanSelect: Boolean);
    procedure DKTSMensagensChange(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);
  private
    FDataSet: TDataSet;
    FError: EReconcileError;
    FUpdateKind: TUpdateKind;
    FDataFields: TList;
    FCurColIdx: Integer;
    FNewColIdx: Integer;
    FOldColIdx: Integer;
    FErro: String;
    FDetalhes: String;
    FContexto: String;
    FMensagemNaoTratada: String;
    procedure AdjustColumnWidths;
    procedure InitDataFields;
    procedure InitUpdateData(HasCurValues: Boolean);
    procedure InitReconcileActions;
    procedure SetFieldValues(DataSet: TDataSet);
    procedure TratarMensagemDeErro(aEReconcileError: EReconcileError);
  public
    constructor CreateForm(DataSet: TDataSet; UpdateKind: TUpdateKind; Error: EReconcileError);
  end;

function HandleReconcileError(DataSet: TDataSet;  UpdateKind: TUpdateKind; ReconcileError: EReconcileError): TReconcileAction;

implementation

{$R *.dfm}

uses
  StrUtils;

type
  PFieldData = ^TFieldData;
  TFieldData = record
    Field: TField;
    NewValue: string;
    OldValue: string;
    CurValue: string;
    EditValue: string;
    Edited: Boolean;
  end;

{ Public and Private Methods }

function HandleReconcileError(DataSet: TDataSet; UpdateKind: TUpdateKind; ReconcileError: EReconcileError): TReconcileAction;
var
  UpdateForm: TReconcileErrorForm;
begin
  UpdateForm := TReconcileErrorForm.CreateForm(DataSet, UpdateKind, ReconcileError);
  with UpdateForm do
  try
    if ShowModal = mrOK then
    begin
      Result := TReconcileAction(ActionGroup.Items.Objects[ActionGroup.ItemIndex]);
      if Result = raCorrect then SetFieldValues(DataSet);
    end else
      Result := raAbort;
  finally
    Free;
  end;
end;

{ Routine to convert a variant value into a string.
  Handles binary fields types and "empty" (Unchanged) field values specially }

function VarToString(V: Variant; DataType: TFieldType): string;
const
  BinaryDataTypes: set of TFieldType = [ftBytes, ftVarBytes, ftBlob,
    ftGraphic..ftCursor];
begin
  try
    if VarIsClear(V) then
      Result := SUnchanged
    else if DataType in BinaryDataTypes then
      Result := SBinary
    else if DataType in [ftAdt] then
      Result := SAdt
    else if DataType in [ftArray] then
      Result := SArray
    else
      Result := VarToStr(V);
  except
    on E: Exception do
      Result := E.Message;
  end;
end;

{ TReconcileErrorForm }

constructor TReconcileErrorForm.CreateForm(DataSet: TDataSet;
  UpdateKind: TUpdateKind; Error: EReconcileError);
begin
  FDataSet := DataSet;
  FUpdateKind := UpdateKind;
  FError := Error;
  inherited Create(Application);
end;

{ Create a list of the data fields in the dataset, and store string values
  associated with NewValue, OldValue, and CurValue in string variables
  to make display switching faster }

procedure TReconcileErrorForm.InitDataFields;
var
  I: Integer;
  FD: PFieldData;
  V: Variant;
  HasCurValues: Boolean;
begin
  HasCurValues := False;
  for I := 0 to FDataSet.FieldCount - 1 do
  with FDataset.Fields[I] do
  begin
    if (FieldKind <> fkData) then Continue;
    FD := New(PFieldData);
    try
      FD.Field := FDataset.Fields[I];
      FD.Edited := False;
      if FUpdateKind <> ukDelete then
        FD.NewValue := VarToString(NewValue, DataType);
      V := CurValue;
      if not VarIsClear(V) then HasCurValues := True;
      FD.CurValue := VarToString(CurValue, DataType);
      if FUpdateKind <> ukInsert then
        FD.OldValue := VarToString(OldValue, DataType);
      FDataFields.Add(FD);
    except
      Dispose(FD);
      raise;
    end;
  end;
  InitUpdateData(HasCurValues);
end;

{ Initialize the column indexes and grid titles }

procedure TReconcileErrorForm.InitUpdateData(HasCurValues: Boolean);
var
  FColCount: Integer;
begin
  FColCount := 1;
  UpdateData.ColCount := 4;
  UpdateData.Cells[0,0] := SFieldName;
  if FUpdateKind <> ukDelete then
  begin
    FNewColIdx := FColCount;
    Inc(FColCount);
    UpdateData.Cells[FNewColIdx,0] := SValue + UpdateKindStr[FUpdateKind];
  end else
  begin
    FOldColIdx := FColCount;
    Inc(FColCount);
    UpdateData.Cells[FOldColIdx,0] := SOriginal;
  end;
  if HasCurValues then
  begin
    FCurColIdx := FColCount;
    Inc(FColCount);
    UpdateData.Cells[FCurColIdx,0] := SConflict;
  end;
  if FUpdateKind = ukModify then
  begin
    FOldColIdx := FColCount;
    Inc(FColCount);
    UpdateData.Cells[FOldColIdx,0] := SOriginal;
  end;
  UpdateData.ColCount := FColCount;
end;

{ Update the reconcile action radio group based on the valid reconcile actions }

procedure TReconcileErrorForm.InitReconcileActions;

  procedure AddAction(Action: TReconcileAction);
  begin
    ActionGroup.Items.AddObject(ActionStr[Action], TObject(Action));
  end;

begin
  AddAction(raSkip);
  AddAction(raCancel);
  AddAction(raCorrect);
  if FCurColIdx > 0 then
  begin
    AddAction(raRefresh);
    AddAction(raMerge);
  end;
  ActionGroup.ItemIndex := 0;
end;

{ Update the grid based on the current display options }

procedure TReconcileErrorForm.DisplayFieldValues(Sender: TObject);
var
  I: Integer;
  CurRow: Integer;
  Action: TReconcileAction;
begin
  if not Visible then Exit;
  Action := TReconcileAction(ActionGroup.Items.Objects[ActionGroup.ItemIndex]);
  UpdateData.Col := 1;
  UpdateData.Row := 1;
  CurRow := 1;
  UpdateData.RowCount := 2;
  UpdateData.Cells[0, CurRow] := SNoData;
  for I := 1 to UpdateData.ColCount - 1 do
    UpdateData.Cells[I, CurRow] := '';
  for I := 0 to FDataFields.Count - 1 do
    with PFieldData(FDataFields[I])^ do
    begin
      if ConflictsOnly.Checked and (CurValue = SUnChanged) then Continue;
      if ChangedOnly.Checked and (NewValue = SUnChanged) then Continue;
      UpdateData.RowCount := CurRow + 1;
      UpdateData.Cells[0, CurRow] := Field.DisplayName;
      if FNewColIdx > 0 then
      begin
        case Action of
          raCancel, raRefresh:
            UpdateData.Cells[FNewColIdx, CurRow] := SUnChanged;
          raCorrect:
            if Edited then
              UpdateData.Cells[FNewColIdx, CurRow] := EditValue else
              UpdateData.Cells[FNewColIdx, CurRow] := NewValue;
          else
            UpdateData.Cells[FNewColIdx, CurRow] := NewValue;
        end;
        UpdateData.Objects[FNewColIdx, CurRow] := FDataFields[I];
      end;
      if FCurColIdx > 0 then
        UpdateData.Cells[FCurColIdx, CurRow] := CurValue;
      if FOldColIdx > 0 then
        if (Action in [raMerge, raRefresh]) and (CurValue <> SUnchanged) then
           UpdateData.Cells[FOldColIdx, CurRow] := CurValue else
           UpdateData.Cells[FOldColIdx, CurRow] := OldValue;
      Inc(CurRow);
    end;
  AdjustColumnWidths;
end;

procedure TReconcileErrorForm.DKTSMensagensChange(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);
begin
  case NewTab of
    0: ErrorMsg.Text := FErro;
    1: ErrorMsg.Text := FDetalhes;
    2: ErrorMsg.Text := FContexto;
    3: ErrorMsg.Text := FMensagemNaoTratada;
  end;
end;

{ For fields that the user has edited, copy the changes back into the
  NewValue property of the associated field }

procedure TReconcileErrorForm.SetFieldValues(DataSet: TDataSet);
var
  I: Integer;
begin
  for I := 0 to FDataFields.Count - 1 do
    with PFieldData(FDataFields[I])^ do
      if Edited then Field.NewValue := EditValue;
end;

procedure TReconcileErrorForm.AdjustColumnWidths;
var
  NewWidth, I: integer;
begin
  with UpdateData do
  begin
    NewWidth := (ClientWidth - ColWidths[0]) div (ColCount - 1);
    for I := 1 to ColCount - 1 do
      ColWidths[I] := NewWidth - 1;
  end;
end;

procedure TReconcileErrorForm.TratarMensagemDeErro(aEReconcileError: EReconcileError);
const
  TagErro     = 'ERRO:  ';    { 1 }
  TagDetalhe  = 'DETAIL:  ';  { 2 }
  TagDica     = 'HINT:  ';    { 3 }
  TagContexto = 'CONTEXT:  '; { 4 }
var
  PosTagErro, PosTagDetalhe, PosTagContexto, PosTagDica, LenTagErro,
  LenTagDetalhe, LenTagContexto, LenTagDica: Word;
  Tags: TStringList;
{ ---------------------------------------------------------------------------- }
function NextTagPos(aTagID: Word): Word;
var
  TagIndex: Word;
begin
  case aTagId of
    1: Result := Length(aEReconcileError.Message) + PosTagErro + LenTagErro;
    2: Result := Length(aEReconcileError.Message) + PosTagDetalhe + LenTagDetalhe;
    3: Result := Length(aEReconcileError.Message) + PosTagDica + LenTagDica;
    else
      Result := Length(aEReconcileError.Message) + PosTagContexto + LenTagContexto;
  end;

  TagIndex := Tags.IndexOfObject(TObject(aTagID));
  Inc(TagIndex);
  if TagIndex < Tags.Count then
    Result := StrToInt(Copy(Tags[TagIndex],2,Length(Tags[TagIndex])));
end;
{ ---------------------------------------------------------------------------- }
begin
  FMensagemNaoTratada := aEReconcileError.Message;
  Tags := TStringList.Create;
  Tags.Sorted := True;
  try
    { Adiciona na lista a posi��o de cada um dos Tags. Como a lista � ordenada,
    ao final a ordem de itens na mesma ser� igual a ordem de aparecimento do tag
    na string de erro }
    PosTagErro := Pos(TagErro,aEReconcileError.Message);
    if PosTagErro > 0 then
    begin
      Tags.AddObject(Format('T%.5u',[PosTagErro]),TObject(1));
      LenTagErro := Length(TagErro);
    end;

    PosTagDetalhe := Pos(TagDetalhe,aEReconcileError.Message);
    if PosTagDetalhe > 0 then
    begin
      Tags.AddObject(Format('T%.5u',[PosTagDetalhe]),TObject(2));
      LenTagDetalhe := Length(TagDetalhe);
    end;

    PosTagDica := Pos(TagDica,aEReconcileError.Message);
    if PosTagDica > 0 then
    begin
      Tags.AddObject(Format('T%.5u',[PosTagDica]),TObject(3));
      LenTagDica := Length(TagDica);
    end;

    PosTagContexto := Pos(TagContexto,aEReconcileError.Message);
    if PosTagContexto > 0 then
    begin
      Tags.AddObject(Format('T%.5u',[PosTagContexto]),TObject(4));
      LenTagContexto := Length(TagContexto);
    end;

    { Para cada tag encontrado, obt�m a mensagem correspondente }
    FErro := 'N/A';
    if PosTagErro > 0 then
    begin
      FErro  := Trim(Copy(aEReconcileError.Message
                         ,PosTagErro + LenTagErro
                         ,NextTagPos(1) - PosTagErro - LenTagErro));

    end;

    FDetalhes := 'N/A';
    if PosTagDetalhe > 0 then
    begin
      FDetalhes := Trim(Copy(aEReconcileError.Message
                            ,PosTagDetalhe + LenTagDetalhe
                            ,NextTagPos(2) - PosTagDetalhe - LenTagDetalhe));
    end;

    if PosTagDica > 0 then
    begin
      FDetalhes := IfThen(FDetalhes = 'N/A','',FDetalhes)
                 + Trim(Copy(aEReconcileError.Message
                            ,PosTagDica + LenTagDica
                            ,NextTagPos(3) - PosTagDica - LenTagDica));
    end;

    FContexto := 'N/A';
    if PosTagContexto > 0 then
    begin
      FContexto := Trim(Copy(aEReconcileError.Message
                            ,PosTagContexto + LenTagContexto
                            ,NextTagPos(4) - PosTagContexto - LenTagContexto));
    end;

    { Se ao final, nenhuma mensagem separada tiver sido encontrada, ent�o coloca
    toda mensagem de erro na aba de erro (geral) }
    if (FErro = 'N/A') and (FDetalhes = 'N/A') and (FContexto = 'N/A') then
      FErro := aEReconcileError.Message;
  finally
    Tags.Free;
  end;

  { Substituindo pelo estilo de fim de linha do windows }
  FErro := StringReplace(FErro,#$0A,#$0D#$0A,[rfReplaceAll]);
  FDetalhes := StringReplace(FDetalhes,#$0A,#$0D#$0A,[rfReplaceAll]);
  FContexto := StringReplace(FContexto,#$0A,#$0D#$0A,[rfReplaceAll]);
  { Ajustando o cabe�alho do contexto }
  FContexto := StringReplace(FContexto,'comando SQL','comando SQL'#$0D#$0A'    ',[rfIgnoreCase]);

//ERRO:  duplicar valor da chave viola a restri��o de unicidade "uc_usu_va_login"
//DETAIL:  Chave (va_login)=(admin) j� existe.
//CONTEXT:  comando SQL "INSERT INTO USUARIOS (VA_NOME
//	                           ,VA_LOGIN
//	                           ,CH_SENHA
//	                           ,VA_EMAIL)
//	                    VALUES (pVA_NOME
//	                           ,pVA_LOGIN
//	                           ,pCH_SENHA
//	                           ,pVA_EMAIL)"
//	PL/pgSQL function "idu_usuarios" line 7 at comando SQL

end;

{ Event handlers }

procedure TReconcileErrorForm.FormCreate(Sender: TObject);
begin
  if not Assigned(FDataSet) then
    Exit;

  FDataFields := TList.Create;
  InitDataFields;

  Caption := Format(SCaption, [FDataSet.Name]);

  UpdateType.Caption := UpdateKindStr[FUpdateKind];

  TratarMensagemDeErro(FError);

  ErrorMsg.Text := FErro;

  ConflictsOnly.Enabled := FCurColIdx > 0;
  ConflictsOnly.Checked := ConflictsOnly.Enabled;
  ChangedOnly.Enabled := FNewColIdx > 0;
  InitReconcileActions;
  UpdateData.DefaultRowHeight := UpdateData.Canvas.TextHeight('SWgjp') + 7; { Do not localize }
end;

procedure TReconcileErrorForm.FormDestroy(Sender: TObject);
var
  I: Integer;
begin
  if Assigned(FDataFields) then
  begin
    for I := 0 to FDataFields.Count - 1 do
      Dispose(PFieldData(FDataFields[I]));
    FDataFields.Destroy;
  end;
end;

{ Set the Edited flag in the DataField list and save the value }

procedure TReconcileErrorForm.UpdateDataSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
begin
  PFieldData(UpdateData.Objects[ACol, ARow]).EditValue := Value;
  PFieldData(UpdateData.Objects[ACol, ARow]).Edited := True;
end;

{ Enable the editing in the grid if we are on the NewValue column and the
  current reconcile action is raCorrect }

procedure TReconcileErrorForm.UpdateDataSelectCell(Sender: TObject; Col,
  Row: Integer; var CanSelect: Boolean);
begin
  if (Col = FNewColIdx) and
    (TReconcileAction(ActionGroup.Items.Objects[ActionGroup.ItemIndex]) = raCorrect) then
    UpdateData.Options := UpdateData.Options + [goEditing] else
    UpdateData.Options := UpdateData.Options - [goEditing];
end;

end.

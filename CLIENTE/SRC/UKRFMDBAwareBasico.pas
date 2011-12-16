unit UKRFMDBAwareBasico;

{ Anak Krakatoa Form. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses Windows
   , Messages
   , SysUtils
   , Classes
   , Graphics
   , Controls
   , Forms
   , KRK.Wizards.Form
   , ToolWin
   , StdCtrls
   , ComCtrls
   , ImgList
   , ActnList
   , DBCtrls;

type
  TDBNavigator = class (DBCtrls.TDBNavigator)
  public
    procedure BtnClick(Index: TNavigateBtn); override;
  end;

  TKRFMDBAwareBasico = class(TKRKForm)
    TLBRAcoes: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    IMLIToolBarAtivo: TImageList;
    ACLIToolbar: TActionList;
    ACTNConfirmar: TAction;
    ACTNReverter: TAction;
    LABLCaption: TLabel;
    IMLIToolBarInativo: TImageList;
    procedure KRKFormCreate(Sender: TObject);
    procedure ACLIToolbarUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure ACTNConfirmarExecute(Sender: TObject);
    procedure KRKFormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ACTNReverterExecute(Sender: TObject);
  private
    { Declarações privadas }
    function AtualizacoesPendentes: Boolean;
    procedure Confirmar;
    procedure Reverter;
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
  end;

implementation

{$R *.dfm}

uses KRK.Wizards.DataModule
   , DBCLient;

procedure TKRFMDBAwareBasico.ACLIToolbarUpdate(Action: TBasicAction; var Handled: Boolean);
var
  CI: TCollectionItem;
begin
  for CI in TKRKDataModule(Owner).DataSets do
    if TDataSetItem(CI).DataSet.Active and TDataSetItem(CI).DataSet.ClassNameIs('TClientDataset') and (TClientDataset(TDataSetItem(CI).DataSet).ChangeCount > 0) then
    begin
      ACTNConfirmar.Enabled := True;
      ACTNReverter.Enabled := True;
      Handled := True;
    end;

  if not Handled then
  begin
    ACTNConfirmar.Enabled := False;
    ACTNReverter.Enabled := False;
  end;
end;

procedure TKRFMDBAwareBasico.ACTNConfirmarExecute(Sender: TObject);
begin
  Confirmar;
end;

procedure TKRFMDBAwareBasico.ACTNReverterExecute(Sender: TObject);
begin
  if Application.MessageBox('Tem certeza de que quer reverter todas as alterações feitas nesta tela?','Atualizações pendentes',MB_ICONQUESTION or MB_YESNO) = IDYES then
    Reverter;
end;

procedure TKRFMDBAwareBasico.Confirmar;
var
  CI: TCollectionItem;
begin
  for CI in TKRKDataModule(Owner).DataSets do
    if TDataSetItem(CI).DataSet.ClassNameIs('TClientDataset') and TDataSetItem(CI).DataSet.Active and (TClientDataset(TDataSetItem(CI).DataSet).ChangeCount > 0) then
      TClientDataset(TDataSetItem(CI).DataSet).ApplyUpdates(0);
end;

function TKRFMDBAwareBasico.AtualizacoesPendentes: Boolean;
var
  CI: TCollectionItem;
begin
  Result := False;
  for CI in TKRKDataModule(Owner).DataSets do
    if TDataSetItem(CI).DataSet.ClassNameIs('TClientDataset') and TDataSetItem(CI).DataSet.Active and (TClientDataset(TDataSetItem(CI).DataSet).ChangeCount > 0) then
    begin
      Result := True;
      Break;
    end;
end;

procedure TKRFMDBAwareBasico.KRKFormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := (not AtualizacoesPendentes) or (Application.MessageBox('Existem alterações não salvas. Tem certeza de que quer fechar e perder todas as informações não salvas?','Atualizações pendentes',MB_ICONQUESTION or MB_YESNO) = IDYES)
end;

procedure TKRFMDBAwareBasico.KRKFormCreate(Sender: TObject);
begin
  LABLCaption.Caption := '  ' + Caption;
end;

procedure TKRFMDBAwareBasico.Reverter;
var
  CI: TCollectionItem;
begin
  for CI in TKRKDataModule(Owner).DataSets do
    if TDataSetItem(CI).DataSet.ClassNameIs('TClientDataset') and TDataSetItem(CI).DataSet.Active and (TClientDataset(TDataSetItem(CI).DataSet).ChangeCount > 0) then
      TClientDataset(TDataSetItem(CI).DataSet).CancelUpdates;
end;

{ TDBNavigator }

procedure TDBNavigator.BtnClick(Index: TNavigateBtn);
begin
  if Index = nbRefresh then
    if TClientDataSet(DataSource.DataSet).ChangeCount = 0 then
    begin
      if TClientDataSet(DataSource.DataSet).Params[0].AsInteger = -1 then
        TClientDataSet(DataSource.DataSet).Params[0].Clear;
    end
    else
    begin
      Application.MessageBox('Não é possível atualizar até que as alterações sejam confirmadas ou revertidas. Utilize os botões no canto superior esquerdo da tela para confirmar ou reverter TODAS AS ALTERAÇÕES na mesma','Existem alterações não confirmadas',MB_ICONWARNING);
      Abort
    end;

  inherited;
end;

end.

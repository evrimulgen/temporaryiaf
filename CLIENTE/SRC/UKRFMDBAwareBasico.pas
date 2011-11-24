unit UKRFMDBAwareBasico;

{ Anak Krakatoa Form. Copyright 2011 / 2012 Zetta-�mnis Solu��es Tecnol�gicas Ltda. }

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
   , ActnList;

type
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
    { Declara��es privadas }
    function AtualizacoesPendentes: Boolean;
    procedure Confirmar;
    procedure Reverter;
  protected
    { Declara��es protegidas }
  public
    { Declara��es p�blicas }
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
  if Application.MessageBox('Tem certeza de que quer reverter todas as altera��es feitas nesta tela?','Atualiza��es pendentes',MB_ICONQUESTION or MB_YESNO) = IDYES then
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
  CanClose := (not AtualizacoesPendentes) or (Application.MessageBox('Existem altera��es n�o salvas. Tem certeza de que quer fechar e perder todas as informa��es n�o salvas?','Atualiza��es pendentes',MB_ICONQUESTION or MB_YESNO) = IDYES)
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

end.

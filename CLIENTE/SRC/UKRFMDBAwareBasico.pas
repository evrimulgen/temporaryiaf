unit UKRFMDBAwareBasico;

{ Anak Krakatoa Form. Copyright 2011 / 2012 Zetta-�mnis Solu��es Tecnol�gicas Ltda. }

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms
   , ToolWin, StdCtrls, ComCtrls, ImgList, ActnList, DBCtrls, ActnMenus
   { Units que n�o pertencem ao Delphi }
   , KRK.Wizards.Form, KRK.Lib.Rtl.Common.Classes.Interposer;

type
{$I INT\Interposer.TDBNavigator.Intf.inc}

{$I INT\Interposer.TTabSheet.Intf.inc}

{$I INT\Interposer.TActionList.Intf.inc}

{$I INT\Interposer.TAction.Intf.inc}

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
    procedure ACLIToolbarUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure ACTNConfirmarExecute(Sender: TObject);
    procedure KRKFormDBAwareBasicoCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ACTNReverterExecute(Sender: TObject);
    procedure KRKFormDBAwareBasicoClose(Sender: TObject; var Action: TCloseAction);
    procedure KRKFormCreate(Sender: TObject);
  private
    { Declara��es privadas }
    FActionMainMenuBar: TActionMainMenuBar;
    function AtualizacoesPendentes: Boolean;
    procedure Confirmar;
    procedure Reverter;
  protected
    { Declara��es protegidas }
    procedure Activate; override;
    procedure Deactivate; override;
  public
    { Declara��es p�blicas }
  end;

implementation

{$R *.dfm}

uses Dialogs, DBClient, DB
   { Units que n�o pertencem ao Delphi }
   , UDAMOPrincipal, KRK.Wizards.DataModule;

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

procedure TKRFMDBAwareBasico.Activate;
begin
  inherited;
  if Assigned(FActionMainMenuBar) then
  begin
    DAMOPrincipal.FORMPrincipal.ACMMPrincipal.MergeMenu(FActionMainMenuBar);
    FActionMainMenuBar.Hide;
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

procedure TKRFMDBAwareBasico.Deactivate;
begin
  inherited;
  if Assigned(Owner) then
    DAMOPrincipal.FORMPrincipal.ACMMPrincipal.RemoveMergedMenus;
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

procedure TKRFMDBAwareBasico.KRKFormCreate(Sender: TObject);
var
  i, j: Word;
begin
  LABLCaption.Caption := '  ' + Caption;

  for i := 0 to Pred(ComponentCount) do
  begin
    { Todo TActionMainMenuBar � ocult�vel }
    if Components[i] is ActnMenus.TActionMainMenuBar then
    begin
      FActionMainMenuBar := TActionMainMenuBar(Components[i]);
      FActionMainMenuBar.AllowHiding := True;
      FActionMainMenuBar.ClearNullMenus;
      Break; { Apenas o primeiro ActionMainMenuBar � afetado! }
    end;

    { Cada TTabSheet deve ser atribu�do � sua a��o correspondente, desde que
    haja uma a��o no DataModule com o mesmo nome }
    if Components[i] is TTabSheet then
      for j := 0 to Pred(TKRKDataModule(Owner).ComponentCount) do
        { est� sendo usado ActnList.TAction porque ao se usar apenas TAction
        estar�amos comparando com no nosso TAction local p qual nunca ser� o
        mesmo TAction do datamodule. Usar ActnList.TAction garante que a
        compara��o seja feita pelo ancestral comum tanto do TAction local como
        daquele existente no DM }
        if (TKRKDataModule(Owner).Components[j] is ActnList.TAction) and (TKRKDataModule(Owner).Components[j].Name = 'ACTN' + Components[i].Name) then
        begin
          TAction(TKRKDataModule(Owner).Components[j]).Caption := TTabSheet(Components[i]).Caption;
          { A linha abaixo torna a implementa��o do m�todo execute da a��o
          opcional. Assim, a��es que n�o tem um m�todo execute, permanecem
          habilitadas, assim como todos os clientes conectados a elas }
          TAction(TKRKDataModule(Owner).Components[j]).DisableIfNoHandler := False;
          { A linha abaixo instrui que uma mudan�a nas permiss�es vai alterar a
          visibilidade do componente, isto �, sem permiss�o = invis�vel. O
          padr�o � apenas desabilitar, mas como estamos falando de tabsheets, o
          correto � ocultar }
          TAction(TKRKDataModule(Owner).Components[j]).PermissionTogglesVisibility := True;
          TTabSheet(Components[i]).Action := TAction(TKRKDataModule(Owner).Components[j]);
        end;
  end;
end;

procedure TKRFMDBAwareBasico.KRKFormDBAwareBasicoClose(Sender: TObject; var Action: TCloseAction);
begin
  DAMOPrincipal.FORMPrincipal.ACMMPrincipal.RemoveMergedMenus;
end;

procedure TKRFMDBAwareBasico.KRKFormDBAwareBasicoCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := (not AtualizacoesPendentes) or (Application.MessageBox('Existem altera��es n�o salvas. Tem certeza de que quer fechar e perder todas as informa��es n�o salvas?','Atualiza��es pendentes',MB_ICONQUESTION or MB_YESNO) = IDYES)
end;

procedure TKRFMDBAwareBasico.Reverter;
var
  CI: TCollectionItem;
begin
  for CI in TKRKDataModule(Owner).DataSets do
    if TDataSetItem(CI).DataSet.ClassNameIs('TClientDataset') and TDataSetItem(CI).DataSet.Active and (TClientDataset(TDataSetItem(CI).DataSet).ChangeCount > 0) then
      TClientDataset(TDataSetItem(CI).DataSet).CancelUpdates;
end;

{$I INT\Interposer.TDBNavigator.Impl.inc}

{$I INT\Interposer.TTabSheet.Impl.inc}

{$I INT\Interposer.TActionList.Impl.inc}

{$I INT\Interposer.TAction.Impl.inc}

end.

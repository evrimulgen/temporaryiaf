unit UKRFMDBAwareBasico;

{ Anak Krakatoa Form. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms
   , ToolWin, StdCtrls, ComCtrls, ImgList, ActnList, DBCtrls, ActnMenus
   { Units que não pertencem ao Delphi }
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
    { Declarações privadas }
    FActionMainMenuBar: TActionMainMenuBar;
    function AtualizacoesPendentes: Boolean;
    procedure Confirmar;
    procedure Reverter;
  protected
    { Declarações protegidas }
    procedure Activate; override;
    procedure Deactivate; override;
  public
    { Declarações públicas }
  end;

implementation

{$R *.dfm}

uses Dialogs, DBClient, DB
   { Units que não pertencem ao Delphi }
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
    { Todo TActionMainMenuBar é ocultável }
    if Components[i] is ActnMenus.TActionMainMenuBar then
    begin
      FActionMainMenuBar := TActionMainMenuBar(Components[i]);
      FActionMainMenuBar.AllowHiding := True;
      FActionMainMenuBar.ClearNullMenus;
      Break; { Apenas o primeiro ActionMainMenuBar é afetado! }
    end;

    { Cada TTabSheet deve ser atribuído à sua ação correspondente, desde que
    haja uma ação no DataModule com o mesmo nome }
    if Components[i] is TTabSheet then
      for j := 0 to Pred(TKRKDataModule(Owner).ComponentCount) do
        { está sendo usado ActnList.TAction porque ao se usar apenas TAction
        estaríamos comparando com no nosso TAction local p qual nunca será o
        mesmo TAction do datamodule. Usar ActnList.TAction garante que a
        comparação seja feita pelo ancestral comum tanto do TAction local como
        daquele existente no DM }
        if (TKRKDataModule(Owner).Components[j] is ActnList.TAction) and (TKRKDataModule(Owner).Components[j].Name = 'ACTN' + Components[i].Name) then
        begin
          TAction(TKRKDataModule(Owner).Components[j]).Caption := TTabSheet(Components[i]).Caption;
          { A linha abaixo torna a implementação do método execute da ação
          opcional. Assim, ações que não tem um método execute, permanecem
          habilitadas, assim como todos os clientes conectados a elas }
          TAction(TKRKDataModule(Owner).Components[j]).DisableIfNoHandler := False;
          { A linha abaixo instrui que uma mudança nas permissões vai alterar a
          visibilidade do componente, isto é, sem permissão = invisível. O
          padrão é apenas desabilitar, mas como estamos falando de tabsheets, o
          correto é ocultar }
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
  CanClose := (not AtualizacoesPendentes) or (Application.MessageBox('Existem alterações não salvas. Tem certeza de que quer fechar e perder todas as informações não salvas?','Atualizações pendentes',MB_ICONQUESTION or MB_YESNO) = IDYES)
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

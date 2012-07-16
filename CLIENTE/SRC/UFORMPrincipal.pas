unit UFORMPrincipal;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms
   , Dialogs, ToolWin, ActnMan, ActnCtrls, ActnMenus, Menus, ComCtrls, ActnList
   , StdCtrls, KRK.Lib.Rtl.Common.Classes.Interposer, ExtCtrls;

type
  TFORMPrincipal = class(TForm)
    ACMMPrincipal: TActionMainMenuBar;
    ACTBPrincipal: TActionToolBar;
    STTBPrincipal: TStatusBar;
    PRBAAndamento: TProgressBar;
    procedure ACMMPrincipalPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses UDAMOPrincipal;

{$R *.dfm}

{$HINTS OFF}
type
  TActionMainMenuBarHack = class(TCustomActionMenuBar)
  private
    FMDIActions: TActionList;
    FMDIActivate: Boolean;
    FInActive: Boolean;
    FShadows: Boolean;
    FWindowMenu: string;
    FMinimizeBtn: TCustomMDIMenuButton;
    FRestoreBtn: TCustomMDIMenuButton;
    FCloseBtn: TCustomMDIMenuButton;
  end;
{$HINTS ON}

procedure TFORMPrincipal.ACMMPrincipalPaint(Sender: TObject);
begin
  { Ocultando os bot�es MDI que n�o ser�o usados }
  if Assigned(TActionMainMenuBarHack(ACMMPrincipal).FMinimizeBtn) and TActionMainMenuBarHack(ACMMPrincipal).FMinimizeBtn.Visible then
    TActionMainMenuBarHack(ACMMPrincipal).FMinimizeBtn.Hide;

  if Assigned(TActionMainMenuBarHack(ACMMPrincipal).FRestoreBtn) and TActionMainMenuBarHack(ACMMPrincipal).FRestoreBtn.Visible then
    TActionMainMenuBarHack(ACMMPrincipal).FRestoreBtn.Hide;
end;

procedure TFORMPrincipal.FormCreate(Sender: TObject);
var
  ABI: TCollectionItem;
begin
  { Oculta categorias que n�o tem itens vis�veis. Explicando: os
  TActionClientItem s�o os itens do menu principal. Estes �tens n�o s�o a��es,
  mas podem ser associados a a��es. Ao criar um menu TActionMainMenuBar e
  arrastar a��es e/ou categorias de a��es para ele, v�rios TActionClientItem s�o
  criados e cada um deles representa um �tem do menu. Alguns desses �tens s�o
  automaticamente associados a a��es reais, � por isso que alguns
  TActionClientItem quando clicados em tempo de execu��o executam uma a��o,
  enquanto outros s�o apenas menus com submenus! Ao tentar entender o procedure
  recursivo "CascadeHiding", esque�a as a��es e lembre-se apenas de itens de
  menu hierarquicos }
  for ABI in DAMOPrincipal.ACMAPrincipal.ActionBars do
    if TActionBarItem(ABI).ActionBar is TActionMainMenuBar then
    begin
      TActionMainMenuBar(TActionBarItem(ABI).ActionBar).ClearNullMenus;
      Break; // Apenas o primeiro TActionMainMenuBar ser� manipulado
    end;
end;

end.

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
  { Ocultando os botões MDI que não serão usados }
  if Assigned(TActionMainMenuBarHack(ACMMPrincipal).FMinimizeBtn) and TActionMainMenuBarHack(ACMMPrincipal).FMinimizeBtn.Visible then
    TActionMainMenuBarHack(ACMMPrincipal).FMinimizeBtn.Hide;

  if Assigned(TActionMainMenuBarHack(ACMMPrincipal).FRestoreBtn) and TActionMainMenuBarHack(ACMMPrincipal).FRestoreBtn.Visible then
    TActionMainMenuBarHack(ACMMPrincipal).FRestoreBtn.Hide;
end;

procedure TFORMPrincipal.FormCreate(Sender: TObject);
var
  ABI: TCollectionItem;
begin
  { Oculta categorias que não tem itens visíveis. Explicando: os
  TActionClientItem são os itens do menu principal. Estes ítens não são ações,
  mas podem ser associados a ações. Ao criar um menu TActionMainMenuBar e
  arrastar ações e/ou categorias de ações para ele, vários TActionClientItem são
  criados e cada um deles representa um ítem do menu. Alguns desses ítens são
  automaticamente associados a ações reais, é por isso que alguns
  TActionClientItem quando clicados em tempo de execução executam uma ação,
  enquanto outros são apenas menus com submenus! Ao tentar entender o procedure
  recursivo "CascadeHiding", esqueça as ações e lembre-se apenas de itens de
  menu hierarquicos }
  for ABI in DAMOPrincipal.ACMAPrincipal.ActionBars do
    if TActionBarItem(ABI).ActionBar is TActionMainMenuBar then
    begin
      TActionMainMenuBar(TActionBarItem(ABI).ActionBar).ClearNullMenus;
      Break; // Apenas o primeiro TActionMainMenuBar será manipulado
    end;
end;

end.

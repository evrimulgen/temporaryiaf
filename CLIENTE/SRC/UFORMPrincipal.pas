unit UFORMPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, ActnMenus, Menus, ComCtrls, ActnList,
  StdCtrls;

type
  TFORMPrincipal = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar1: TActionToolBar;
    StatusBar1: TStatusBar;
    PRBAAndamento: TProgressBar;
    procedure ActionMainMenuBar1Paint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

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

procedure TFORMPrincipal.ActionMainMenuBar1Paint(Sender: TObject);
begin
  { Ocultando os botões MDI que não serão usados }
  if Assigned(TActionMainMenuBarHack(ActionMainMenuBar1).FMinimizeBtn) and TActionMainMenuBarHack(ActionMainMenuBar1).FMinimizeBtn.Visible then
    TActionMainMenuBarHack(ActionMainMenuBar1).FMinimizeBtn.Hide;

  if Assigned(TActionMainMenuBarHack(ActionMainMenuBar1).FRestoreBtn) and TActionMainMenuBarHack(ActionMainMenuBar1).FRestoreBtn.Visible then
    TActionMainMenuBarHack(ActionMainMenuBar1).FRestoreBtn.Hide;
end;

end.

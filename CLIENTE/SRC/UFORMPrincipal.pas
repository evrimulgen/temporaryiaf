unit UFORMPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, ActnMenus, Menus, ComCtrls, ActnList,
  StdCtrls;

type
  TFORMPrincipal = class(TForm)
    ACMMPrincipal: TActionMainMenuBar;
    ACTBPrincipal: TActionToolBar;
    STTBPrincipal: TStatusBar;
    PRBAAndamento: TProgressBar;
    procedure ACMMPrincipalPaint(Sender: TObject);
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

end.

unit UFORMPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, ActnMenus, UDAMOPrincipal;

type
  TFORMPrincipal = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar1: TActionToolBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FDAMOPrincipal: TDAMOPrincipal;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    class procedure ShowMe;
    property DAMOPrincipal: TDAMOPrincipal read FDAMOPrincipal;
  end;

implementation

uses UAuthenticator;

{$R *.dfm}

constructor TFORMPrincipal.Create(aOwner: TComponent);
begin
  FDAMOPrincipal := TDAMOPrincipal.Create(Self);

  { Se a aplica��o terminou antes de come�ar ent�o n�o precisamos fazer mais
  nada. O uso de Processmessages � obrigat�rio para mudar o status de
  Application.Terminated. Isso pode parecer for�ado, mas deve ser usado pois o
  DataModule criado acima pode cancelar o carregamento da aplica��o por conta de
  um login inv�lido }
  Application.ProcessMessages;
  if Application.Terminated then
    Exit;

  inherited;
end;

destructor TFORMPrincipal.Destroy;
begin
  { TODO -oCBFF : Isso pode causar problemas se a conex�o cair. Uma mensagem de
  erro pode aparecer para o usuario, mas pelo menos sempre tudo vai ser
  destru�do corretamente }
  try
    Logout(FDAMOPrincipal.SessionData.ID);
  finally
    FDAMOPrincipal.Free;
    inherited;
  end;
end;

procedure TFORMPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

class procedure TFORMPrincipal.ShowMe;
var
  P: Pointer;
  FORMPrincipal: TFORMPrincipal;
begin
  FORMPrincipal := TFORMPrincipal.Create(Application);

  if not Application.Terminated then
  begin
    P := @Application.Mainform;
    Pointer(P^) := FORMPrincipal;
  end;
end;

end.

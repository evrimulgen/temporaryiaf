unit UDAMOPrincipal;

interface

uses
  SysUtils, Classes, PlatformDefaultStyleActnCtrls, ActnList, ActnMan, DB,
  DBClient, SOAPConn;

type
  TSessionData = record
    ID: String;
  end;

  TDAMOPrincipal = class(TDataModule)
    ACMAPrincipal: TActionManager;
    ACTNAlterarSenha: TAction;
    ACTNAjuda: TAction;
    ACTNSobre: TAction;
    Action5: TAction;
    SoapConnection1: TSoapConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FSessionData: TSessionData;
  public
    { Public declarations }
    property SessionData: TSessionData read FSessionData;
  end;

implementation

uses UFORMPrincipal, Forms, UFORMLogin, Windows, Controls;

{$R *.dfm}

procedure TDAMOPrincipal.DataModuleCreate(Sender: TObject);
begin
  ZeroMemory(@FSessionData,SizeOf(TSessionData));

  if not (TFORMLogin.ShowMe(FSessionData.ID) = mrOk) then
    Application.Terminate
  else
//       with TBDOForm_Splash.Create(Application) do
//        begin
//            CanClose := False;
//            Show;
//            Update;
//            inherited;
//            CloseDelayed(2);
//        end;

end;

end.

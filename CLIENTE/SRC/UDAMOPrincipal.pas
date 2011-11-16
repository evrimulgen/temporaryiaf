unit UDAMOPrincipal;

interface

uses
  SysUtils, Classes, PlatformDefaultStyleActnCtrls, ActnList, ActnMan, DB,
  DBClient, SOAPConn, ImgList, Controls;

type
  TSessionConnection = record
    ID: String;
    Data: String;
  end;

  TDAMOPrincipal = class(TDataModule)
    ACMAPrincipal: TActionManager;
    ACTNAlterarSenha: TAction;
    ACTNAjuda: TAction;
    ACTNSobre: TAction;
    ACTNSair: TAction;
    SOCNPrincipal: TSoapConnection;
    IMLIPrincipal: TImageList;
    ACTNConfiguracoes: TAction;
    ACTNSegurancaEPermissoes: TAction;
    CNBRPrincipal: TConnectionBroker;
    procedure ACTNSegurancaEPermissoesExecute(Sender: TObject);
  private
    { Private declarations }
    FSessionConnection: TSessionConnection;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    property SessionConnection: TSessionConnection read FSessionConnection;
  end;

var
  DAMOPrincipal: TDAMOPrincipal;

implementation

{$R *.dfm}

uses Forms
   , Windows
   , UAuthenticator
   , UFORMPrincipal
   , UFORMLogin
   , UFORMSplash, UFORMSegurancaEPermissoes;

var
  FORMPrincipal: TFORMPrincipal;

procedure TDAMOPrincipal.ACTNSegurancaEPermissoesExecute(Sender: TObject);
begin
  Application.CreateForm(TFORMSegurancaEPermissoes,FORMSegurancaEPermissoes);
end;

constructor TDAMOPrincipal.Create(aOwner: TComponent);
begin
  inherited;
  ZeroMemory(@FSessionConnection,SizeOf(TSessionConnection));

  TFORMSplash.ShowMe(2);

  if (TFORMLogin.ShowMe(FSessionConnection.ID) = mrOk) then
    Application.CreateForm(TFORMPrincipal,FORMPrincipal);
end;

destructor TDAMOPrincipal.Destroy;
begin
  { TODO -oCBFF : Isso pode causar problemas se a conexão cair. Uma mensagem de
  erro pode aparecer para o usuario, mas pelo menos sempre tudo vai ser
  destruído corretamente }
  try
    Logout(FSessionConnection.ID);
  finally
    inherited;
  end;
end;

end.

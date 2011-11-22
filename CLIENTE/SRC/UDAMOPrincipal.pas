unit UDAMOPrincipal;

interface

uses
  SysUtils, Classes, PlatformDefaultStyleActnCtrls, ActnList, ActnMan, DB,
  DBClient, SOAPConn, ImgList, Controls, UTiposComuns, UKRDMSegurancaEPermissoes;

type
  TDAMOPrincipal = class(TDataModule)
    ACMAPrincipal: TActionManager;
    ACTNAlterarMinhasPreferencias: TAction;
    ACTNAjuda: TAction;
    ACTNSobre: TAction;
    ACTNSair: TAction;
    SOCNPrincipal: TSoapConnection;
    IMLIPrincipal: TImageList;
    ACTNConfiguracoes: TAction;
    ACTNSegurancaEPermissoes: TAction;
    CNBRPrincipal: TConnectionBroker;
    procedure ACTNSegurancaEPermissoesExecute(Sender: TObject);
    procedure ACTNAjudaExecute(Sender: TObject);
    procedure ACTNSobreExecute(Sender: TObject);
  private
    { Private declarations }
    FSessionConnection: TCurrentSession;
    FKRDMSegurancaEPermissoes: TKRDMSegurancaEPermissoes;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    property CurrentSession: TCurrentSession read FSessionConnection;
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
   , UFORMSplash;

var
  FORMPrincipal: TFORMPrincipal;

procedure TDAMOPrincipal.ACTNAjudaExecute(Sender: TObject);
begin
  //
end;

procedure TDAMOPrincipal.ACTNSegurancaEPermissoesExecute(Sender: TObject);
begin
  if not Assigned(FKRDMSegurancaEPermissoes) then
    TKRDMSegurancaEPermissoes.CreateMe(Self,FKRDMSegurancaEPermissoes,TKRDMSegurancaEPermissoes);
end;

procedure TDAMOPrincipal.ACTNSobreExecute(Sender: TObject);
begin
  TFORMSplash.ShowMe;
end;

constructor TDAMOPrincipal.Create(aOwner: TComponent);
begin
  inherited;
  ZeroMemory(@FSessionConnection,SizeOf(TCurrentSession));
  FKRDMSegurancaEPermissoes := nil;

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

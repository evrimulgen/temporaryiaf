unit UDAMOPrincipal;

interface

uses SysUtils, Classes, PlatformDefaultStyleActnCtrls, ActnList, ActnMan, DB
   , DBClient, SOAPConn, ImgList, Controls, UCommonTypes, UFORMPrincipal
   , UKRDMSegurancaEPermissoes, SOAPHTTPTrans;

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
    IMLIPrincipalLarge: TImageList;
    ACTNAtualizarPrivilegios: TAction;
    CLDSPermissoes: TClientDataSet;
    procedure ACTNSegurancaEPermissoesExecute(Sender: TObject);
    procedure ACTNAjudaExecute(Sender: TObject);
    procedure ACTNSobreExecute(Sender: TObject);
    procedure SOCNPrincipalBeforeConnect(Sender: TObject);
    procedure SOCNPrincipalAfterConnect(Sender: TObject);
    procedure ACTNSairExecute(Sender: TObject);
  private
    { Private declarations }
    FSessionConnection: TCurrentSession;
    FKRDMSegurancaEPermissoes: TKRDMSegurancaEPermissoes;
    FFORMPrincipal: TFORMPrincipal;
    procedure DoReceivingData(Read, Total: Integer);
    procedure DoBeforePost(const HTTPReqResp: THTTPReqResp; Data: Pointer);
    procedure DoPostingData(Sent, Total: Integer);
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

uses Forms, Windows, KRK.Lib.Rtl.Common.Classes, UConfiguracoes, UAuthenticator
   , UFORMLogin, UFORMSplash;

procedure TDAMOPrincipal.ACTNAjudaExecute(Sender: TObject);
begin
  //
end;

procedure TDAMOPrincipal.ACTNSairExecute(Sender: TObject);
begin
  FFORMPrincipal.Close;
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
var
  FORMSplash: TFORMSplash;
begin
  inherited;
  ZeroMemory(@FSessionConnection,SizeOf(TCurrentSession));
  FFORMPrincipal := nil;
  FORMSplash     := nil;

  { DataModules criados por demanda }
  FKRDMSegurancaEPermissoes := nil;

  if (TFORMLogin.ShowMe(FSessionConnection.ID) = mrOk) then
    try
      Sleep(500);
      FORMSplash := TFORMSplash.ShowMe(0);
      FORMSplash.PRBRSplash.Position := 0;
      FORMSplash.PRBRSplash.Max := 2;

      { TODO -oCBFF : Neste ponto, obtenha o restante dos dados da sessão e aplique
      as permissões. Use FORMSplash para exibir algum progresso }
      { 1. carregue CLDSPermissoes com as Permissões efetivas }
      { 2. Aplique localmente as permissões nos menus do form principal }
      Application.CreateForm(TFORMPrincipal,FFORMPrincipal);
    finally
      FORMSplash.Close;
    end;
end;

destructor TDAMOPrincipal.Destroy;
begin
  { TODO -oCBFF : Isso pode causar problemas se a conexão cair. Uma mensagem de
  erro pode aparecer para o usuario, mas pelo menos sempre tudo vai ser
  destruído corretamente }
  try
    if FSessionConnection.ID <> '' then
      Logout(FSessionConnection.ID);
  finally
    inherited;
  end;
end;

procedure TDAMOPrincipal.DoReceivingData(Read: Integer; Total: Integer);
begin
  FFORMPrincipal.PRBAAndamento.Max  := Total;
  FFORMPrincipal.PRBAAndamento.Position := Read;
end;

procedure TDAMOPrincipal.DoPostingData (Sent: Integer; Total: Integer);
begin
  FFORMPrincipal.PRBAAndamento.Max  := Total;
  FFORMPrincipal.PRBAAndamento.Position := Sent;
end;

procedure TDAMOPrincipal.DoBeforePost(const HTTPReqResp: THTTPReqResp; Data: Pointer);
begin
  FFORMPrincipal.PRBAAndamento.Position := 0;
  FFORMPrincipal.PRBAAndamento.Step := 1;
end;

procedure TDAMOPrincipal.SOCNPrincipalAfterConnect(Sender: TObject);
begin
  TSoapConnection(Sender).RIO.HTTPWebNode.OnReceivingData := DoReceivingData;
  TSoapConnection(Sender).RIO.HTTPWebNode.OnPostingData := DoPostingData;
  TSoapConnection(Sender).RIO.HTTPWebNode.OnBeforePost := DoBeforePost;
end;

procedure TDAMOPrincipal.SOCNPrincipalBeforeConnect(Sender: TObject);
begin
  TSoapConnection(Sender).URL := Configuracoes.ModuloWeb;

  if Configuracoes.EnderecoProxy <> '' then
  begin
    TSoapConnection(Sender).Proxy := Configuracoes.EnderecoProxy;
    TSoapConnection(Sender).Username := Configuracoes.UsuarioProxy;
    TSoapConnection(Sender).Password := Configuracoes.SenhaProxy;
  end;
end;

end.

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
    procedure ACTNAlterarMinhasPreferenciasExecute(Sender: TObject);
    procedure ACTNAtualizarPrivilegiosExecute(Sender: TObject);
  private
    { Private declarations }
    FCurrentSession: TCurrentSession;
    FKRDMSegurancaEPermissoes: TKRDMSegurancaEPermissoes;
    FFORMPrincipal: TFORMPrincipal;
    procedure DoReceivingData(Read, Total: Integer);
    procedure DoBeforePost(const HTTPReqResp: THTTPReqResp; Data: Pointer);
    procedure DoPostingData(Sent, Total: Integer);
    procedure ConfigureCurrentSession(aSessionID: String);
    procedure InicializarVariaveis;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    property CurrentSession: TCurrentSession read FCurrentSession;
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

procedure TDAMOPrincipal.ACTNAlterarMinhasPreferenciasExecute(Sender: TObject);
begin
  //
end;

procedure TDAMOPrincipal.ACTNAtualizarPrivilegiosExecute(Sender: TObject);
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

procedure TDAMOPrincipal.ConfigureCurrentSession(aSessionID: String);
begin
  FCurrentSession.Data.FromString(GetSessionData(aSessionID));
  FCurrentSession.ID := aSessionID;
end;

procedure TDAMOPrincipal.InicializarVariaveis;
begin
  FFORMPrincipal := nil;

  FKRDMSegurancaEPermissoes := nil;
end;

constructor TDAMOPrincipal.Create(aOwner: TComponent);
var
  FORMSplash: TFORMSplash;
  SessionID: String;
begin
  inherited;
  FCurrentSession := TCurrentSession.Create;

  InicializarVariaveis;

  if (TFORMLogin.ShowMe(SessionID) = mrOk) then
    try
      FORMSplash := TFORMSplash.ShowMe(0);
      FORMSplash.PRBRSplash.Position := 0;
      FORMSplash.PRBRSplash.Max := 2;

      ConfigureCurrentSession(SessionID);
      FORMSplash.PRBRSplash.StepIt;

//      obter a lista de permissoes
//      carregar clds
//      aplicar a partir do clds


      { TODO -oCBFF : Neste ponto, aplique as permissões. Use FORMSplash para
      exibir algum progresso }
      { 1. carregue CLDSPermissoes com as Permissões efetivas }
      { 2. Aplique localmente as permissões nos menus do form principal }
      Application.CreateForm(TFORMPrincipal,FFORMPrincipal);

      FFORMPrincipal.STTBPrincipal.Panels[1].Text := FCurrentSession.Data.va_login + ' (' + FCurrentSession.Data.va_nome + ')';
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
    if FCurrentSession.ID <> '' then
      Logout(FCurrentSession.ID);
  finally
    FCurrentSession.Free;
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

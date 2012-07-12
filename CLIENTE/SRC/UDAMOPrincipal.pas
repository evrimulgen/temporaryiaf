  unit UDAMOPrincipal;

interface

uses SysUtils, Classes, PlatformDefaultStyleActnCtrls, ActnList, ActnMan, DB
   , DBClient, SOAPConn, ImgList, Controls, UCommonTypes, UFORMPrincipal
   , UKRDMSegurancaEPermissoes, SOAPHTTPTrans, UFORMSplash, UKRDMConfiguracoes
   , UKRDMRelatorio, UKRDMGerenciarPacientes;

type
  TDAMOPrincipal = class(TDataModule)
    ACMAPrincipal: TActionManager;
    ACTNAlterarMinhasPreferencias: TAction;
    ACTNAjuda: TAction;
    ACTNSobre: TAction;
    ACTNSair: TAction;
    SOCNPrincipal: TSoapConnection;
    IMLIPrincipal: TImageList;
    ACTNConfiguracoesGlobais: TAction;
    ACTNSegurancaEPermissoes: TAction;
    CNBRPrincipal: TConnectionBroker;
    IMLIPrincipalLarge: TImageList;
    ACTNAtualizarPrivilegios: TAction;
    CLDSPermissoes: TClientDataSet;
    ACTNRelatorio1: TAction;
    ACTNRelatorio2: TAction;
    ACTNRelatorio3: TAction;
    ACTNRelatorio4: TAction;
    ACTNIniciarAtendimentoPaciente: TAction;
    ACTNFinalizarAtendimentoPaciente: TAction;
    ACTNGerenciarPacientes: TAction;
    procedure ACTNSegurancaEPermissoesExecute(Sender: TObject);
    procedure ACTNAjudaExecute(Sender: TObject);
    procedure ACTNSobreExecute(Sender: TObject);
    procedure SOCNPrincipalBeforeConnect(Sender: TObject);
    procedure SOCNPrincipalAfterConnect(Sender: TObject);
    procedure ACTNSairExecute(Sender: TObject);
    procedure ACTNAlterarMinhasPreferenciasExecute(Sender: TObject);
    procedure ACTNAtualizarPrivilegiosExecute(Sender: TObject);
    procedure ACTNConfiguracoesGlobaisExecute(Sender: TObject);
    procedure ACTNRelatorio4Execute(Sender: TObject);
    procedure ACTNGerenciarPacientesExecute(Sender: TObject);
  private
    { Private declarations }
    FFORMPrincipal: TFORMPrincipal;
    FCurrentSession: TCurrentSession;
    FKRDMSegurancaEPermissoes: TKRDMSegurancaEPermissoes;
    FKRDMConfiguracoes: TKRDMConfiguracoes;
    FKRDMRelatorio: TKRDMRelatorio;
    FKRDMGerenciarPacientes: TKRDMGerenciarPacientes;
    procedure DoReceivingData(Read, Total: Integer);
    procedure DoBeforePost(const HTTPReqResp: THTTPReqResp; Data: Pointer);
    procedure DoPostingData(Sent, Total: Integer);
    procedure ConfigureCurrentSession(aSessionID: String);
    procedure InicializarVariaveis;
    procedure CarregarConfiguracoesDinamicas;
    procedure ApplyPermissions(aFORMSplash: TFormSplash);
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    property CurrentSession: TCurrentSession read FCurrentSession;
    property FORMPrincipal: TFORMPrincipal read FFORMPrincipal;
  end;

var
  DAMOPrincipal: TDAMOPrincipal;

implementation

{$R *.dfm}

uses Forms, Windows, KRK.Lib.Rtl.Common.Classes, UConfiguracoes, UAuthenticator
   , UServerManager, UFORMLogin, UExtraMethods, ActnMenus;

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

procedure TDAMOPrincipal.ACTNConfiguracoesGlobaisExecute(Sender: TObject);
begin
  if not Assigned(FKRDMConfiguracoes) then
  begin
    TKRDMConfiguracoes.CreateMe(Self,FKRDMConfiguracoes,TKRDMConfiguracoes);
    FKRDMConfiguracoes.MyForm.ShowModal;
  end;
end;

procedure TDAMOPrincipal.ACTNGerenciarPacientesExecute(Sender: TObject);
begin
  if not Assigned(FKRDMGerenciarPacientes) then
    TKRDMGerenciarPacientes.CreateMe(Self,FKRDMGerenciarPacientes,TKRDMGerenciarPacientes)
  else
    FKRDMGerenciarPacientes.MyForm.BringToFront;
end;

procedure TDAMOPrincipal.ACTNRelatorio4Execute(Sender: TObject);
begin
  if not Assigned(FKRDMRelatorio) then
    TKRDMRelatorio.CreateMe(Self,FKRDMRelatorio,TKRDMRelatorio)
  else
    FKRDMRelatorio.MyForm.BringToFront;
end;

procedure TDAMOPrincipal.ACTNSairExecute(Sender: TObject);
begin
  FFORMPrincipal.Close;
end;

procedure TDAMOPrincipal.ACTNSegurancaEPermissoesExecute(Sender: TObject);
begin
  if not Assigned(FKRDMSegurancaEPermissoes) then
    TKRDMSegurancaEPermissoes.CreateMe(Self,FKRDMSegurancaEPermissoes,TKRDMSegurancaEPermissoes)
  else
    FKRDMSegurancaEPermissoes.MyForm.BringToFront;
end;

procedure TDAMOPrincipal.ACTNSobreExecute(Sender: TObject);
begin
  TFORMSplash.ShowMe;
end;

procedure TDAMOPrincipal.ApplyPermissions(aFORMSplash: TFormSplash);
var
  i: Word;
begin
  { Oculta todas as ações disponíveis. Isso não oculta as categorias de ações,
  apenas as ações propriamente ditas }
  for i := 0 to Pred(ACMAPrincipal.ActionCount) do
    TAction(ACMAPrincipal.Actions[i]).Visible := False;

  { Torna visíveis apenas as ações que forem permitidas }
  CLDSPermissoes.First;
  while not CLDSPermissoes.Eof do
  begin
    if (CLDSPermissoes.Fields[1].AsInteger = 1) and (Pos(Self.Name + '.',CLDSPermissoes.Fields[0].AsString) = 1) then
      for i := 0 to Pred(ACMAPrincipal.ActionCount) do
        if Copy(CLDSPermissoes.Fields[0].AsString,Succ(Pos('.',CLDSPermissoes.Fields[0].AsString)),Length(CLDSPermissoes.Fields[0].AsString)) = ACMAPrincipal.Actions[i].Name then
        begin
          TAction(ACMAPrincipal.Actions[i]).Visible := CLDSPermissoes.Fields[2].AsBoolean;
          Break;
        end;

    CLDSPermissoes.Next;
    aFORMSplash.GAGESplash.AddProgress(1);
    aFORMSplash.Update;
  end;

  { Oculta as ações exclusivas de super usuários }
  ACTNConfiguracoesGlobais.Visible := False;
end;

procedure TDAMOPrincipal.ConfigureCurrentSession(aSessionID: String);
begin
  FCurrentSession.Data.FromString(GetSessionData(aSessionID));
  FCurrentSession.ID := aSessionID;
end;

procedure TDAMOPrincipal.InicializarVariaveis;
begin
  FCurrentSession := TCurrentSession.Create;

  FFORMPrincipal := nil;
  FKRDMRelatorio := nil;
  FKRDMSegurancaEPermissoes := nil;
  FKRDMConfiguracoes := nil;
end;

{ O método abaixo carrega nas configurações locais algumas configurações que
precisam estar de acordo com configurações do servidor }
procedure TDAMOPrincipal.CarregarConfiguracoesDinamicas;
begin
  Configuracoes.UsarCompressao := GetUseCompression;
end;

constructor TDAMOPrincipal.Create(aOwner: TComponent);
var
  FORMSplash: TFORMSplash;
  SessionID: String;
begin
  inherited;
  FORMSplash := nil;

  InicializarVariaveis;
  CarregarConfiguracoesDinamicas;

  if (TFORMLogin.ShowMe(SessionID) = mrOk) then
    try
      FORMSplash := TFORMSplash.ShowMe(0);
      FORMSplash.GAGESplash.Progress := 0;
      FORMSplash.GAGESplash.MinValue := 0;
      FORMSplash.GAGESplash.MaxValue := 2;
      FORMSplash.Update;

      { 1 }
      FORMSplash.PANLProgresso.Caption := 'Obtendo dados da sessão...';
      ConfigureCurrentSession(SessionID);
      FORMSplash.GAGESplash.AddProgress(1);
      FORMSplash.Update;

      { 2 }
      { Apenas se não for um superusuário é que precisamos aplicar permissões.
      Caso seja um superusuário, mantém todas as ações deste DM como elas
      estiverem, isto é, visíveis }
      if not FCurrentSession.Data.bo_superusuario then
      begin
        FORMSplash.PANLProgresso.Caption := 'Obtendo lista de permissões...';
        FORMSplash.Update;
        CLDSPermissoes.Data := GetPermissions(SessionID);
        { Os campos de CLDSPermissoes são os de baixo }
        // ENTIDADE, ftString  , 128
        // TIPO    , ftSmallint
        // LER     , ftBoolean
        // INSERIR , ftBoolean
        // ALTERAR , ftBoolean
        // EXCLUIR , ftBoolean

        { 3 }
        FORMSplash.GAGESplash.Progress := 0;
        FORMSplash.GAGESplash.MaxValue := CLDSPermissoes.RecordCount;
        FORMSplash.PANLProgresso.Caption := 'Aplicando permissões principais...';
        FORMSplash.Update;

        ApplyPermissions(FORMSplash);
      end
      else
        FORMSplash.GAGESplash.AddProgress(1);

      FORMSplash.PANLProgresso.Caption := 'Inicializando...';
      FORMSplash.Update;

      Application.CreateForm(TFORMPrincipal,FFORMPrincipal);

      FFORMPrincipal.STTBPrincipal.Panels[1].Text := FCurrentSession.Data.va_login + ' (' + FCurrentSession.Data.va_nome + ')';
    finally
      FORMSplash.DelayedClose(2);
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

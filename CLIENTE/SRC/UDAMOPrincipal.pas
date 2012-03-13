unit UDAMOPrincipal;

interface

uses SysUtils, Classes, PlatformDefaultStyleActnCtrls, ActnList, ActnMan, DB
   , DBClient, SOAPConn, ImgList, Controls, UCommonTypes, UFORMPrincipal
   , UKRDMSegurancaEPermissoes, SOAPHTTPTrans, UFORMSplash;

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
    ACTNRelatorio1: TAction;
    ACTNRelatorio2: TAction;
    ACTNRelatorio3: TAction;
    ACTNRelatorio4: TAction;
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
    procedure ApplyPermissions(aFORMSplash: TFormSplash);
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
   , UFORMLogin, UExtraMethods;

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

procedure TDAMOPrincipal.ApplyPermissions(aFORMSplash: TFormSplash);
{ ---------------------------------------------------------------------------- }
procedure CascadeCleaning(aFrom: TActionClientItem);
var
  CI: TCollectionItem;
begin
  if TActionClientItem(aFrom).HasItems and (TActionClientItem(aFrom).Items.VisibleCount > 0) then
    for CI in aFrom.Items do
      if TActionClientItem(CI).HasItems then
        CascadeCleaning(TActionClientItem(CI));

    TActionClientItem(aFrom).Visible := TActionClientItem(aFrom).HasItems and (TActionClientItem(aFrom).Items.VisibleCount > 0);
end;
{ ---------------------------------------------------------------------------- }
var
  i: Word;
begin
  { Oculta todas as ações disponíveis }
  for i := 0 to Pred(ACMAPrincipal.ActionCount) do
    TAction(ACMAPrincipal.Actions[i]).Visible := False;

  { Exibe apenas as que forem permitidas }
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

  { Remove categorias que não tem ações visíveis }
  for i := 0 to Pred(ACMAPrincipal.ActionBars[0].Items.Count) do
      CascadeCleaning(ACMAPrincipal.ActionBars[0].Items[i]);
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
  FORMSplash := nil;

  InicializarVariaveis;

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
      FORMSplash.PANLProgresso.Caption := 'Obtendo lista de permissões...';
      CLDSPermissoes.Data := GetPermissions(SessionID);
{ Os campos de CLDSPermissoes são os de baixo }
// CLDSPermissoes.FieldDefs.Add('ENTIDADE', ftString,128,True);
// CLDSPermissoes.FieldDefs.Add('TIPO', ftSmallint);
// CLDSPermissoes.FieldDefs.Add('LER', ftBoolean);
// CLDSPermissoes.FieldDefs.Add('INSERIR', ftBoolean);
// CLDSPermissoes.FieldDefs.Add('ALTERAR', ftBoolean);
// CLDSPermissoes.FieldDefs.Add('EXCLUIR', ftBoolean);


      FORMSplash.GAGESplash.AddProgress(1);
      FORMSplash.Update;

      { 3 }
      FORMSplash.GAGESplash.Progress := 0;
      FORMSplash.GAGESplash.MaxValue := CLDSPermissoes.RecordCount;
      FORMSplash.PANLProgresso.Caption := 'Aplicando permissões principais...';
      FORMSplash.Update;

      ApplyPermissions(FORMSplash);

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

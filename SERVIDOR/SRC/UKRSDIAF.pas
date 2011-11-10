Unit UKRSDIAF;

interface

uses SysUtils
   , Classes
   , InvokeRegistry
   , Midas
   , SOAPMidas
   , KRK.Wizards.SoapDataModule
   , Types
   , DB
   , Provider
   , ZAbstractConnection
   , ZConnection
   , ZAbstractRODataset
   , ZDataset
   , ZAbstractDataset
   , URNUsuarios
   , ZSqlUpdate
   , USessionsManager;

type
  IKRSDIAF = interface(IAppServerSOAP)
    ['{E3E8C375-D907-469E-B419-BC7AB6EB7F18}']
    function Login(const aUser, aPassword: String; out aSessionID: String): Boolean; stdcall;
    function SetSessionData(const aSessionID: String; const aData: String): Boolean; stdcall;
    function GetSessionData(const aSessionID: String): String; stdcall;
    function SessionExists(const aSessionID: String): Boolean; stdcall;
    function Logout(const aSessionID: String): Boolean; stdcall;
  end;

  TKRSDIAF = class(TKRKSoapDataModule, IKRSDIAF, IAppServerSOAP, IAppServer)
    ZCONIAF: TZConnection;
    ZQRYUsuarios: TZQuery;
    DSPRUsuarios: TDataSetProvider;
    ZUSQUsuarios: TZUpdateSQL;
    ZQRYUsuariossm_usuarios_id: TSmallintField;
    ZQRYUsuariosva_nome: TWideStringField;
    ZQRYUsuariosva_login: TWideStringField;
    ZQRYUsuariosch_senha: TWideStringField;
    ZQRYUsuariosva_email: TWideStringField;
    procedure KRKSoapDataModuleCreate(Sender: TObject);
    procedure KRKSoapDataModuleDestroy(Sender: TObject);
  private
    FUsuarios: TRNUsuarios;
    function CreateSessionID: String;
    function GetSessionByID(const aSessionID: String; out aSession: TSessionItem): Boolean;
  public
    function SAS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; override; stdcall;
    procedure SAS_Execute(const ProviderName: WideString; const CommandText: WideString; var Params: OleVariant; var OwnerData: OleVariant); override; stdcall;
    function SAS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; override; stdcall;
    function SAS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; var Params: OleVariant; var OwnerData: OleVariant): OleVariant; override; stdcall;
    function SAS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant; override; stdcall;

    function SetSessionData(const aSessionID: String; const aData: String): Boolean; stdcall;
    function GetSessionData(const aSessionID: String): String; stdcall;
    function SessionExists(const aSessionID: String): Boolean; stdcall;
    function Login(const aUser: string; const aPassword: string; out aSessionID: string): Boolean; stdcall;
    function Logout(const aSessionID: string): Boolean; stdcall;
  end;

implementation

{$R *.DFM}

uses SyncObjs
   , KRK.Win32.Rtl.Common.StringUtils;

var
  CS: TCriticalSection;

procedure TKRSDIAFCreateInstance(out obj: TObject);
begin
 obj := TKRSDIAF.Create(nil);
end;

{ TSSDMIAF }

function TKRSDIAF.CreateSessionID: String;
begin
  Result := GetStringGUID;
end;

function TKRSDIAF.GetSessionByID(const aSessionID: String; out aSession: TSessionItem): Boolean;
begin
  CS.Enter;
  try
    aSession := SessionsFile.Sessions[aSessionID];
    Result := Assigned(aSession);
  finally
    CS.Leave;
  end;
end;

function TKRSDIAF.GetSessionData(const aSessionID: String): String;
var
  SessionItem: TSessionItem;
begin
  CS.Enter;
  try
    Result := '';

    { Obt�m uma sess�o a partir de seu ID e se esta sess�o existir, retorna seus
    dados }
    if GetSessionByID(aSessionID,SessionItem) then
      Result := SessionItem.SessionData;
  finally
    CS.Leave;
  end;
end;

procedure TKRSDIAF.KRKSoapDataModuleCreate(Sender: TObject);
begin
  FUsuarios := TRNUsuarios.Create(Self);
end;

procedure TKRSDIAF.KRKSoapDataModuleDestroy(Sender: TObject);
begin
  FUsuarios.Free;
end;

function TKRSDIAF.Login(const aUser, aPassword: string; out aSessionID: string): Boolean;
begin
  CS.Enter;
  try
    { Here you would check for the validity of the User/Password pair
    The implementation below is just a simple substitute of a better
    mechanism }
    Result := (CompareText(aUser,'sarcopenia') = 0) and (aPassword = '123');

    if Result then
    begin
//      if Assigned(SessionsFile.Sessions.ItemByUser[aUser]) then
//        raise Exception.Create('O usu�rio "' + aUser + '" j� est� logado no sistema. Logins m�ltiplos para o mesmo usu�rio n�o s�o permitidos');

      { Caso cheque neste ponto o login � permitido e j� foi realizado. Devemos
      criar a sess�o }
      aSessionID := CreateSessionID;
      with SessionsFile.Sessions.Add do
      begin
        SessionID   := aSessionID;
        SessionData := '{"User":"' + aUser + '","Password":"' + aPassword + '"}';
        SessionLastModified := Now;
      end;
      SessionsFile.Save;
    end;
  finally
    CS.Leave;
  end;
end;

function TKRSDIAF.Logout(const aSessionID: string): Boolean;
var
  SessionItem: TSessionItem;
begin
  CS.Enter;
  try
    { Localizando a sess�o pelo seu ID }
    Result := GetSessionByID(aSessionID,SessionItem);

    { Se encontrou, ent�o remove }
    if Result then
    begin
      SessionsFile.Sessions.Delete(SessionItem.Index);
      SessionsFile.Save;
    end;
  finally
    CS.Leave;
  end;
end;

function TKRSDIAF.SAS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
end;

procedure TKRSDIAF.SAS_Execute(const ProviderName, CommandText: WideString; var Params, OwnerData: OleVariant);
begin
  if SessionExists(OwnerData) then
    inherited
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
end;

function TKRSDIAF.SAS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
end;

function TKRSDIAF.SAS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; var Params, OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
end;

function TKRSDIAF.SAS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
end;

function TKRSDIAF.SessionExists(const aSessionID: String): Boolean;
begin
  CS.Enter;
  try
    Result := Assigned(SessionsFile.Sessions[aSessionID]);
  finally
    CS.Leave;
  end;
end;

function TKRSDIAF.SetSessionData(const aSessionID, aData: String): Boolean;
var
  SessionItem: TSessionItem;
begin
  CS.Enter;
  try
    { Obt�m uma sess�o a partir de seu ID }
    Result := GetSessionByID(aSessionID,SessionItem);

    { Se a sess�o existir, altera seus dados e salva os arquivos }
    if Result then
    begin
      SessionItem.SessionData := aData;
      SessionItem.SessionLastModified := Now;
      SessionsFile.Save;
    end;
  finally
    CS.Leave;
  end;
end;

initialization
  CS := TCriticalSection.Create;
  InvRegistry.RegisterInvokableClass(TKRSDIAF, TKRSDIAFCreateInstance);
  InvRegistry.RegisterInterface(TypeInfo(IKRSDIAF));

finalization
  CS.Free;

end.

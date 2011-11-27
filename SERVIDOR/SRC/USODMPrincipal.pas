Unit USODMPrincipal;

interface

uses SysUtils
   , Classes
   , InvokeRegistry
   , Midas
   , SOAPMidas
   , SOAPDm
   , Types
   , DB
   , Provider
   , ZAbstractConnection
   , ZConnection
   , ZAbstractRODataset
   , ZDataset
   , ZAbstractDataset
   , ZSqlUpdate
   , UKRDMBasico;

type
  ISODMPrincipal = interface(IAppServerSOAP)
  ['{E3E8C375-D907-469E-B419-BC7AB6EB7F18}']
  end;

  TSODMPrincipal = class(TSoapDataModule, ISODMPrincipal, IAppServerSOAP, IAppServer)
    ZCONIAF: TZConnection;
    DSPRUsuarios: TDataSetProvider;
    DSPREntidadesDoSistema: TDataSetProvider;
    procedure ZCONIAFBeforeConnect(Sender: TObject);
  private
    function SessionExists(const aSessionID: String): Boolean;
    function CheckSessions: Boolean;
    procedure CreateDataModules(const aProviderName: WideString);
  public
    function SAS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; override; stdcall;
    procedure SAS_Execute(const ProviderName: WideString; const CommandText: WideString; var Params: OleVariant; var OwnerData: OleVariant); override; stdcall;
    function SAS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; override; stdcall;
    function SAS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; var Params: OleVariant; var OwnerData: OleVariant): OleVariant; override; stdcall;
    function SAS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant; override; stdcall;
    function SAS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; override; stdcall;
  end;

implementation

{$R *.DFM}

uses SyncObjs
   , UServerConfiguration
   , USessionsManager
   , UKRDMUsuarios
   , UKRDMEntidadesDoSistema;

procedure TSODMPrincipalCreateInstance(out obj: TObject);
begin
  obj := TSODMPrincipal.Create(nil);
end;

{ TSSDMIAF }

function TSODMPrincipal.CheckSessions: Boolean;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.CheckSessions;
  finally
    CS.Leave;
  end;
end;

procedure TSODMPrincipal.CreateDataModules(const aProviderName: WideString);
begin
  { Não é necessário usar free para destruir, visto que usamos este datamodule
  como dono dos datamodules criados }
  if aProviderName = 'DSPRUsuarios' then
    TKRDMUsuarios.Create(Self)
  else if aProviderName = 'DSPREntidadesDoSistema' then
    TKRDMEntidadesDoSistema.Create(Self)
end;

function TSODMPrincipal.SAS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant;
begin
  if (not CheckSessions) or SessionExists(OwnerData) then
  begin
    CreateDataModules(ProviderName);
    Result := inherited;
  end
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TSODMPrincipal.SAS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant;
begin
  CreateDataModules(ProviderName);
  Result := inherited;
end;

procedure TSODMPrincipal.SAS_Execute(const ProviderName, CommandText: WideString; var Params, OwnerData: OleVariant);
begin
  if (not CheckSessions) or SessionExists(OwnerData) then
  begin
    CreateDataModules(ProviderName);
    inherited;
  end
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TSODMPrincipal.SAS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant;
begin
  if (not CheckSessions) or SessionExists(OwnerData) then
  begin
    CreateDataModules(ProviderName);
    Result := inherited;
  end
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TSODMPrincipal.SAS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; var Params, OwnerData: OleVariant): OleVariant;
begin
  if (not CheckSessions) or SessionExists(OwnerData) then
  begin
    CreateDataModules(ProviderName);
    Result := inherited;
  end
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TSODMPrincipal.SAS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant;
begin
  if (not CheckSessions) or SessionExists(OwnerData) then
  begin
    CreateDataModules(ProviderName);
    Result := inherited;
  end
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TSODMPrincipal.SessionExists(const aSessionID: String): Boolean;
begin
  CS.Enter;
  try
    Result := Assigned(SessionsFile.Sessions[aSessionID]);
  finally
    CS.Leave;
  end;
end;

procedure TSODMPrincipal.ZCONIAFBeforeConnect(Sender: TObject);
begin
  with TZConnection(Sender) do
  begin
    HostName := ServerConfiguration.DBHostName;
    Port     := ServerConfiguration.DBPortNumb;
    Database := ServerConfiguration.DBDatabase;
    User     := ServerConfiguration.DBUserName;
    Password := ServerConfiguration.DBPassword;
    Protocol := ServerConfiguration.DBProtocol;

  end;
end;

initialization
  InvRegistry.RegisterInvokableClass(TSODMPrincipal, TSODMPrincipalCreateInstance);
  InvRegistry.RegisterInterface(TypeInfo(ISODMPrincipal));

end.

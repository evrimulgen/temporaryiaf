Unit UKRSDPrincipal;

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
   , UKRDAUsuarios
   , ZSqlUpdate;

type
  IKRSDPrincipal = interface(IAppServerSOAP)
  ['{E3E8C375-D907-469E-B419-BC7AB6EB7F18}']
  end;

  TKRSDPrincipal = class(TKRKSoapDataModule, IKRSDPrincipal, IAppServerSOAP, IAppServer)
    ZCONIAF: TZConnection;
    procedure KRKSoapDataModuleCreate(Sender: TObject);
    procedure KRKSoapDataModuleDestroy(Sender: TObject);
  private
    FKRDAUsuarios: TKRDAUsuarios;
    function SessionExists(const aSessionID: String): Boolean; stdcall;
  public
    function SAS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; override; stdcall;
    procedure SAS_Execute(const ProviderName: WideString; const CommandText: WideString; var Params: OleVariant; var OwnerData: OleVariant); override; stdcall;
    function SAS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; override; stdcall;
    function SAS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; var Params: OleVariant; var OwnerData: OleVariant): OleVariant; override; stdcall;
    function SAS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant; override; stdcall;
  end;

implementation

{$R *.DFM}

uses SyncObjs
   , USessionsManager;

procedure TKRSDPrincipalCreateInstance(out obj: TObject);
begin
 obj := TKRSDPrincipal.Create(nil);
end;

{ TSSDMIAF }

procedure TKRSDPrincipal.KRKSoapDataModuleCreate(Sender: TObject);
begin
  FKRDAUsuarios := TKRDAUsuarios.Create(Self);
end;

procedure TKRSDPrincipal.KRKSoapDataModuleDestroy(Sender: TObject);
begin
  FKRDAUsuarios.Free;
end;

function TKRSDPrincipal.SAS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

procedure TKRSDPrincipal.SAS_Execute(const ProviderName, CommandText: WideString; var Params, OwnerData: OleVariant);
begin
  if SessionExists(OwnerData) then
    inherited
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TKRSDPrincipal.SAS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TKRSDPrincipal.SAS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; var Params, OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TKRSDPrincipal.SAS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TKRSDPrincipal.SessionExists(const aSessionID: String): Boolean;
begin
  CS.Enter;
  try
    Result := Assigned(SessionsFile.Sessions[aSessionID]);
  finally
    CS.Leave;
  end;
end;

initialization
  InvRegistry.RegisterInvokableClass(TKRSDPrincipal, TKRSDPrincipalCreateInstance);
  InvRegistry.RegisterInterface(TypeInfo(IKRSDPrincipal));

end.

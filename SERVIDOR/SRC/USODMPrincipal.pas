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

uses UExtraUtilities;

procedure TSODMPrincipalCreateInstance(out obj: TObject);
begin
  obj := TSODMPrincipal.Create(nil);
end;

{ TSSDMIAF }

function TSODMPrincipal.SAS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant;
begin
  if (not CheckSessions) or SessionExists(OwnerData) then
  begin
    CreateDataModule(ProviderName,Self);
    Result := inherited;
  end
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TSODMPrincipal.SAS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant;
begin
  CreateDataModule(ProviderName,Self);
  Result := inherited;
end;

procedure TSODMPrincipal.SAS_Execute(const ProviderName, CommandText: WideString; var Params, OwnerData: OleVariant);
begin
  if (not CheckSessions) or SessionExists(OwnerData) then
  begin
    CreateDataModule(ProviderName,Self);
    inherited;
  end
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TSODMPrincipal.SAS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant;
begin
  if (not CheckSessions) or SessionExists(OwnerData) then
  begin
    CreateDataModule(ProviderName,Self);
    Result := inherited;
  end
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TSODMPrincipal.SAS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; var Params, OwnerData: OleVariant): OleVariant;
begin
  if (not CheckSessions) or SessionExists(OwnerData) then
  begin
    CreateDataModule(ProviderName,Self);
    Result := inherited;
  end
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TSODMPrincipal.SAS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant;
begin
  if (not CheckSessions) or SessionExists(OwnerData) then
  begin
    CreateDataModule(ProviderName,Self);
    Result := inherited;
  end
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

procedure TSODMPrincipal.ZCONIAFBeforeConnect(Sender: TObject);
begin
  ConfigureConnection(TZConnection(Sender));
end;

initialization
  InvRegistry.RegisterInvokableClass(TSODMPrincipal, TSODMPrincipalCreateInstance);
  InvRegistry.RegisterInterface(TypeInfo(ISODMPrincipal));

end.

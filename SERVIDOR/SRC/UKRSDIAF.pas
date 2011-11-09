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
   , URNUsuarios;

type
  IKRSDIAF = interface(IAppServerSOAP)
    ['{E3E8C375-D907-469E-B419-BC7AB6EB7F18}']
  end;

  TKRSDIAF = class(TKRKSoapDataModule, IKRSDIAF, IAppServerSOAP, IAppServer)
    ZCONIAF: TZConnection;
    ZQRYUsuarios: TZQuery;
    DSPRUsuarios: TDataSetProvider;
    procedure KRKSoapDataModuleCreate(Sender: TObject);
    procedure KRKSoapDataModuleDestroy(Sender: TObject);
  private
    FUsuarios: TRNUsuarios;
    function SessionExists(const aSessionID: String): Boolean;
  public
    function SAS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; override; stdcall;
    procedure SAS_Execute(const ProviderName: WideString; const CommandText: WideString; var Params: OleVariant; var OwnerData: OleVariant); override; stdcall;
    function SAS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; override; stdcall;
    function SAS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; var Params: OleVariant; var OwnerData: OleVariant): OleVariant; override; stdcall;
    function SAS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant; override; stdcall;
  end;

implementation

uses UAuthenticatorImpl;

{$R *.DFM}

procedure TKRSDIAFCreateInstance(out obj: TObject);
begin
 obj := TKRSDIAF.Create(nil);
end;

{ TSSDMIAF }

procedure TKRSDIAF.KRKSoapDataModuleCreate(Sender: TObject);
begin
  FUsuarios := TRNUsuarios.Create(Self);
end;

procedure TKRSDIAF.KRKSoapDataModuleDestroy(Sender: TObject);
begin
  FUsuarios.Free;
end;

function TKRSDIAF.SAS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

procedure TKRSDIAF.SAS_Execute(const ProviderName, CommandText: WideString; var Params, OwnerData: OleVariant);
begin
  if SessionExists(OwnerData) then
    inherited
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TKRSDIAF.SAS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TKRSDIAF.SAS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; var Params, OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

function TKRSDIAF.SAS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
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

initialization
  InvRegistry.RegisterInvokableClass(TKRSDIAF, TKRSDIAFCreateInstance);
  InvRegistry.RegisterInterface(TypeInfo(IKRSDIAF));

end.

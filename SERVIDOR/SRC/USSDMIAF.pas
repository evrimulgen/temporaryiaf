Unit USSDMIAF;

interface

uses SysUtils
   , Classes
   , InvokeRegistry
   , Midas
   , SOAPMidas
   , SOAPDm
   , Types, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset, ZDataset,
  ZAbstractDataset, Provider;

type
  ISSDMIAF = interface(IAppServerSOAP)
    ['{E3E8C375-D907-469E-B419-BC7AB6EB7F18}']
  end;

  TSSDMIAF = class(TSoapDataModule, ISSDMIAF, IAppServerSOAP, IAppServer)
    ZCONIAF: TZConnection;
    ZQRYUsuarios: TZQuery;
    DSPRUsuarios: TDataSetProvider;
  private
  
  public
    function SAS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; override; stdcall;
    function SAS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; override; stdcall;
    procedure SAS_Execute(const ProviderName: WideString; const CommandText: WideString; var Params: OleVariant; var OwnerData: OleVariant); override; stdcall;
    function SAS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; override; stdcall;
    function SAS_GetProviderNames: TWideStringDynArray; override; stdcall;
    function SAS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; var Params: OleVariant; var OwnerData: OleVariant): OleVariant; override; stdcall;
    function SAS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant; override; stdcall;
  end;

implementation

uses UAuthenticatorImpl;

{$R *.DFM}

procedure TSSDMIAFCreateInstance(out obj: TObject);
begin
 obj := TSSDMIAF.Create(nil);
end;

{ TSSDMIAF }

function TSSDMIAF.SAS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant;
begin
  Result := inherited;
end;

function TSSDMIAF.SAS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant;
begin
  Result := inherited;
end;

procedure TSSDMIAF.SAS_Execute(const ProviderName, CommandText: WideString; var Params, OwnerData: OleVariant);
begin
  inherited;

end;

function TSSDMIAF.SAS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant;
begin
  Result := inherited;
end;

function TSSDMIAF.SAS_GetProviderNames: TWideStringDynArray;
begin
  Result := inherited;
end;

function TSSDMIAF.SAS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; var Params, OwnerData: OleVariant): OleVariant;
begin
  Result := inherited;
end;

function TSSDMIAF.SAS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant;
begin
  Result := inherited;
end;

initialization
  InvRegistry.RegisterInvokableClass(TSSDMIAF, TSSDMIAFCreateInstance);
  InvRegistry.RegisterInterface(TypeInfo(ISSDMIAF));

end.

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
    procedure KRKSoapDataModuleCreate(Sender: TObject);
  private
    function SessionExists(const aSessionID: String): Boolean; stdcall;
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
   , USessionsManager
   , UKRDMUsuarios;

procedure TSODMPrincipalCreateInstance(out obj: TObject);
begin
 obj := TSODMPrincipal.Create(nil);
end;

{ TSSDMIAF }

procedure TSODMPrincipal.KRKSoapDataModuleCreate(Sender: TObject);
begin
  { TODO -oCBFF : Quando o servidor � criado ele instancia todos os outros
  datamodules e talvez isso seja muito dispendioso em termos de mem�ria. Caso
  isso aconte�a, considere instanciar cada datamodule espec�fico de acordo com o
  provider, nos m�todos SAS }

  { N�o � necess�rio usar free para destruir, visto que usamos este datamodule
  como dono dos datamodules criados }
  TKRDMUsuarios.Create(Self);
end;

function TSODMPrincipal.SAS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
end;

function TSODMPrincipal.SAS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant;
begin
  inherited;
end;

procedure TSODMPrincipal.SAS_Execute(const ProviderName, CommandText: WideString; var Params, OwnerData: OleVariant);
begin
  if SessionExists(OwnerData) then
    inherited
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
end;

function TSODMPrincipal.SAS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
end;

function TSODMPrincipal.SAS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; var Params, OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
end;

function TSODMPrincipal.SAS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant;
begin
  if SessionExists(OwnerData) then
    Result := inherited
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
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

initialization
  InvRegistry.RegisterInvokableClass(TSODMPrincipal, TSODMPrincipalCreateInstance);
  InvRegistry.RegisterInterface(TypeInfo(ISODMPrincipal));

end.

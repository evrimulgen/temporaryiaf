Unit USODMPrincipal;

interface

uses SysUtils, Classes, InvokeRegistry, Midas, SOAPMidas, SOAPDm, Types, DB
   , DBClient, Uni, DBAccess, UniProvider, PostgreSQLUniProvider
   , DASQLMonitor, UniSQLMonitor, Provider;

type
  ISODMPrincipal = interface(IAppServerSOAP)
  ['{E3E8C375-D907-469E-B419-BC7AB6EB7F18}']
  end;

  TDataSetProvider = class(Provider.TDataSetProvider)
  protected
    procedure DoAfterUpdateRecord(SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind); override;
    procedure DoGetTableName(DataSet: TDataSet; var TableName: WideString); override;
  public
    constructor Create(aOwner: TComponent); override;
  end;

  TSODMPrincipal = class(TSoapDataModule, ISODMPrincipal, IAppServerSOAP, IAppServer)
    DSPRUsuarios: TDataSetProvider;
    DSPREntidadesDoSistema: TDataSetProvider;
    DSPRGrupos: TDataSetProvider;
    UNCN: TUniConnection;
    UPPG: TPostgreSQLUniProvider;
    UNSM: TUniSQLMonitor;
    UNTR: TUniTransaction;
    DSPRCBO: TDataSetProvider;
    DSPRAvaliados: TDataSetProvider;
    procedure UNCNBeforeConnect(Sender: TObject);
    procedure SoapDataModuleCreate(Sender: TObject);
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

uses UExtraUtilities, KRK.Lib.Rtl.Common.FileUtils, Variants
   , KRK.Lib.DCpcrypt.Base64, KRK.Lib.Rtl.Common.VariantUtils
   , UKRDMEntidadesDoSistema, UKRDMGrupos, UKRDMUsuarios, KRK.Lib.Db.Consts
   , UKRDMCBO, UKRDMAvaliados;

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

    if UseCompression then
      OleVariantByteArrayUCLDecompress(Delta);

    Result := inherited;

    if UseCompression then
      OleVariantByteArrayUCLCompress(Result);
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

    if UseCompression then
      OleVariantByteArrayUCLCompress(Result);
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

procedure TSODMPrincipal.SoapDataModuleCreate(Sender: TObject);
begin
  if UseDBMonitor then
  begin
    ConfigureDBMonitor(UNSM);
    UNSM.Active := True;
  end;

  { Sempre que este DataModule for criado, a conexão com o banco tem de ser feita }
  UNCN.Connect;
end;

procedure TSODMPrincipal.UNCNBeforeConnect(Sender: TObject);
begin
  ConfigureConnection(UNCN,UNTR);
end;

{ TDataSetProvider }

constructor TDataSetProvider.Create(aOwner: TComponent);
begin
  inherited;
  Constraints := False;
  Options := [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges];
  UpdateMode := upWhereKeyOnly;
end;

{ TODO -oCBFF :
Problema ao inserir filhos e logo em seguida atualizar eles
Teste: insira permissoes para o usuario, confirme. Tudo vai ser OK. Agora altera
o registro inserido e confirma. Dá pau porque provavelemente os IDS estão com
numeros negativos. não foram atualizados porque não tem datasetproviders. sera
que a tecnica do negativo serve para os filhos ou é dispensavel? ou é de outra
forma? para debugar inclua um salvamento de texto no codigo abaix e faça o teste.
se o texto for criado então o datasetprovider do pai é executado para os seus
filhos tambem. coloque isso antes da checagem do tipo de atualização updatekind}
procedure TDataSetProvider.DoAfterUpdateRecord(SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
var
  CampoChave, ValorPadrao: String;
  i: Integer;
  UNQY: TUniQuery;
begin
  if UpdateKind = ukInsert then
  begin
    for i := 0 to Pred(SourceDS.Fields.Count) do
      if pfInKey in SourceDS.Fields[i].ProviderFlags then
      begin
        CampoChave := SourceDS.Fields[i].FieldName;
        Break;
      end;

    if CampoChave <> '' then
    begin
      UNQY := TUniQuery.Create(Self);
      try
        UNQY.Connection := TSODMPrincipal(Owner).UNCN;

        UNQY.ReadOnly := True;
        UNQY.UniDirectional := True;
        UNQY.SpecificOptions.Clear;
        UNQY.SpecificOptions.Add('PostgreSQL.OIDAsInt=True');
        UNQY.SpecificOptions.Add('PostgreSQL.UseParamTypes=True');
        UNQY.SpecificOptions.Add('PostgreSQL.FetchAll=False');

        { == Obtendo o valor do campo auto incremento ======================== }
        UNQY.SQL.Text := PostGres_DefaultColumnValues;

        with TStringList.Create do
          try
            Text := StringReplace(CampoChave,'_',#13#10,[rfReplaceAll]);
            UNQY.ParamByName('table').AsString := Strings[1];
          finally
            Free;
          end;

        UNQY.ParamByName('column').AsString := CampoChave;

        UNQY.Open;
        ValorPadrao := StringReplace(UNQY.FieldByName('defaultvalue').AsString,'NEXTVAL','CURRVAL',[rfIgnoreCase]);
        UNQY.Close;

        UNQY.ParamCheck := False;
        UNQY.SQL.Text := 'SELECT ' + ValorPadrao;

        UNQY.Open;
        i := UNQY.Fields[0].AsInteger;
        DeltaDS.FieldByName(CampoChave).NewValue := i;
        UNQY.Close;
        { ==================================================================== }

        { == Obtendo outros valores em tabelas específicas =================== }
        if LowerCase(CampoChave) = 'in_parametrosfisiologicos_id' then
        begin
          UNQY.SQL.Text := 'SELECT TS_MOMAFE FROM PARAMETROSFISIOLOGICOS WHERE IN_PARAMETROSFISIOLOGICOS_ID = ' + IntToStr(i);
          UNQY.Open;
          DeltaDS.FieldByName('TS_MOMAFE').NewValue := UNQY.Fields[0].AsDateTime;
          UNQY.Close;
        end;
        { ==================================================================== }
      finally
        UNQY.Close;
        UNQY.Free;
      end;
    end;
  end;
  { Chama o evento OnAfterUpdateRecord }
  inherited;
end;

procedure TDataSetProvider.DoGetTableName(DataSet: TDataSet; var TableName: WideString);
var
  TmpTableName: String;
begin
  inherited;
  TmpTableName := UpperCase(TUniQuery(DataSet).UpdatingTable);

  if TmpTableName <> '' then
    TableName := TmpTableName;
end;

initialization
  InvRegistry.RegisterInvokableClass(TSODMPrincipal, TSODMPrincipalCreateInstance);
  InvRegistry.RegisterInterface(TypeInfo(ISODMPrincipal),'','','Interface SOAP principal de entrada no sistema usada pelo DataSnap. Contém todos os provedores do sistema');
end.

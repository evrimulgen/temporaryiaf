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
   , DBClient;

type
  ISODMPrincipal = interface(IAppServerSOAP)
  ['{E3E8C375-D907-469E-B419-BC7AB6EB7F18}']
  end;

  TDataSetProvider = class(Provider.TDataSetProvider)
  protected
    procedure DoAfterUpdateRecord(SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind); override;
    procedure DoGetTableName(DataSet: TDataSet; var TableName: WideString); override;
  end;

  TSODMPrincipal = class(TSoapDataModule, ISODMPrincipal, IAppServerSOAP, IAppServer)
    ZCONIAF: TZConnection;
    DSPRUsuarios: TDataSetProvider;
    DSPREntidadesDoSistema: TDataSetProvider;
    DSPRGrupos: TDataSetProvider;
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

uses UExtraUtilities, KRK.Lib.Db.Consts, KRK.Lib.Rtl.Common.FileUtils, Variants
   , KRK.Lib.DCpcrypt.Base64, KRK.Lib.Rtl.Common.VariantUtils;

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

procedure TSODMPrincipal.ZCONIAFBeforeConnect(Sender: TObject);
begin
  ConfigureConnection(TZConnection(Sender));
end;

{ TDataSetProvider }

{ TODO -oCBFF :
Problema ao inserir filhos e logo em seguida atualizar eles
Teste: insira permissoes para o usuario, confirme. Tudo vai ser OK. Agora altera
o registro inserido e confirma. Dá pau porque provavelemente os IDS estão com
numeros negativos. não foram atualizados porque não tem datasetproviders. sera
que a tecnica do negativo serve para os filhos ou é dispensavel? ou é de outra
forma? para debugar inclua um salvamento de texto no codigo abaix e faça o teste.
se o texto for criado então o datasetprovider do pai é executado para os seus
filhos tambem. coloque isso antes da checagem do tipo de atualização updatekind
}

procedure TDataSetProvider.DoAfterUpdateRecord(SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
var
  CampoChave, ValorPadrao: String;
  i: Integer;
  ZROQ: TZReadOnlyQuery;
begin
  inherited;
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
      ZROQ := TZReadOnlyQuery.Create(Self);
      try
        ZROQ.Connection := TSODMPrincipal(Owner).ZCONIAF;
        ZROQ.SQL.Text := PostGres_DefaultColumnValues;

        with TStringList.Create do
          try
            Text := StringReplace(CampoChave,'_',#13#10,[rfReplaceAll]);
            ZROQ.ParamByName('table').AsString := Strings[1];
          finally
            Free;
          end;

        ZROQ.ParamByName('column').AsString := CampoChave;

        ZROQ.Open;
        ValorPadrao := StringReplace(ZROQ.FieldByName('defaultvalue').AsString,'NEXTVAL','CURRVAL',[rfIgnoreCase]);
        ZROQ.Close;

        ZROQ.ParamCheck := False;
        ZROQ.SQL.Text := 'SELECT ' + ValorPadrao;
        ZROQ.Open;
        DeltaDS.FieldByName(CampoChave).NewValue := ZROQ.Fields[0].AsInteger;
      finally
        ZROQ.Close;
        ZROQ.Free;
      end;
    end;
  end;
end;

procedure TDataSetProvider.DoGetTableName(DataSet: TDataSet; var TableName: WideString);
var
  TmpTableName: String;
begin
  inherited;

  TmpTableName := '';
  { Todos os TZQuery têm nomes padronizados na forma ZQRY???? onde as ? são o
  nome da tabela }
  TmpTableName := LowerCase(Copy(DataSet.Name,5,Length(DataSet.Name)));

  if TmpTableName <> '' then
    TableName := TmpTableName;
end;

initialization
  InvRegistry.RegisterInvokableClass(TSODMPrincipal, TSODMPrincipalCreateInstance);
  InvRegistry.RegisterInterface(TypeInfo(ISODMPrincipal),'','','Interface SOAP principal de entrada no sistema usada pelo DataSnap. Contém todos os provedores do sistema');
end.

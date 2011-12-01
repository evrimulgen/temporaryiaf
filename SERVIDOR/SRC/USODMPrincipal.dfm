object SODMPrincipal: TSODMPrincipal
  OldCreateOrder = False
  Height = 165
  Width = 321
  object ZCONIAF: TZConnection
    Properties.Strings = (
      'codepage=UTF8'
      'client_encoding=UTF8')
    TransactIsolationLevel = tiReadCommitted
    Connected = True
    BeforeConnect = ZCONIAFBeforeConnect
    Protocol = 'postgresql'
    HostName = '127.0.0.1'
    Database = 'iaf'
    User = 'postgres'
    Password = 'sarcopenia'
    Left = 24
    Top = 6
  end
  object DSPRUsuarios: TDataSetProvider
    DataSet = KRDMUsuarios.ZQRYUsuarios
    Constraints = False
    ResolveToDataSet = True
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 60
  end
  object DSPREntidadesDoSistema: TDataSetProvider
    DataSet = KRDMEntidadesDoSistema.ZQRYEntidadesDoSistema
    Constraints = False
    ResolveToDataSet = True
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 108
  end
end

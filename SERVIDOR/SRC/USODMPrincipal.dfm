object SODMPrincipal: TSODMPrincipal
  OldCreateOrder = False
  Height = 243
  Width = 321
  object ZCONIAF: TZConnection
    TransactIsolationLevel = tiReadCommitted
    Connected = True
    DesignConnection = True
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
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 60
  end
  object DSPREntidadesDoSistema: TDataSetProvider
    DataSet = KRDMEntidadesDoSistema.ZQRYEntidadesDoSistema
    Constraints = False
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 108
  end
  object DSPRGrupos: TDataSetProvider
    DataSet = KRDMGrupos.ZQRYGrupos
    Constraints = False
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 156
  end
end

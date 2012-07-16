object SODMPrincipal: TSODMPrincipal
  OldCreateOrder = False
  OnCreate = SoapDataModuleCreate
  Height = 313
  Width = 153
  object DSPRUsuarios: TDataSetProvider
    DataSet = KRDMUsuarios.UNQYUsuarios
    Constraints = False
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 60
  end
  object DSPREntidadesDoSistema: TDataSetProvider
    DataSet = KRDMEntidadesDoSistema.UNQYEntidadesDoSistema
    Constraints = False
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 108
  end
  object DSPRGrupos: TDataSetProvider
    DataSet = KRDMGrupos.UNQYGrupos
    Constraints = False
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 156
  end
  object UPPG: TPostgreSQLUniProvider
    Left = 78
    Top = 6
  end
  object UNCN: TUniConnection
    ProviderName = 'PostgreSQL'
    Database = 'iaf'
    SpecificOptions.Strings = (
      'PostgreSQL.UseUnicode=True')
    Options.KeepDesignConnected = False
    Username = 'postgres'
    Password = 'sarcopenia'
    Server = '127.0.0.1'
    Connected = True
    LoginPrompt = False
    BeforeConnect = UNCNBeforeConnect
    Left = 6
    Top = 6
  end
  object UNSM: TUniSQLMonitor
    Active = False
    Options = [moDBMonitor]
    Left = 114
    Top = 6
  end
  object UNTR: TUniTransaction
    DefaultConnection = UNCN
    Left = 42
    Top = 6
  end
  object DSPRCBO: TDataSetProvider
    DataSet = KRDMCBO.UNQYCBO
    Constraints = False
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 210
  end
  object DSPRPacientes: TDataSetProvider
    DataSet = KRDMPacientes.UNQYPacientes
    Constraints = False
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 258
  end
end

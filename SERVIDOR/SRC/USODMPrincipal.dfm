object SODMPrincipal: TSODMPrincipal
  OldCreateOrder = True
  OnCreate = SoapDataModuleCreate
  Height = 313
  Width = 153
  object DSPRUsuarios: TDataSetProvider
    DataSet = KRDMUsuarios.UNQYUsuarios
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 60
  end
  object DSPREntidadesDoSistema: TDataSetProvider
    DataSet = KRDMEntidadesDoSistema.UNQYEntidadesDoSistema
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 108
  end
  object DSPRGrupos: TDataSetProvider
    DataSet = KRDMGrupos.UNQYGrupos
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
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 210
  end
  object DSPRPacientes: TDataSetProvider
    DataSet = KRDMPacientes.UNQYPacientes
    Left = 54
    Top = 258
  end
end

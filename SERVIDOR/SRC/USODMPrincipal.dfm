object SODMPrincipal: TSODMPrincipal
  OldCreateOrder = False
  OnCreate = KRKSoapDataModuleCreate
  Height = 165
  Width = 321
  object ZCONIAF: TZConnection
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
    Left = 24
    Top = 60
  end
end

object SODMPrincipal: TSODMPrincipal
  OldCreateOrder = False
  OnCreate = KRKSoapDataModuleCreate
  OnDestroy = KRKSoapDataModuleDestroy
  SQLs = <>
  Height = 67
  Width = 79
  object ZCONIAF: TZConnection
    Connected = True
    Protocol = 'postgresql'
    HostName = '127.0.0.1'
    Database = 'iaf'
    User = 'postgres'
    Password = 'sarcopenia'
    Left = 24
    Top = 6
  end
end

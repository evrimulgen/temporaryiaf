object KRSDIAF: TKRSDIAF
  OldCreateOrder = False
  OnCreate = KRKSoapDataModuleCreate
  OnDestroy = KRKSoapDataModuleDestroy
  Height = 268
  Width = 745
  object ZCONIAF: TZConnection
    Protocol = 'postgresql'
    HostName = '127.0.0.1'
    Database = 'iaf'
    User = 'postgres'
    Password = 'sarcopenia'
    Left = 354
    Top = 6
  end
  object ZQRYUsuarios: TZQuery
    Connection = ZCONIAF
    SQL.Strings = (
      'SELECT * FROM usuarios')
    Params = <>
    Left = 24
    Top = 54
  end
  object DSPRUsuarios: TDataSetProvider
    DataSet = ZQRYUsuarios
    Left = 24
    Top = 102
  end
end

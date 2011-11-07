object SSDMIAF: TSSDMIAF
  OldCreateOrder = False
  Height = 218
  Width = 751
  object ZCONIAF: TZConnection
    Protocol = 'postgresql'
    HostName = '127.0.0.1'
    Database = 'iaf'
    User = 'postgres'
    Password = 'sarcopenia'
    Left = 360
    Top = 12
  end
  object ZQRYUsuarios: TZQuery
    Connection = ZCONIAF
    SQL.Strings = (
      'SELECT * FROM usuarios')
    Params = <>
    Left = 24
    Top = 60
  end
  object DSPRUsuarios: TDataSetProvider
    DataSet = ZQRYUsuarios
    Left = 24
    Top = 108
  end
end

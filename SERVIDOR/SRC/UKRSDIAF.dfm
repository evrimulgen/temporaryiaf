object KRSDIAF: TKRSDIAF
  OldCreateOrder = False
  OnCreate = KRKSoapDataModuleCreate
  OnDestroy = KRKSoapDataModuleDestroy
  SQLs = <>
  Height = 268
  Width = 745
  object ZCONIAF: TZConnection
    Connected = True
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
    UpdateObject = ZUSQUsuarios
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    Params = <>
    Left = 24
    Top = 54
    object ZQRYUsuariossm_usuarios_id: TSmallintField
      FieldName = 'sm_usuarios_id'
    end
    object ZQRYUsuariosva_nome: TWideStringField
      FieldName = 'va_nome'
      ReadOnly = True
      Size = 64
    end
    object ZQRYUsuariosva_login: TWideStringField
      FieldName = 'va_login'
      ReadOnly = True
      Size = 16
    end
    object ZQRYUsuariosch_senha: TWideStringField
      FieldName = 'ch_senha'
      ReadOnly = True
      Size = 128
    end
    object ZQRYUsuariosva_email: TWideStringField
      FieldName = 'va_email'
      ReadOnly = True
      Size = 64
    end
  end
  object DSPRUsuarios: TDataSetProvider
    DataSet = ZQRYUsuarios
    Left = 24
    Top = 150
  end
  object ZUSQUsuarios: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 24
    Top = 102
  end
end

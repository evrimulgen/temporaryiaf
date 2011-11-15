object KRDAUsuarios: TKRDAUsuarios
  OldCreateOrder = False
  SQLs = <>
  Height = 172
  Width = 81
  object ZQRYUsuarios: TZQuery
    Connection = KRSDPrincipal.ZCONIAF
    UpdateObject = ZUSQUsuarios
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    Params = <>
    Left = 24
    Top = 12
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
    Top = 108
  end
  object ZUSQUsuarios: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 24
    Top = 60
  end
end

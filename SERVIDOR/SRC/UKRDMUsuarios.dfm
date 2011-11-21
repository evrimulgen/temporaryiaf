inherited KRDMUsuarios: TKRDMUsuarios
  OldCreateOrder = True
  Height = 164
  Width = 131
  inherited ZROQAux: TZReadOnlyQuery
    Connection = SODMPrincipal.ZCONIAF
  end
  inherited ZSTPAux: TZStoredProc
    Connection = SODMPrincipal.ZCONIAF
  end
  object ZQRYUsuarios: TZQuery
    Connection = SODMPrincipal.ZCONIAF
    UpdateObject = ZUSQUsuarios
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    Params = <>
    Left = 24
    Top = 60
    object ZQRYUsuariossm_usuarios_id: TSmallintField
      DisplayLabel = 'ID'
      FieldName = 'sm_usuarios_id'
    end
    object ZQRYUsuariosva_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'va_nome'
      Size = 64
    end
    object ZQRYUsuariosva_login: TWideStringField
      DisplayLabel = 'Login'
      FieldName = 'va_login'
      Size = 16
    end
    object ZQRYUsuariosch_senha: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'ch_senha'
      Size = 128
    end
    object ZQRYUsuariosva_email: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'va_email'
      Size = 64
    end
  end
  object ZUSQUsuarios: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM USUARIOS'
      'WHERE'
      '  ((USUARIOS.sm_usuarios_id IS NULL AND :OLD_sm_usuarios_id IS '
      'NULL) OR (USUARIOS.sm_usuarios_id = :OLD_sm_usuarios_id))')
    InsertSQL.Strings = (
      'SELECT IDU_USUARIOS('#39'I'#39
      '                   ,NULL'
      '                   ,:VA_NOME'
      '                   ,:VA_LOGIN'
      '                   ,:CH_SENHA'
      '                   ,:VA_EMAIL)')
    ModifySQL.Strings = (
      'UPDATE USUARIOS SET'
      '  va_nome = :va_nome,'
      '  va_login = :va_login,'
      '  ch_senha = :ch_senha,'
      '  va_email = :va_email'
      'WHERE'
      '  ((USUARIOS.sm_usuarios_id IS NULL AND :OLD_sm_usuarios_id IS '
      'NULL) OR (USUARIOS.sm_usuarios_id = :OLD_sm_usuarios_id))')
    UseSequenceFieldForRefreshSQL = False
    Left = 24
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'va_nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'va_login'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ch_senha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'va_email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_sm_usuarios_id'
        ParamType = ptUnknown
      end>
  end
end

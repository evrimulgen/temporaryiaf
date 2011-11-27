inherited KRDMUsuarios: TKRDMUsuarios
  OldCreateOrder = True
  Height = 164
  Width = 239
  inherited ZROQ: TZReadOnlyQuery
    Connection = SODMPrincipal.ZCONIAF
  end
  inherited ZSTP: TZStoredProc
    Connection = SODMPrincipal.ZCONIAF
  end
  object ZQRYUsuarios: TZQuery
    Connection = SODMPrincipal.ZCONIAF
    UpdateObject = ZUSQUsuarios
    SQL.Strings = (
      'SELECT *'
      '  FROM USUARIOS'
      
        ' WHERE ((:SM_USUARIOS_ID IS NULL) OR (SM_USUARIOS_ID = :SM_USUAR' +
        'IOS_ID))'
      
        '   AND ((:VA_NOME IS NULL) OR (UPPER(VA_NOME) LIKE UPPER(:VA_NOM' +
        'E)))'
      
        '   AND ((:VA_LOGIN IS NULL) OR (UPPER(VA_LOGIN) LIKE UPPER(:VA_L' +
        'OGIN)))'
      '   AND ((:CH_SENHA IS NULL) OR (CH_SENHA = :CH_SENHA))'
      
        '   AND ((:VA_EMAIL IS NULL) OR (UPPER(VA_EMAIL) LIKE UPPER(:VA_E' +
        'MAIL)))')
    Params = <
      item
        DataType = ftSmallint
        Name = 'SM_USUARIOS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VA_NOME'
        ParamType = ptInput
        Size = 64
      end
      item
        DataType = ftString
        Name = 'VA_LOGIN'
        ParamType = ptInput
        Size = 16
      end
      item
        DataType = ftString
        Name = 'CH_SENHA'
        ParamType = ptInput
        Size = 128
      end
      item
        DataType = ftString
        Name = 'VA_EMAIL'
        ParamType = ptInput
        Size = 64
      end>
    Left = 24
    Top = 60
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'SM_USUARIOS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VA_NOME'
        ParamType = ptInput
        Size = 64
      end
      item
        DataType = ftString
        Name = 'VA_LOGIN'
        ParamType = ptInput
        Size = 16
      end
      item
        DataType = ftString
        Name = 'CH_SENHA'
        ParamType = ptInput
        Size = 128
      end
      item
        DataType = ftString
        Name = 'VA_EMAIL'
        ParamType = ptInput
        Size = 64
      end>
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
      'SELECT IDU_USUARIOS('#39'D'#39
      '                   ,:OLD_SM_USUARIOS_ID)')
    InsertSQL.Strings = (
      'SELECT IDU_USUARIOS('#39'I'#39
      '                   ,NULL'
      '                   ,:VA_NOME'
      '                   ,:VA_LOGIN'
      '                   ,:CH_SENHA'
      '                   ,:VA_EMAIL)')
    ModifySQL.Strings = (
      'SELECT IDU_USUARIOS('#39'U'#39
      '                   ,:OLD_SM_USUARIOS_ID'
      '                   ,:VA_NOME'
      '                   ,:VA_LOGIN'
      '                   ,:CH_SENHA'
      '                   ,:VA_EMAIL)')
    UseSequenceFieldForRefreshSQL = False
    Left = 24
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OLD_sm_usuarios_id'
        ParamType = ptUnknown
      end
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
      end>
  end
end

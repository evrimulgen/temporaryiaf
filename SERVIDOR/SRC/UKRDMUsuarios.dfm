inherited KRDMUsuarios: TKRDMUsuarios
  OldCreateOrder = True
  Height = 334
  Width = 393
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
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_NOME'
        ParamType = ptInput
        Size = 64
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_LOGIN'
        ParamType = ptInput
        Size = 16
        Value = Null
      end
      item
        DataType = ftString
        Name = 'CH_SENHA'
        ParamType = ptInput
        Size = 128
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_EMAIL'
        ParamType = ptInput
        Size = 64
        Value = Null
      end>
    Left = 24
    Top = 60
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'SM_USUARIOS_ID'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_NOME'
        ParamType = ptInput
        Size = 64
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_LOGIN'
        ParamType = ptInput
        Size = 16
        Value = Null
      end
      item
        DataType = ftString
        Name = 'CH_SENHA'
        ParamType = ptInput
        Size = 128
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_EMAIL'
        ParamType = ptInput
        Size = 64
        Value = Null
      end>
    object ZQRYUsuariossm_usuarios_id: TSmallintField
      DisplayLabel = 'ID'
      FieldName = 'sm_usuarios_id'
      ProviderFlags = [pfInKey]
    end
    object ZQRYUsuariosva_nome: TWideStringField
      CustomConstraint = 'va_nome <> '#39#39
      ConstraintErrorMessage = 'O campo "Nome" tem de ser preenchido'
      DisplayLabel = 'Nome'
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Size = 64
    end
    object ZQRYUsuariosva_login: TWideStringField
      CustomConstraint = 'va_login <> '#39#39
      ConstraintErrorMessage = 'O campo "Login" tem de ser preenchido'
      DisplayLabel = 'Login'
      FieldName = 'va_login'
      ProviderFlags = [pfInUpdate]
      Size = 16
    end
    object ZQRYUsuariosch_senha: TWideStringField
      CustomConstraint = 'ch_senha <> '#39#39
      ConstraintErrorMessage = 'O campo "Senha" tem de ser preenchido'
      DisplayLabel = 'Senha'
      FieldName = 'ch_senha'
      ProviderFlags = [pfInUpdate]
      Size = 128
    end
    object ZQRYUsuariosva_email: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'va_email'
      ProviderFlags = [pfInUpdate]
      Size = 64
    end
  end
  object ZUSQUsuarios: TZUpdateSQL
    DeleteSQL.Strings = (
      'SELECT IDU_USUARIOS('#39'D'#39
      '                   ,CAST(:OLD_SM_USUARIOS_ID AS SMALLINT)')
    InsertSQL.Strings = (
      'SELECT IDU_USUARIOS('#39'I'#39
      '                   ,NULL'
      '                   ,:VA_NOME'
      '                   ,:VA_LOGIN'
      '                   ,:CH_SENHA'
      '                   ,:VA_EMAIL)')
    ModifySQL.Strings = (
      'SELECT IDU_USUARIOS('#39'U'#39
      '                   ,CAST(:OLD_SM_USUARIOS_ID AS SMALLINT)'
      '                   ,:VA_NOME'
      '                   ,:VA_LOGIN'
      '                   ,:CH_SENHA'
      '                   ,:VA_EMAIL)')
    UseSequenceFieldForRefreshSQL = False
    Left = 24
    Top = 108
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'OLD_sm_usuarios_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'va_nome'
        ParamType = ptInput
        Size = 64
      end
      item
        DataType = ftString
        Name = 'va_login'
        ParamType = ptInput
        Size = 16
      end
      item
        DataType = ftString
        Name = 'ch_senha'
        ParamType = ptInput
        Size = 128
      end
      item
        DataType = ftString
        Name = 'va_email'
        ParamType = ptInput
        Size = 64
      end>
  end
  object ZQRYGruposDosUsuarios: TZQuery
    Connection = SODMPrincipal.ZCONIAF
    SQL.Strings = (
      'SELECT GDU.*'
      '     , GRU.VA_NOME AS GRUPO'
      '  FROM GRUPOSDOSUSUARIOS GDU'
      '  JOIN GRUPOS GRU USING (SM_GRUPOS_ID)')
    Params = <>
    MasterFields = 'sm_usuarios_id'
    MasterSource = DTSRUsuarios
    LinkedFields = 'sm_usuarios_id'
    Left = 126
    Top = 60
    object ZQRYGruposDosUsuariosin_gruposdosusuarios_id: TIntegerField
      FieldName = 'in_gruposdosusuarios_id'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object ZQRYGruposDosUsuariossm_grupos_id: TSmallintField
      FieldName = 'sm_grupos_id'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object ZQRYGruposDosUsuariossm_usuarios_id: TSmallintField
      FieldName = 'sm_usuarios_id'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object ZQRYGruposDosUsuariosgrupo: TWideStringField
      FieldName = 'grupo'
      ProviderFlags = []
      ReadOnly = True
      Size = 64
    end
  end
  object DTSRUsuarios: TDataSource
    DataSet = ZQRYUsuarios
    Left = 24
    Top = 156
  end
end

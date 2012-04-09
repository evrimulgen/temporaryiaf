inherited KRDMUsuarios: TKRDMUsuarios
  OldCreateOrder = True
  Height = 206
  Width = 358
  object DTSRUsuarios: TDataSource
    DataSet = UNQYUsuarios
    Left = 24
    Top = 108
  end
  object KRVCUsuarios: TKRKValidationChecks
    DataSet = UNQYUsuarios
    TableName = 'USUARIOS'
    CheckableFields = <
      item
        FieldName = 'sm_usuarios_id'
        FieldDescription = 'ID'
      end
      item
        FieldName = 'va_nome'
        FieldDescription = 'Nome completo do usu'#225'rio'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'va_login'
        FieldDescription = 'Login de acesso do usu'#225'rio'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'ch_senha'
        FieldDescription = 'Senha de acesso do usu'#225'rio'
      end
      item
        FieldName = 'va_email'
        FieldDescription = 'E-mail do usu'#225'rio'
      end
      item
        FieldName = 'bo_superusuario'
        FieldDescription = 'Superusu'#225'rio'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end>
    Left = 24
    Top = 156
  end
  object KRVCPermissoesDosUsuarios: TKRKValidationChecks
    DataSet = UNQYPermissoesDosUsuarios
    TableName = 'PERMISSOESDOSUSUARIOS'
    CheckableFields = <
      item
        FieldName = 'entidade'
        FieldDescription = 'entidade'
      end
      item
        FieldName = 'in_permissoesdosusuarios_id'
        FieldDescription = 'ID'
      end
      item
        FieldName = 'in_entidadesdosistema_id'
        FieldDescription = 'Entidade'
        CheckBlank.Active = True
      end
      item
        FieldName = 'sm_usuarios_id'
        FieldDescription = 'Usu'#225'rio'
        CheckBlank.Active = True
      end
      item
        FieldName = 'sm_ler'
        FieldDescription = 'sm_ler'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end
      item
        FieldName = 'sm_inserir'
        FieldDescription = 'sm_inserir'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MinimumValue = -1.000000000000000000
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end
      item
        FieldName = 'sm_alterar'
        FieldDescription = 'sm_alterar'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MinimumValue = -1.000000000000000000
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end
      item
        FieldName = 'sm_excluir'
        FieldDescription = 'sm_excluir'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MinimumValue = -1.000000000000000000
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end
      item
        FieldName = 'tipo'
        FieldDescription = 'tipo'
      end>
    Left = 264
    Top = 108
  end
  object UNQYUsuarios: TUniQuery
    SQLInsert.Strings = (
      'SELECT IDU_USUARIOS('#39'I'#39
      '                   ,NULL'
      '                   ,:VA_NOME'
      '                   ,:VA_LOGIN'
      '                   ,:CH_SENHA'
      '                   ,:VA_EMAIL'
      '                   ,:BO_SUPERUSUARIO)')
    SQLDelete.Strings = (
      'SELECT IDU_USUARIOS('#39'D'#39
      '                   ,:SM_USUARIOS_ID)')
    SQLUpdate.Strings = (
      'SELECT IDU_USUARIOS('#39'U'#39
      '                   ,:SM_USUARIOS_ID'
      '                   ,:VA_NOME'
      '                   ,:VA_LOGIN'
      '                   ,:CH_SENHA'
      '                   ,:VA_EMAIL'
      '                   ,:BO_SUPERUSUARIO)')
    Connection = SODMPrincipal.UNCN
    SQL.Strings = (
      'SELECT USU.*'
      '  FROM USUARIOS USU'
      
        ' WHERE ((:SM_USUARIOS_ID IS NULL) OR (USU.SM_USUARIOS_ID = :SM_U' +
        'SUARIOS_ID))'
      
        '   AND ((:VA_NOME IS NULL) OR (UPPER(USU.VA_NOME) LIKE UPPER(:VA' +
        '_NOME)))'
      
        '   AND ((:VA_LOGIN IS NULL) OR (UPPER(USU.VA_LOGIN) LIKE UPPER(:' +
        'VA_LOGIN)))'
      '   AND ((:CH_SENHA IS NULL) OR (USU.CH_SENHA = :CH_SENHA))'
      
        '   AND ((:VA_EMAIL IS NULL) OR (UPPER(USU.VA_EMAIL) LIKE UPPER(:' +
        'VA_EMAIL)))'
      
        '   AND ((:BO_SUPERUSUARIO IS NULL) OR (USU.BO_SUPERUSUARIO = :BO' +
        '_SUPERUSUARIO))')
    UniDirectional = True
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False'
      'PostgreSQL.UseParamTypes=True')
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
      end
      item
        DataType = ftBoolean
        Name = 'BO_SUPERUSUARIO'
        ParamType = ptInput
      end>
    object UNQYUsuariossm_usuarios_id: TSmallintField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'sm_usuarios_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYUsuariosva_nome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 64
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 64
    end
    object UNQYUsuariosva_login: TWideStringField
      DisplayLabel = 'Login'
      DisplayWidth = 16
      FieldName = 'va_login'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 16
    end
    object UNQYUsuariosch_senha: TWideStringField
      DisplayLabel = 'Senha'
      DisplayWidth = 128
      FieldName = 'ch_senha'
      ProviderFlags = [pfInUpdate]
      Size = 128
    end
    object UNQYUsuariosva_email: TWideStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 64
      FieldName = 'va_email'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 64
    end
    object UNQYUsuariosbo_superusuario: TBooleanField
      DisplayWidth = 5
      FieldName = 'bo_superusuario'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object UNQYGruposDosUsuarios: TUniQuery
    Connection = SODMPrincipal.UNCN
    SQL.Strings = (
      'SELECT GDU.*'
      '     , GRU.VA_NOME AS GRUPO'
      '  FROM GRUPOSDOSUSUARIOS GDU'
      '  JOIN GRUPOS GRU USING (SM_GRUPOS_ID)')
    MasterSource = DTSRUsuarios
    MasterFields = 'SM_USUARIOS_ID'
    DetailFields = 'SM_USUARIOS_ID'
    UniDirectional = True
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False'
      'PostgreSQL.UseParamTypes=True')
    Left = 126
    Top = 60
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'sm_usuarios_id'
        ParamType = ptInput
      end>
    object UNQYGruposDosUsuariosin_gruposdosusuarios_id: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 10
      FieldName = 'in_gruposdosusuarios_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYGruposDosUsuariossm_grupos_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'sm_grupos_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYGruposDosUsuariossm_usuarios_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'sm_usuarios_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYGruposDosUsuariosgrupo: TWideStringField
      DisplayWidth = 64
      FieldName = 'grupo'
      ProviderFlags = []
      ReadOnly = True
      Size = 64
    end
  end
  object UNQYPermissoesDosUsuarios: TUniQuery
    SQLInsert.Strings = (
      'SELECT IDU_PERMISSOESDOSUSUARIOS('#39'I'#39
      '                                ,NULL'
      '                                ,:IN_ENTIDADESDOSISTEMA_ID'
      '                                ,:SM_USUARIOS_ID AS SMALLINT'
      '                                ,:SM_LER AS SMALLINT'
      '                                ,:SM_INSERIR AS SMALLINT'
      '                                ,:SM_ALTERAR AS SMALLINT'
      '                                ,:SM_EXCLUIR AS SMALLINT)')
    SQLDelete.Strings = (
      'SELECT IDU_PERMISSOESDOSUSUARIOS('#39'D'#39
      '                                ,:IN_PERMISSOESDOSUSUARIOS_ID)')
    SQLUpdate.Strings = (
      'SELECT IDU_PERMISSOESDOSUSUARIOS('#39'U'#39
      '                                ,:IN_PERMISSOESDOSUSUARIOS_ID'
      '                                ,:IN_ENTIDADESDOSISTEMA_ID'
      '                                ,:SM_USUARIOS_ID AS SMALLINT'
      '                                ,:SM_LER AS SMALLINT'
      '                                ,:SM_INSERIR AS SMALLINT'
      '                                ,:SM_ALTERAR AS SMALLINT'
      '                                ,:SM_EXCLUIR AS SMALLINT)')
    Connection = SODMPrincipal.UNCN
    SQL.Strings = (
      'SELECT EDS.VA_NOME AS ENTIDADE'
      '     , EDS.SM_TIPO AS TIPO'
      '     , PDU.*'
      '  FROM PERMISSOESDOSUSUARIOS PDU'
      '  JOIN ENTIDADESDOSISTEMA EDS USING(IN_ENTIDADESDOSISTEMA_ID)')
    MasterSource = DTSRUsuarios
    MasterFields = 'sm_usuarios_id'
    DetailFields = 'sm_usuarios_id'
    UniDirectional = True
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False'
      'PostgreSQL.UseParamTypes=True')
    Left = 264
    Top = 60
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'sm_usuarios_id'
        ParamType = ptInput
      end>
    object UNQYPermissoesDosUsuariosentidade: TWideStringField
      DisplayWidth = 128
      FieldName = 'entidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 128
    end
    object UNQYPermissoesDosUsuariostipo: TSmallintField
      DisplayWidth = 10
      FieldName = 'tipo'
      ProviderFlags = []
      ReadOnly = True
    end
    object UNQYPermissoesDosUsuariosin_permissoesdosusuarios_id: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 10
      FieldName = 'in_permissoesdosusuarios_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYPermissoesDosUsuariosin_entidadesdosistema_id: TIntegerField
      DisplayWidth = 10
      FieldName = 'in_entidadesdosistema_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosUsuariossm_usuarios_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'sm_usuarios_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosUsuariossm_ler: TSmallintField
      DisplayWidth = 10
      FieldName = 'sm_ler'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosUsuariossm_inserir: TSmallintField
      DisplayWidth = 10
      FieldName = 'sm_inserir'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosUsuariossm_alterar: TSmallintField
      DisplayWidth = 10
      FieldName = 'sm_alterar'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosUsuariossm_excluir: TSmallintField
      DisplayWidth = 10
      FieldName = 'sm_excluir'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
end

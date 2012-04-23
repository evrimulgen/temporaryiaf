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
        FieldDescription = 'Nome'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'va_login'
        FieldDescription = 'Login'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'ch_senha'
        FieldDescription = 'Senha'
      end
      item
        FieldName = 'va_email'
        FieldDescription = 'E-mail'
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
        FieldDescription = 'Entidade'
      end
      item
        FieldName = 'in_permissoesdosusuarios_id'
        FieldDescription = 'ID'
      end
      item
        FieldName = 'in_entidadesdosistema_id'
        FieldDescription = 'ID da entidade do sistema'
        CheckBlank.Active = True
      end
      item
        FieldName = 'sm_usuarios_id'
        FieldDescription = 'ID do usu'#225'rio'
        CheckBlank.Active = True
      end
      item
        FieldName = 'sm_ler'
        FieldDescription = 'Permitir leitura/acesso'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end
      item
        FieldName = 'sm_inserir'
        FieldDescription = 'Permitir inser'#231#227'o'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MinimumValue = -1.000000000000000000
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end
      item
        FieldName = 'sm_alterar'
        FieldDescription = 'Permitir altera'#231#227'o'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MinimumValue = -1.000000000000000000
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end
      item
        FieldName = 'sm_excluir'
        FieldDescription = 'Permitir exclus'#227'o'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MinimumValue = -1.000000000000000000
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end
      item
        FieldName = 'tipo'
        FieldDescription = 'Tipo de entidade'
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
      DisplayLabel = 'Superusu'#225'rio'
      DisplayWidth = 5
      FieldName = 'bo_superusuario'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object UNQYGruposDosUsuarios: TUniQuery
    SQLInsert.Strings = (
      'SELECT IDU_GRUPOSDOSUSUARIOS('#39'I'#39
      '                            ,NULL'
      '                            ,:SM_GRUPOS_ID'
      '                            ,:SM_USUARIOS_ID)')
    SQLDelete.Strings = (
      'SELECT IDU_GRUPOSDOSUSUARIOS('#39'D'#39
      '                            ,:IN_GRUPOSDOSUSUARIOS_ID)')
    SQLUpdate.Strings = (
      'SELECT IDU_GRUPOSDOSUSUARIOS('#39'U'#39
      '                            ,:IN_GRUPOSDOSUSUARIOS_ID'
      '                            ,:SM_GRUPOS_ID'
      '                            ,:SM_USUARIOS_ID)')
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
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'in_gruposdosusuarios_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYGruposDosUsuariossm_grupos_id: TSmallintField
      DisplayLabel = 'ID do grupo'
      DisplayWidth = 10
      FieldName = 'sm_grupos_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYGruposDosUsuariossm_usuarios_id: TSmallintField
      DisplayLabel = 'ID do usu'#225'rio'
      DisplayWidth = 10
      FieldName = 'sm_usuarios_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYGruposDosUsuariosgrupo: TWideStringField
      DisplayLabel = 'Grupo'
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
      '                                ,:SM_USUARIOS_ID'
      '                                ,:SM_LER'
      '                                ,:SM_INSERIR'
      '                                ,:SM_ALTERAR'
      '                                ,:SM_EXCLUIR)')
    SQLDelete.Strings = (
      'SELECT IDU_PERMISSOESDOSUSUARIOS('#39'D'#39
      '                                ,:IN_PERMISSOESDOSUSUARIOS_ID)')
    SQLUpdate.Strings = (
      'SELECT IDU_PERMISSOESDOSUSUARIOS('#39'U'#39
      '                                ,:IN_PERMISSOESDOSUSUARIOS_ID'
      '                                ,:IN_ENTIDADESDOSISTEMA_ID'
      '                                ,:SM_USUARIOS_ID'
      '                                ,:SM_LER'
      '                                ,:SM_INSERIR'
      '                                ,:SM_ALTERAR'
      '                                ,:SM_EXCLUIR)')
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
      DisplayLabel = 'Entidade'
      DisplayWidth = 128
      FieldName = 'entidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 128
    end
    object UNQYPermissoesDosUsuariostipo: TSmallintField
      DisplayLabel = 'Tipo de entidade'
      DisplayWidth = 10
      FieldName = 'tipo'
      ProviderFlags = []
      ReadOnly = True
    end
    object UNQYPermissoesDosUsuariosin_permissoesdosusuarios_id: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'in_permissoesdosusuarios_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYPermissoesDosUsuariosin_entidadesdosistema_id: TIntegerField
      DisplayLabel = 'ID da entidade do sistema'
      DisplayWidth = 10
      FieldName = 'in_entidadesdosistema_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosUsuariossm_usuarios_id: TSmallintField
      DisplayLabel = 'ID do usu'#225'rio'
      DisplayWidth = 10
      FieldName = 'sm_usuarios_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosUsuariossm_ler: TSmallintField
      DisplayLabel = 'Permitir leitura/acesso'
      DisplayWidth = 10
      FieldName = 'sm_ler'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosUsuariossm_inserir: TSmallintField
      DisplayLabel = 'Permitir inser'#231#227'o'
      DisplayWidth = 10
      FieldName = 'sm_inserir'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosUsuariossm_alterar: TSmallintField
      DisplayLabel = 'Permitir altera'#231#227'o'
      DisplayWidth = 10
      FieldName = 'sm_alterar'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosUsuariossm_excluir: TSmallintField
      DisplayLabel = 'Permitir exclus'#227'o'
      DisplayWidth = 10
      FieldName = 'sm_excluir'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object KRVCGruposDosUsuarios: TKRKValidationChecks
    DataSet = UNQYGruposDosUsuarios
    TableName = 'GRUPOSDOSUSUARIOS'
    CheckableFields = <
      item
        FieldName = 'in_gruposdosusuarios_id'
        FieldDescription = 'ID'
      end
      item
        FieldName = 'sm_grupos_id'
        FieldDescription = 'ID do grupo'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'sm_usuarios_id'
        FieldDescription = 'ID do usu'#225'rio'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'grupo'
        FieldDescription = 'Grupo'
      end>
    Left = 126
    Top = 108
  end
end

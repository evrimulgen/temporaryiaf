inherited KRDMGrupos: TKRDMGrupos
  OldCreateOrder = True
  Height = 260
  Width = 389
  object KRVCGrupos: TKRKValidationChecks
    DataSet = UNQYGrupos
    TableName = 'GRUPOS'
    CheckableFields = <
      item
        FieldName = 'sm_grupos_id'
        FieldDescription = 'ID'
      end
      item
        FieldName = 'va_nome'
        FieldDescription = 'Nome do grupo'
        CheckBlank.Active = True
      end
      item
        FieldName = 'va_descricao'
        FieldDescription = 'Descri'#231#227'o do grupo'
        CheckBlank.Active = True
      end>
    Left = 24
    Top = 156
  end
  object DTSRGrupos: TDataSource
    DataSet = UNQYGrupos
    Left = 24
    Top = 108
  end
  object KRVCPermissoesDosGrupos: TKRKValidationChecks
    DataSet = UNQYPermissoesDosGrupos
    TableName = 'PERMISSOESDOSGRUPOS'
    CheckableFields = <
      item
        FieldName = 'entidade'
        FieldDescription = 'entidade'
      end
      item
        FieldName = 'tipo'
        FieldDescription = 'tipo'
      end
      item
        FieldName = 'in_permissoesdosgrupos_id'
        FieldDescription = 'ID'
      end
      item
        FieldName = 'in_entidadesdosistema_id'
        FieldDescription = 'Entidade'
        CheckBlank.Active = True
      end
      item
        FieldName = 'sm_grupos_id'
        FieldDescription = 'Grupo'
        CheckBlank.Active = True
      end
      item
        FieldName = 'sm_ler'
        FieldDescription = 'Acessar'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end
      item
        FieldName = 'sm_inserir'
        FieldDescription = 'Inserir'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MinimumValue = -1.000000000000000000
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end
      item
        FieldName = 'sm_alterar'
        FieldDescription = 'Alterar'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MinimumValue = -1.000000000000000000
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end
      item
        FieldName = 'sm_excluir'
        FieldDescription = 'Excluir'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MinimumValue = -1.000000000000000000
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end>
    Left = 132
    Top = 156
  end
  object UNQYGrupos: TUniQuery
    SQLInsert.Strings = (
      'SELECT IDU_GRUPOS('#39'I'#39
      '                 ,NULL'
      '                 ,:va_nome'
      '                 ,:va_descricao)')
    SQLDelete.Strings = (
      'SELECT IDU_GRUPOS('#39'D'#39
      '                 ,:sm_grupos_id)')
    SQLUpdate.Strings = (
      'SELECT IDU_GRUPOS('#39'U'#39
      '                 ,:sm_grupos_id'
      '                 ,:va_nome'
      '                 ,:va_descricao)')
    Connection = SODMPrincipal.UNCN
    SQL.Strings = (
      'SELECT GRU.*'
      '  FROM GRUPOS GRU'
      
        ' WHERE ((:SM_GRUPOS_ID IS NULL) OR (GRU.SM_GRUPOS_ID = :SM_GRUPO' +
        'S_ID))'
      
        '   AND ((:VA_NOME IS NULL) OR (UPPER(GRU.VA_NOME) LIKE UPPER(:VA' +
        '_NOME)))'
      
        '   AND ((:VA_DESCRICAO IS NULL) OR (UPPER(GRU.VA_DESCRICAO) LIKE' +
        ' UPPER(:VA_DESCRICAO)))')
    UniDirectional = True
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False'
      'PostgreSQL.UseParamTypes=True')
    Left = 24
    Top = 60
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'SM_GRUPOS_ID'
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
        Name = 'VA_DESCRICAO'
        ParamType = ptInput
        Size = 128
      end>
    object UNQYGrupossm_grupos_id: TSmallintField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'sm_grupos_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYGruposva_nome: TWideStringField
      DisplayLabel = 'Nome do grupo'
      DisplayWidth = 64
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 64
    end
    object UNQYGruposva_descricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o do grupo'
      DisplayWidth = 128
      FieldName = 'va_descricao'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 128
    end
  end
  object UNQYPermissoesDosGrupos: TUniQuery
    SQLInsert.Strings = (
      'SELECT IDU_PERMISSOESDOSGRUPOS('#39'I'#39
      '                              ,NULL'
      '                              ,:IN_ENTIDADESDOSISTEMA_ID'
      '                              ,:SM_GRUPOS_ID'
      '                              ,:SM_LER'
      '                              ,:SM_INSERIR'
      '                              ,:SM_ALTERAR'
      '                              ,:SM_EXCLUIR)')
    SQLDelete.Strings = (
      'SELECT IDU_PERMISSOESDOSGRUPOS('#39'D'#39
      '                              ,:IN_PERMISSOESDOSGRUPOS_ID)')
    SQLUpdate.Strings = (
      'SELECT IDU_PERMISSOESDOSGRUPOS('#39'U'#39
      '                              ,:IN_PERMISSOESDOSGRUPOS_ID'
      '                              ,:IN_ENTIDADESDOSISTEMA_ID'
      '                              ,:SM_GRUPOS_ID'
      '                              ,:SM_LER'
      '                              ,:SM_INSERIR'
      '                              ,:SM_ALTERAR'
      '                              ,:SM_EXCLUIR)')
    Connection = SODMPrincipal.UNCN
    SQL.Strings = (
      'SELECT EDS.VA_NOME AS ENTIDADE'
      '     , EDS.SM_TIPO AS TIPO'
      '     , PDG.*'
      '  FROM PERMISSOESDOSGRUPOS PDG'
      '  JOIN ENTIDADESDOSISTEMA EDS USING(IN_ENTIDADESDOSISTEMA_ID)')
    MasterSource = DTSRGrupos
    MasterFields = 'sm_grupos_id'
    DetailFields = 'sm_grupos_id'
    UniDirectional = True
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False'
      'PostgreSQL.UseParamTypes=True')
    Left = 132
    Top = 108
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'SM_GRUPOS_ID'
        ParamType = ptInput
      end>
    object UNQYPermissoesDosGruposentidade: TWideStringField
      DisplayWidth = 128
      FieldName = 'entidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 128
    end
    object UNQYPermissoesDosGrupostipo: TSmallintField
      DisplayWidth = 10
      FieldName = 'tipo'
      ProviderFlags = []
      ReadOnly = True
    end
    object UNQYPermissoesDosGruposin_permissoesdosgrupos_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'in_permissoesdosgrupos_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYPermissoesDosGruposin_entidadesdosistema_id: TIntegerField
      DisplayLabel = 'Entidade'
      DisplayWidth = 10
      FieldName = 'in_entidadesdosistema_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosGrupossm_grupos_id: TSmallintField
      DisplayLabel = 'Grupo'
      DisplayWidth = 10
      FieldName = 'sm_grupos_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosGrupossm_ler: TSmallintField
      DisplayLabel = 'Acessar'
      DisplayWidth = 10
      FieldName = 'sm_ler'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosGrupossm_inserir: TSmallintField
      DisplayLabel = 'Inserir'
      DisplayWidth = 10
      FieldName = 'sm_inserir'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosGrupossm_alterar: TSmallintField
      DisplayLabel = 'Alterar'
      DisplayWidth = 10
      FieldName = 'sm_alterar'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPermissoesDosGrupossm_excluir: TSmallintField
      DisplayLabel = 'Excluir'
      DisplayWidth = 10
      FieldName = 'sm_excluir'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
end

inherited KRDMGrupos: TKRDMGrupos
  OldCreateOrder = True
  Height = 260
  Width = 389
  object ZQRYGrupos: TZQuery
    Connection = SODMPrincipal.ZCONIAF
    UpdateObject = ZUSQGrupos
    SQL.Strings = (
      'SELECT GRU.*'
      '  FROM grupos GRU'
      
        ' WHERE ((:SM_GRUPOS_ID IS NULL) OR (GRU.SM_GRUPOS_ID = :SM_GRUPO' +
        'S_ID))'
      
        '   AND ((:VA_NOME IS NULL) OR (UPPER(GRU.VA_NOME) LIKE UPPER(:VA' +
        '_NOME)))'
      
        '   AND ((:VA_DESCRICAO IS NULL) OR (UPPER(GRU.VA_DESCRICAO) LIKE' +
        ' UPPER(:VA_DESCRICAO)))')
    Params = <
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
    object ZQRYGrupossm_grupos_id: TSmallintField
      DisplayLabel = 'ID'
      FieldName = 'sm_grupos_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object ZQRYGruposva_nome: TWideStringField
      DisplayLabel = 'Nome do grupo'
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Size = 64
    end
    object ZQRYGruposva_descricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o do grupo'
      FieldName = 'va_descricao'
      ProviderFlags = [pfInUpdate]
      Size = 128
    end
  end
  object ZUSQGrupos: TZUpdateSQL
    DeleteSQL.Strings = (
      'SELECT IDU_GRUPOS('#39'D'#39
      '                 ,CAST(:sm_grupos_id AS SMALLINT)'
      '                 ,:va_nome'
      '                 ,:va_descricao)')
    InsertSQL.Strings = (
      'SELECT IDU_GRUPOS('#39'I'#39
      '                 ,NULL'
      '                 ,:va_nome'
      '                 ,:va_descricao)')
    ModifySQL.Strings = (
      'SELECT IDU_GRUPOS('#39'U'#39
      '                 ,CAST(:sm_grupos_id AS SMALLINT)'
      '                 ,:va_nome'
      '                 ,:va_descricao)')
    UseSequenceFieldForRefreshSQL = False
    Left = 24
    Top = 108
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'sm_grupos_id'
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
        Name = 'va_descricao'
        ParamType = ptInput
        Size = 128
      end>
  end
  object KRVCGrupos: TKRKValidationChecks
    DataSet = ZQRYGrupos
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
    Top = 204
  end
  object ZQRYPermissoesDosGrupos: TZQuery
    Connection = SODMPrincipal.ZCONIAF
    UpdateObject = ZUSQPermissoesDosGrupos
    SQL.Strings = (
      'SELECT EDS.VA_NOME AS ENTIDADE'
      '     , EDS.SM_TIPO AS TIPO'
      '     , PDG.*'
      '  FROM permissoesdosgrupos PDG'
      '  JOIN entidadesdosistema EDS USING(IN_ENTIDADESDOSISTEMA_ID)'
      
        ' WHERE ((:IN_PERMISSOESDOSGRUPOS_ID IS NULL) OR (PDG.IN_PERMISSO' +
        'ESDOSGRUPOS_ID = :IN_PERMISSOESDOSGRUPOS_ID))'
      
        '   AND ((:IN_ENTIDADESDOSISTEMA_ID IS NULL) OR (PDG.IN_ENTIDADES' +
        'DOSISTEMA_ID = :IN_ENTIDADESDOSISTEMA_ID))'
      
        '   AND ((:SM_GRUPOS_ID IS NULL) OR (PDG.SM_GRUPOS_ID = :SM_GRUPO' +
        'S_ID))'
      '   AND ((:SM_LER IS NULL) OR (PDG.SM_LER = :SM_LER))'
      '   AND ((:SM_INSERIR IS NULL) OR (PDG.SM_INSERIR = :SM_INSERIR))'
      '   AND ((:SM_ALTERAR IS NULL) OR (PDG.SM_ALTERAR = :SM_ALTERAR))'
      '   AND ((:SM_EXCLUIR IS NULL) OR (PDG.SM_EXCLUIR = :SM_EXCLUIR))')
    Params = <
      item
        DataType = ftInteger
        Name = 'IN_PERMISSOESDOSGRUPOS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ENTIDADESDOSISTEMA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SM_GRUPOS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SM_LER'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SM_INSERIR'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SM_ALTERAR'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SM_EXCLUIR'
        ParamType = ptInput
      end>
    MasterFields = 'sm_grupos_id'
    MasterSource = DTSRGrupos
    LinkedFields = 'sm_grupos_id'
    Left = 132
    Top = 60
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PERMISSOESDOSGRUPOS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ENTIDADESDOSISTEMA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SM_GRUPOS_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SM_LER'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SM_INSERIR'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SM_ALTERAR'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SM_EXCLUIR'
        ParamType = ptInput
      end>
    object ZQRYPermissoesDosGruposentidade: TWideStringField
      FieldName = 'entidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 128
    end
    object ZQRYPermissoesDosGrupostipo: TSmallintField
      FieldName = 'tipo'
      ProviderFlags = []
      ReadOnly = True
    end
    object ZQRYPermissoesDosGruposin_permissoesdosgrupos_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'in_permissoesdosgrupos_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object ZQRYPermissoesDosGruposin_entidadesdosistema_id: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'in_entidadesdosistema_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ZQRYPermissoesDosGrupossm_grupos_id: TSmallintField
      DisplayLabel = 'Grupo'
      FieldName = 'sm_grupos_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ZQRYPermissoesDosGrupossm_ler: TSmallintField
      DisplayLabel = 'Acessar'
      FieldName = 'sm_ler'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ZQRYPermissoesDosGrupossm_inserir: TSmallintField
      DisplayLabel = 'Inserir'
      FieldName = 'sm_inserir'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ZQRYPermissoesDosGrupossm_alterar: TSmallintField
      DisplayLabel = 'Alterar'
      FieldName = 'sm_alterar'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ZQRYPermissoesDosGrupossm_excluir: TSmallintField
      DisplayLabel = 'Excluir'
      FieldName = 'sm_excluir'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DTSRGrupos: TDataSource
    DataSet = ZQRYGrupos
    Left = 24
    Top = 156
  end
  object ZUSQPermissoesDosGrupos: TZUpdateSQL
    DeleteSQL.Strings = (
      'SELECT IDU_PERMISSOESDOSGRUPOS('#39'D'#39
      '                              ,:IN_PERMISSOESDOSGRUPOS_ID)')
    InsertSQL.Strings = (
      'SELECT IDU_PERMISSOESDOSGRUPOS('#39'I'#39
      '                              ,NULL'
      '                              ,:IN_ENTIDADESDOSISTEMA_ID'
      '                              ,CAST(:SM_GRUPOS_ID AS SMALLINT)'
      '                              ,CAST(:SM_LER AS SMALLINT)'
      '                              ,CAST(:SM_INSERIR AS SMALLINT)'
      '                              ,CAST(:SM_ALTERAR AS SMALLINT)'
      '                              ,CAST(:SM_EXCLUIR AS SMALLINT))')
    ModifySQL.Strings = (
      'SELECT IDU_PERMISSOESDOSGRUPOS('#39'U'#39
      '                              ,:IN_PERMISSOESDOSGRUPOS_ID'
      '                              ,:IN_ENTIDADESDOSISTEMA_ID'
      '                              ,CAST(:SM_GRUPOS_ID AS SMALLINT)'
      '                              ,CAST(:SM_LER AS SMALLINT)'
      '                              ,CAST(:SM_INSERIR AS SMALLINT)'
      '                              ,CAST(:SM_ALTERAR AS SMALLINT)'
      '                              ,CAST(:SM_EXCLUIR AS SMALLINT))')
    UseSequenceFieldForRefreshSQL = False
    Left = 132
    Top = 108
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PERMISSOESDOSGRUPOS_ID'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftInteger
        Name = 'in_entidadesdosistema_id'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftSmallint
        Name = 'sm_grupos_id'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftSmallint
        Name = 'sm_ler'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftSmallint
        Name = 'sm_inserir'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftSmallint
        Name = 'sm_alterar'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftSmallint
        Name = 'sm_excluir'
        ParamType = ptInput
        Value = Null
      end>
  end
  object KRVCPermissoesDosGrupos: TKRKValidationChecks
    DataSet = ZQRYPermissoesDosGrupos
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
end

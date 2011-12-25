inherited KRDMGrupos: TKRDMGrupos
  OldCreateOrder = True
  Height = 208
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
    Top = 156
  end
end

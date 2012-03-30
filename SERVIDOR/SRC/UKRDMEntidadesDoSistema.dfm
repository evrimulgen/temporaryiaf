inherited KRDMEntidadesDoSistema: TKRDMEntidadesDoSistema
  OldCreateOrder = True
  Height = 210
  Width = 141
  inherited ZROQ: TZReadOnlyQuery
    Connection = SODMPrincipal.ZCONIAF
  end
  inherited ZSTP: TZStoredProc
    Connection = SODMPrincipal.ZCONIAF
  end
  object ZQRYEntidadesDoSistema: TZQuery
    Connection = SODMPrincipal.ZCONIAF
    UpdateObject = ZUSQEntidadesDoSistema
    SQL.Strings = (
      'SELECT EDS.*'
      '  FROM entidadesdosistema EDS'
      
        ' WHERE ((:IN_ENTIDADESDOSISTEMA_ID IS NULL) OR (EDS.IN_ENTIDADES' +
        'DOSISTEMA_ID = :IN_ENTIDADESDOSISTEMA_ID))'
      
        '   AND ((:VA_NOME IS NULL) OR (UPPER(EDS.VA_NOME) LIKE UPPER(:VA' +
        '_NOME)))'
      '   AND ((:SM_TIPO IS NULL) OR (EDS.SM_TIPO = :SM_TIPO))')
    Params = <
      item
        DataType = ftInteger
        Name = 'IN_ENTIDADESDOSISTEMA_ID'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_NOME'
        ParamType = ptInput
        Size = 128
        Value = Null
      end
      item
        DataType = ftSmallint
        Name = 'SM_TIPO'
        ParamType = ptInput
        Value = Null
      end>
    Left = 54
    Top = 60
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ENTIDADESDOSISTEMA_ID'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_NOME'
        ParamType = ptInput
        Size = 128
        Value = Null
      end
      item
        DataType = ftSmallint
        Name = 'SM_TIPO'
        ParamType = ptInput
        Value = Null
      end>
    object ZQRYEntidadesDoSistemain_entidadesdosistema_id: TIntegerField
      FieldName = 'in_entidadesdosistema_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object ZQRYEntidadesDoSistemava_nome: TWideStringField
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Size = 128
    end
    object ZQRYEntidadesDoSistemasm_tipo: TSmallintField
      FieldName = 'sm_tipo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ZUSQEntidadesDoSistema: TZUpdateSQL
    DeleteSQL.Strings = (
      'SELECT IDU_ENTIDADESDOSISTEMA(CAST('#39'D'#39' AS CHARACTER)'
      
        '                             ,CAST(:IN_ENTIDADESDOSISTEMA_ID AS ' +
        'INTEGER))')
    InsertSQL.Strings = (
      'SELECT IDU_ENTIDADESDOSISTEMA(CAST('#39'I'#39' AS CHARACTER)'
      '                             ,CAST(NULL AS INTEGER)'
      
        '                             ,CAST(:VA_NOME AS CHARACTER VARYING' +
        ')'
      '                             ,CAST(:SM_TIPO AS SMALLINT))')
    ModifySQL.Strings = (
      'SELECT IDU_ENTIDADESDOSISTEMA(CAST('#39'U'#39' AS CHARACTER)'
      
        '                             ,CAST(:IN_ENTIDADESDOSISTEMA_ID AS ' +
        'INTEGER)'
      
        '                             ,CAST(:VA_NOME AS CHARACTER VARYING' +
        ')'
      '                             ,CAST(:SM_TIPO AS SMALLINT))')
    UseSequenceFieldForRefreshSQL = False
    Left = 54
    Top = 108
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ENTIDADESDOSISTEMA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'va_nome'
        ParamType = ptInput
        Size = 128
      end
      item
        DataType = ftSmallint
        Name = 'sm_tipo'
        ParamType = ptInput
      end>
  end
  object KRVCEntidadesDoSistema: TKRKValidationChecks
    DataSet = ZQRYEntidadesDoSistema
    TableName = 'ENTIDADESDOSISTEMA'
    CheckableFields = <
      item
        FieldName = 'in_entidadesdosistema_id'
        FieldDescription = 'ID'
        CheckBlank.Active = True
      end
      item
        FieldName = 'va_nome'
        FieldDescription = 'Nome da entidade'
        CheckBlank.Active = True
      end
      item
        FieldName = 'sm_tipo'
        FieldDescription = 'Tipo de entidade'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end>
    Left = 54
    Top = 156
  end
end

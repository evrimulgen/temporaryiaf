inherited KRDMEntidadesDoSistema: TKRDMEntidadesDoSistema
  Height = 165
  Width = 141
  object KRVCEntidadesDoSistema: TKRKValidationChecks
    DataSet = UNQYEntidadesDoSistema
    TableName = 'ENTIDADESDOSISTEMA'
    CheckableFields = <
      item
        FieldName = 'in_entidadesdosistema_id'
        FieldDescription = 'ID'
        CheckBlank.Active = True
      end
      item
        FieldName = 'va_nome'
        FieldDescription = 'Nome'
        CheckBlank.Active = True
      end
      item
        FieldName = 'sm_tipo'
        FieldDescription = 'Tipo'
        CheckBlank.Active = True
        CheckNumber.Active = True
        CheckNumber.MaximumValue = 1.000000000000000000
        CheckNumber.CheckNumberMode = cnmRange
      end>
    Left = 54
    Top = 108
  end
  object UNQYEntidadesDoSistema: TUniQuery
    SQLInsert.Strings = (
      'SELECT IDU_ENTIDADESDOSISTEMA('#39'I'#39
      '                             ,NULL'
      '                             ,:VA_NOME'
      '                             ,:SM_TIPO)')
    SQLDelete.Strings = (
      'SELECT IDU_ENTIDADESDOSISTEMA('#39'D'#39
      '                             ,:IN_ENTIDADESDOSISTEMA_ID)')
    SQLUpdate.Strings = (
      'SELECT IDU_ENTIDADESDOSISTEMA('#39'U'#39
      '                             ,:IN_ENTIDADESDOSISTEMA_ID'
      '                             ,:VA_NOME'
      '                             ,:SM_TIPO)')
    Connection = SODMPrincipal.UNCN
    SQL.Strings = (
      'SELECT EDS.*'
      '  FROM entidadesdosistema EDS'
      
        ' WHERE ((:IN_ENTIDADESDOSISTEMA_ID IS NULL) OR (EDS.IN_ENTIDADES' +
        'DOSISTEMA_ID = :IN_ENTIDADESDOSISTEMA_ID))'
      
        '   AND ((:VA_NOME IS NULL) OR (UPPER(EDS.VA_NOME) LIKE UPPER(:VA' +
        '_NOME)))'
      '   AND ((:SM_TIPO IS NULL) OR (EDS.SM_TIPO = :SM_TIPO))')
    UniDirectional = True
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False'
      'PostgreSQL.UseParamTypes=True')
    Left = 54
    Top = 60
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ENTIDADESDOSISTEMA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VA_NOME'
        ParamType = ptInput
        Size = 128
      end
      item
        DataType = ftSmallint
        Name = 'SM_TIPO'
        ParamType = ptInput
      end>
    object UNQYEntidadesDoSistemain_entidadesdosistema_id: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'in_entidadesdosistema_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYEntidadesDoSistemava_nome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 128
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Size = 128
    end
    object UNQYEntidadesDoSistemasm_tipo: TSmallintField
      DisplayLabel = 'Tipo'
      DisplayWidth = 10
      FieldName = 'sm_tipo'
      ProviderFlags = [pfInUpdate]
    end
  end
end

inherited KRDMEntidadesDoSistema: TKRDMEntidadesDoSistema
  OldCreateOrder = True
  Height = 160
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
      ReadOnly = True
    end
    object ZQRYEntidadesDoSistemava_nome: TWideStringField
      FieldName = 'va_nome'
      ReadOnly = True
      Size = 128
    end
    object ZQRYEntidadesDoSistemasm_tipo: TSmallintField
      FieldName = 'sm_tipo'
      ReadOnly = True
    end
  end
  object ZUSQEntidadesDoSistema: TZUpdateSQL
    DeleteSQL.Strings = (
      'SELECT IDU_ENTIDADESDOSISTEMA('#39'D'#39
      '                             ,:OLD_IN_ENTIDADESDOSISTEMA_ID)')
    InsertSQL.Strings = (
      'SELECT IDU_ENTIDADESDOSISTEMA('#39'I'#39
      '                             ,NULL'
      '                             ,:VA_NOME'
      '                             ,:SM_TIPO)')
    ModifySQL.Strings = (
      'SELECT IDU_ENTIDADESDOSISTEMA('#39'U'#39
      '                             ,:OLD_IN_ENTIDADESDOSISTEMA_ID'
      '                             ,:VA_NOME'
      '                             ,:SM_TIPO)')
    UseSequenceFieldForRefreshSQL = False
    Left = 54
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OLD_in_entidadesdosistema_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'va_nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sm_tipo'
        ParamType = ptUnknown
      end>
  end
end

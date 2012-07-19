inherited KRDMCBO: TKRDMCBO
  OldCreateOrder = True
  object UNQYCBO: TUniQuery
    SQLInsert.Strings = (
      'SELECT IDU_CBO('#39'I'#39
      '              ,NULL'
      '              ,:CH_CODIGO'
      '              ,:VA_TITULO'
      '              ,CAST(:EN_TIPO AS TIPOCBO))')
    SQLDelete.Strings = (
      'SELECT IDU_CBO('#39'D'#39
      '              ,:IN_CBO_ID)')
    SQLUpdate.Strings = (
      'SELECT IDU_CBO('#39'U'#39
      '              ,:IN_CBO_ID'
      '              ,:CH_CODIGO'
      '              ,:VA_TITULO'
      '              ,CAST(:EN_TIPO AS TIPOCBO))')
    Connection = SODMPrincipal.UNCN
    SQL.Strings = (
      'SELECT CBO.IN_CBO_ID'
      '     , CBO.CH_CODIGO'
      '     , CBO.VA_TITULO'
      '     , CAST(CBO.EN_TIPO AS VARCHAR(8)) AS EN_TIPO'
      '  FROM CBO CBO'
      ' WHERE ((:IN_CBO_ID IS NULL) OR (CBO.IN_CBO_ID = :IN_CBO_ID))'
      '   AND ((:CH_CODIGO IS NULL) OR (CBO.CH_CODIGO = :CH_CODIGO))'
      
        '   AND ((:VA_TITULO IS NULL) OR (UPPER(CBO.VA_TITULO) LIKE UPPER' +
        '(:VA_TITULO)))'
      
        '   AND ((:EN_TIPO IS NULL) OR (CAST(CBO.EN_TIPO AS VARCHAR) = :E' +
        'N_TIPO))')
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False'
      'PostgreSQL.UseParamTypes=True')
    Left = 18
    Top = 54
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_CBO_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CH_CODIGO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'VA_TITULO'
        ParamType = ptInput
        Size = 128
      end
      item
        DataType = ftString
        Name = 'EN_TIPO'
        ParamType = ptInput
        Size = 8
      end>
    object UNQYCBOin_cbo_id: TIntegerField
      FieldName = 'in_cbo_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYCBOch_codigo: TWideStringField
      DisplayLabel = 'CBO'
      FieldName = 'ch_codigo'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 6
    end
    object UNQYCBOva_titulo: TWideStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'va_titulo'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 128
    end
    object UNQYCBOen_tipo: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'en_tipo'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 8
    end
  end
  object KRVCCBO: TKRKValidationChecks
    DataSet = UNQYCBO
    TableName = 'CBO'
    CheckableFields = <
      item
        FieldName = 'in_cbo_id'
        FieldDescription = 'in_cbo_id'
      end
      item
        FieldName = 'ch_codigo'
        FieldDescription = 'CBO'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
        CheckTextLength.Active = True
        CheckTextLength.FocusOnValidateFailure = True
        CheckTextLength.CustomValidationMessage = 
          'O c'#243'digo de identifica'#231#227'o do CBO deve conter obrigatoriamente 6 ' +
          'caracteres num'#233'ricos'
        CheckTextLength.MinimumTextLength = 6
        CheckTextLength.MaximumTextLength = 6
        CheckTextLength.CheckTextLengthMode = ctmEqual
      end
      item
        FieldName = 'va_titulo'
        FieldDescription = 'T'#237'tulo'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'en_tipo'
        FieldDescription = 'Tipo'
        CheckBlank.Active = True
        CheckTextSet.Active = True
        CheckTextSet.FocusOnValidateFailure = True
        CheckTextSet.CustomValidationMessage = 'Os valores aceitos s'#227'o "Ocupa'#231#227'o" ou "Sin'#244'nimo".'
        CheckTextSet.Strings.Strings = (
          'Ocupa'#231#227'o'
          'Sin'#244'nimo')
      end>
    Left = 18
    Top = 102
  end
end

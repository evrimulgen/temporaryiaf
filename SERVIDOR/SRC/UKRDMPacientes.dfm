inherited KRDMPacientes: TKRDMPacientes
  OldCreateOrder = True
  Height = 155
  object UNQYPacientes: TUniQuery
    SQLInsert.Strings = (
      'SELECT IDU_PACIENTES('#39'I'#39
      '                    ,NULL'
      '                    ,:VA_NOME'
      '                    ,:DA_DATANASCIMENTO'
      '                    ,:VA_RG'
      '                    ,CAST(:EN_ORGAOEMISSORRG AS ORGAOEMISSOR)'
      '                    ,CAST(:EN_UFEMISSAORG AS UF)'
      '                    ,CAST(:EN_TIPOLOGRADOURO AS TIPOLOGRADOURO)'
      '                    ,:VA_NOMELOGRADOURO'
      '                    ,:VA_IDLOGRADOURO'
      '                    ,:VA_COMPLEMENTOLOGRADOURO'
      '                    ,:VA_BAIRROLOGRADOURO'
      '                    ,:VA_CIDADE'
      '                    ,CAST(:EN_UF AS UF)'
      '                    ,:CH_FONERESIDENCIAL'
      '                    ,:CH_FONECELULAR'
      '                    ,:TX_OBSERVACOES)')
    SQLDelete.Strings = (
      'SELECT IDU_PACIENTES('#39'D'#39
      '                    ,:IN_PACIENTES_ID)')
    SQLUpdate.Strings = (
      'SELECT IDU_PACIENTES('#39'U'#39
      '                    ,:IN_PACIENTES_ID'
      '                    ,:VA_NOME'
      '                    ,:DA_DATANASCIMENTO'
      '                    ,:VA_RG'
      '                    ,CAST(:EN_ORGAOEMISSORRG AS ORGAOEMISSOR)'
      '                    ,CAST(:EN_UFEMISSAORG AS UF)'
      '                    ,CAST(:EN_TIPOLOGRADOURO AS TIPOLOGRADOURO)'
      '                    ,:VA_NOMELOGRADOURO'
      '                    ,:VA_IDLOGRADOURO'
      '                    ,:VA_COMPLEMENTOLOGRADOURO'
      '                    ,:VA_BAIRROLOGRADOURO'
      '                    ,:VA_CIDADE'
      '                    ,CAST(:EN_UF AS UF)'
      '                    ,:CH_FONERESIDENCIAL'
      '                    ,:CH_FONECELULAR'
      '                    ,:TX_OBSERVACOES)')
    Connection = SODMPrincipal.UNCN
    SQL.Strings = (
      'SELECT PAC.*'
      '  FROM PACIENTES PAC'
      
        ' WHERE ((:IN_PACIENTES_ID IS NULL) OR PAC.IN_PACIENTES_ID = :IN_' +
        'PACIENTES_ID)'
      
        '   AND ((:VA_NOME IS NULL) OR UPPER(PAC.VA_NOME) LIKE UPPER(:VA_' +
        'NOME))'
      
        '   AND ((:DA_DATANASCIMENTO IS NULL) OR PAC.DA_DATANASCIMENTO = ' +
        ':DA_DATANASCIMENTO)'
      '   AND ((:VA_RG IS NULL) OR PAC.VA_RG = :VA_RG)'
      
        '   AND ((:EN_ORGAOEMISSORRG IS NULL) OR CAST(PAC.EN_ORGAOEMISSOR' +
        'RG AS VARCHAR) = :EN_ORGAOEMISSORRG)'
      
        '   AND ((:EN_UFEMISSAORG IS NULL) OR CAST(PAC.EN_UFEMISSAORG AS ' +
        'VARCHAR) = :EN_UFEMISSAORG)'
      
        '   AND ((:EN_TIPOLOGRADOURO IS NULL) OR CAST(PAC.EN_TIPOLOGRADOU' +
        'RO AS VARCHAR) = :EN_TIPOLOGRADOURO)'
      
        '   AND ((:VA_NOMELOGRADOURO IS NULL) OR UPPER(PAC.VA_NOMELOGRADO' +
        'URO) LIKE UPPER(:VA_NOMELOGRADOURO))'
      
        '   AND ((:VA_IDLOGRADOURO IS NULL) OR UPPER(PAC.VA_IDLOGRADOURO)' +
        ' LIKE UPPER(:VA_IDLOGRADOURO))'
      
        '   AND ((:VA_COMPLEMENTOLOGRADOURO IS NULL) OR UPPER(PAC.VA_COMP' +
        'LEMENTOLOGRADOURO) LIKE UPPER(:VA_COMPLEMENTOLOGRADOURO))'
      
        '   AND ((:VA_BAIRROLOGRADOURO IS NULL) OR UPPER(PAC.VA_BAIRROLOG' +
        'RADOURO) LIKE UPPER(:VA_BAIRROLOGRADOURO))'
      
        '   AND ((:VA_CIDADE IS NULL) OR UPPER(PAC.VA_CIDADE) LIKE UPPER(' +
        ':VA_CIDADE))'
      '   AND ((:EN_UF IS NULL) OR CAST(PAC.EN_UF AS VARCHAR) = :EN_UF)'
      
        '   AND ((:CH_FONERESIDENCIAL IS NULL) OR PAC.CH_FONERESIDENCIAL ' +
        '= :CH_FONERESIDENCIAL)'
      
        '   AND ((:CH_FONECELULAR IS NULL) OR PAC.CH_FONECELULAR = :CH_FO' +
        'NECELULAR)'
      
        '   AND ((:TX_OBSERVACOES IS NULL) OR UPPER(PAC.TX_OBSERVACOES) L' +
        'IKE UPPER(:TX_OBSERVACOES))')
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False'
      'PostgreSQL.UseParamTypes=True')
    Left = 30
    Top = 54
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_PACIENTES_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VA_NOME'
        Size = 128
      end
      item
        DataType = ftDateTime
        Name = 'DA_DATANASCIMENTO'
      end
      item
        DataType = ftString
        Name = 'VA_RG'
        Size = 10
      end
      item
        DataType = ftString
        Name = 'EN_ORGAOEMISSORRG'
        Size = 15
      end
      item
        DataType = ftString
        Name = 'EN_UFEMISSAORG'
        Size = 2
      end
      item
        DataType = ftString
        Name = 'EN_TIPOLOGRADOURO'
        Size = 15
      end
      item
        DataType = ftString
        Name = 'VA_NOMELOGRADOURO'
        Size = 128
      end
      item
        DataType = ftString
        Name = 'VA_IDLOGRADOURO'
        Size = 10
      end
      item
        DataType = ftString
        Name = 'VA_COMPLEMENTOLOGRADOURO'
        Size = 20
      end
      item
        DataType = ftString
        Name = 'VA_BAIRROLOGRADOURO'
        Size = 20
      end
      item
        DataType = ftString
        Name = 'VA_CIDADE'
        Size = 30
      end
      item
        DataType = ftString
        Name = 'EN_UF'
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CH_FONERESIDENCIAL'
        Size = 10
      end
      item
        DataType = ftString
        Name = 'CH_FONECELULAR'
        Size = 10
      end
      item
        DataType = ftMemo
        Name = 'TX_OBSERVACOES'
        Value = ''
      end>
    object UNQYPacientesin_pacientes_id: TIntegerField
      FieldName = 'in_pacientes_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYPacientesva_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 128
    end
    object UNQYPacientesda_datanascimento: TDateField
      DisplayLabel = 'Data de nascimento'
      FieldName = 'da_datanascimento'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPacientesva_rg: TWideStringField
      DisplayLabel = 'RG'
      FieldName = 'va_rg'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object UNQYPacientesen_orgaoemissorrg: TWideMemoField
      DisplayLabel = #211'rg'#227'o emissor do RG'
      FieldName = 'en_orgaoemissorrg'
      ProviderFlags = [pfInUpdate]
      Required = True
      BlobType = ftWideMemo
    end
    object UNQYPacientesen_ufemissaorg: TWideMemoField
      DisplayLabel = 'UF de emiss'#227'o do RG'
      FieldName = 'en_ufemissaorg'
      ProviderFlags = [pfInUpdate]
      Required = True
      BlobType = ftWideMemo
    end
    object UNQYPacientesen_tipologradouro: TWideMemoField
      DisplayLabel = 'Tipo de logradouro'
      FieldName = 'en_tipologradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      BlobType = ftWideMemo
    end
    object UNQYPacientesva_nomelogradouro: TWideStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'va_nomelogradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 128
    end
    object UNQYPacientesva_idlogradouro: TWideStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'va_idlogradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object UNQYPacientesva_complementologradouro: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'va_complementologradouro'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYPacientesva_bairrologradouro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'va_bairrologradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYPacientesva_cidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'va_cidade'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object UNQYPacientesen_uf: TWideMemoField
      DisplayLabel = 'UF'
      FieldName = 'en_uf'
      ProviderFlags = [pfInUpdate]
      Required = True
      BlobType = ftWideMemo
    end
    object UNQYPacientesch_foneresidencial: TWideStringField
      DisplayLabel = 'Telefone residencial'
      FieldName = 'ch_foneresidencial'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object UNQYPacientesch_fonecelular: TWideStringField
      DisplayLabel = 'Telefone celular'
      FieldName = 'ch_fonecelular'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object UNQYPacientestx_observacoes: TWideMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'tx_observacoes'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
    end
  end
  object KRVCPacientes: TKRKValidationChecks
    DataSet = UNQYPacientes
    TableName = 'PACIENTES'
    CheckableFields = <
      item
        FieldName = 'in_pacientes_id'
        FieldDescription = 'in_pacientes_id'
      end
      item
        FieldName = 'va_nome'
        FieldDescription = 'Nome'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'da_datanascimento'
        FieldDescription = 'Data de nascimento'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'va_rg'
        FieldDescription = 'RG'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'en_orgaoemissorrg'
        FieldDescription = #211'rg'#227'o emissor do RG'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
        CheckTextSet.Active = True
        CheckTextSet.FocusOnValidateFailure = True
        CheckTextSet.CustomValidationMessage = 'O '#243'rg'#227'o emissor escolhido n'#227'o existe'
        CheckTextSet.Strings.Strings = (
          'ABNC'
          'CGPI/DUREX/DPF'
          'CGPI'
          'CGPMAF'
          'CNIG'
          'CNT'
          'COREN'
          'CRA'
          'CRAS'
          'CRB'
          'CRC'
          'CRE'
          'CREA'
          'CRECI'
          'CREFIT'
          'CRF'
          'CRM'
          'CRN'
          'CRO'
          'CRP'
          'CRPRE'
          'CRQ'
          'CRRC'
          'CRMV'
          'CSC'
          'CTPS'
          'DIC'
          'DIREX'
          'DPMAF'
          'DPT'
          'DST'
          'FGTS'
          'FIPE'
          'FLS'
          'GOVGO'
          'I CLA'
          'IFP'
          'IGP'
          'IICCECF/RO'
          'IIMG'
          'IML'
          'IPC'
          'IPF'
          'MAE'
          'MEX'
          'MMA'
          'OAB'
          'OMB'
          'PCMG'
          'PMMG'
          'POF'
          'DPF'
          'POM'
          'SDS'
          'SNJ'
          'SECC'
          'SEJUSP'
          'SES'
          'EST'
          'SESP'
          'SJS'
          'SJTC'
          'SJTS'
          'SPTC'
          'SSP'
          'ZZZ')
      end
      item
        FieldName = 'en_ufemissaorg'
        FieldDescription = 'UF de emiss'#227'o do RG'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
        CheckTextSet.Active = True
        CheckTextSet.FocusOnValidateFailure = True
        CheckTextSet.CustomValidationMessage = 'O UF de emiss'#227'o do RG escolhido n'#227'o existe'
        CheckTextSet.Strings.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
      end
      item
        FieldName = 'en_tipologradouro'
        FieldDescription = 'Tipo de logradouro'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
        CheckTextSet.Active = True
        CheckTextSet.FocusOnValidateFailure = True
        CheckTextSet.CustomValidationMessage = 'O tipo de logradouro escolhido n'#227'o existe'
      end
      item
        FieldName = 'va_nomelogradouro'
        FieldDescription = 'Logradouro'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'va_idlogradouro'
        FieldDescription = 'N'#250'mero'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'va_complementologradouro'
        FieldDescription = 'Complemento'
      end
      item
        FieldName = 'va_bairrologradouro'
        FieldDescription = 'Bairro'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'va_cidade'
        FieldDescription = 'Cidade'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
      end
      item
        FieldName = 'en_uf'
        FieldDescription = 'UF'
        CheckBlank.Active = True
        CheckBlank.FocusOnValidateFailure = True
        CheckTextSet.Active = True
        CheckTextSet.FocusOnValidateFailure = True
        CheckTextSet.CustomValidationMessage = 'O UF escolhido n'#227'o existe'
        CheckTextSet.Strings.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
      end
      item
        FieldName = 'ch_foneresidencial'
        FieldDescription = 'Telefone residencial'
      end
      item
        FieldName = 'ch_fonecelular'
        FieldDescription = 'Telefone celular'
      end
      item
        FieldName = 'tx_observacoes'
        FieldDescription = 'Observa'#231#245'es'
      end>
    Left = 30
    Top = 102
  end
end

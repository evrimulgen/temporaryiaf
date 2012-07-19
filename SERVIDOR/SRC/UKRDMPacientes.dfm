inherited KRDMPacientes: TKRDMPacientes
  OldCreateOrder = True
  Height = 201
  Width = 262
  object UNQYPacientes: TUniQuery
    SQLInsert.Strings = (
      'SELECT IDU_PACIENTES('#39'I'#39
      '                    ,NULL'
      '                    ,:VA_NOME'
      '                    ,CAST(:EN_GENERO AS GENERO)'
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
      '                    ,CAST(:EN_GENERO AS GENERO)'
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
      'SELECT PAC.IN_PACIENTES_ID'
      '     , PAC.VA_NOME'
      '     , CAST(PAC.EN_GENERO AS VARCHAR(9)) AS EN_GENERO'
      '     , PAC.DA_DATANASCIMENTO'
      '     , PAC.VA_RG'
      
        '     , CAST(PAC.EN_ORGAOEMISSORRG AS VARCHAR(15)) AS EN_ORGAOEMI' +
        'SSORRG'
      '     , CAST(PAC.EN_UFEMISSAORG AS CHAR(2)) AS EN_UFEMISSAORG'
      
        '     , CAST(PAC.EN_TIPOLOGRADOURO AS VARCHAR(15)) AS EN_TIPOLOGR' +
        'ADOURO'
      '     , PAC.VA_NOMELOGRADOURO'
      '     , PAC.VA_IDLOGRADOURO'
      '     , PAC.VA_COMPLEMENTOLOGRADOURO'
      '     , PAC.VA_BAIRROLOGRADOURO'
      '     , PAC.VA_CIDADE'
      '     , CAST(PAC.EN_UF AS CHAR(2)) AS EN_UF'
      '     , PAC.CH_FONERESIDENCIAL'
      '     , PAC.CH_FONECELULAR'
      '     , PAC.TX_OBSERVACOES'
      '  FROM PACIENTES PAC'
      
        ' WHERE ((:IN_PACIENTES_ID IS NULL) OR PAC.IN_PACIENTES_ID = :IN_' +
        'PACIENTES_ID)'
      
        '   AND ((:VA_NOME IS NULL) OR UPPER(PAC.VA_NOME) LIKE UPPER(:VA_' +
        'NOME))'
      
        '   AND ((:EN_GENERO IS NULL) OR CAST(PAC.EN_GENERO AS VARCHAR) =' +
        ' :EN_GENERO)'
      
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
        ParamType = ptInput
        Size = 128
      end
      item
        DataType = ftString
        Name = 'EN_GENERO'
        ParamType = ptInput
        Size = 9
      end
      item
        DataType = ftDateTime
        Name = 'DA_DATANASCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VA_RG'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'EN_ORGAOEMISSORRG'
        ParamType = ptInput
        Size = 15
      end
      item
        DataType = ftString
        Name = 'EN_UFEMISSAORG'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'EN_TIPOLOGRADOURO'
        ParamType = ptInput
        Size = 15
      end
      item
        DataType = ftString
        Name = 'VA_NOMELOGRADOURO'
        ParamType = ptInput
        Size = 128
      end
      item
        DataType = ftString
        Name = 'VA_IDLOGRADOURO'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'VA_COMPLEMENTOLOGRADOURO'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'VA_BAIRROLOGRADOURO'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'VA_CIDADE'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'EN_UF'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CH_FONERESIDENCIAL'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'CH_FONECELULAR'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftMemo
        Name = 'TX_OBSERVACOES'
        ParamType = ptInput
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
    object UNQYPacientesen_genero: TWideStringField
      DisplayLabel = 'G'#234'nero'
      DisplayWidth = 9
      FieldName = 'en_genero'
      Required = True
      Size = 9
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
    object UNQYPacientesen_orgaoemissorrg: TWideStringField
      DisplayLabel = #211'rg'#227'o emissor do RG'
      DisplayWidth = 14
      FieldName = 'en_orgaoemissorrg'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 14
    end
    object UNQYPacientesen_ufemissaorg: TWideStringField
      DisplayLabel = 'UF de emiss'#227'o do RG'
      DisplayWidth = 2
      FieldName = 'en_ufemissaorg'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
    object UNQYPacientesen_tipologradouro: TWideStringField
      DisplayLabel = 'Tipo de logradouro'
      DisplayWidth = 15
      FieldName = 'en_tipologradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
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
    object UNQYPacientesen_uf: TWideStringField
      DisplayLabel = 'UF'
      DisplayWidth = 2
      FieldName = 'en_uf'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
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
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'va_nome'
        FieldDescription = 'Nome'
        CheckBlank.Active = True
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'en_genero'
        FieldDescription = 'G'#234'nero'
        CheckBlank.Active = True
        CheckTextSet.FocusOnValidateFailure = False
        CheckTextSet.CustomValidationMessage = 'O g'#234'nero escolhido n'#227'o existe'
        CheckTextSet.Strings.Strings = (
          'Masculino'
          'Feminino')
      end
      item
        FieldName = 'da_datanascimento'
        FieldDescription = 'Data de nascimento'
        CheckBlank.Active = True
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'va_rg'
        FieldDescription = 'RG'
        CheckBlank.Active = True
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'en_orgaoemissorrg'
        FieldDescription = #211'rg'#227'o emissor do RG'
        CheckBlank.Active = True
        CheckTextSet.Active = True
        CheckTextSet.FocusOnValidateFailure = False
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
        CheckTextSet.Active = True
        CheckTextSet.FocusOnValidateFailure = False
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
        CheckTextSet.Active = True
        CheckTextSet.FocusOnValidateFailure = False
        CheckTextSet.CustomValidationMessage = 'O tipo de logradouro escolhido n'#227'o existe'
        CheckTextSet.Strings.Strings = (
          'Outros'
          'Aeroporto'
          'Alameda'
          #193'rea'
          'Avenida'
          'Campo'
          'Ch'#225'cara'
          'Col'#244'nia'
          'Condom'#237'nio'
          'Conjunto'
          'Distrito'
          'Esplanada'
          'Esta'#231#227'o'
          'Estrada'
          'Favela'
          'Fazenda'
          'Feira'
          'Jardim'
          'Ladeira'
          'Lago'
          'Lagoa'
          'Largo'
          'Loteamento'
          'Morro'
          'N'#250'cleo'
          'Parque'
          'Passarela'
          'P'#225'tio'
          'Pra'#231'a'
          'Quadra'
          'Recanto'
          'Residencial'
          'Rodovia'
          'Rua'
          'Setor'
          'S'#237'tio'
          'Travessa'
          'Trecho'
          'Trevo'
          'Vale'
          'Vereda'
          'Via'
          'Viaduto'
          'Viela'
          'Vila')
      end
      item
        FieldName = 'va_nomelogradouro'
        FieldDescription = 'Logradouro'
        CheckBlank.Active = True
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'va_idlogradouro'
        FieldDescription = 'N'#250'mero'
        CheckBlank.Active = True
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'va_complementologradouro'
        FieldDescription = 'Complemento'
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'va_bairrologradouro'
        FieldDescription = 'Bairro'
        CheckBlank.Active = True
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'va_cidade'
        FieldDescription = 'Cidade'
        CheckBlank.Active = True
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'en_uf'
        FieldDescription = 'UF'
        CheckBlank.Active = True
        CheckTextSet.Active = True
        CheckTextSet.FocusOnValidateFailure = False
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
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'ch_fonecelular'
        FieldDescription = 'Telefone celular'
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'tx_observacoes'
        FieldDescription = 'Observa'#231#245'es'
        CheckTextSet.FocusOnValidateFailure = False
      end>
    Left = 30
    Top = 102
  end
  object UNQYDadosSocioDemograficos: TUniQuery
    SQLInsert.Strings = (
      'SELECT IDU_DADOSSOCIODEMOGRAFICOS('#39'I'#39
      '                                 ,NULL'
      '                                 ,:IN_PACIENTES_ID'
      '                                 ,:SM_CORRACA'
      '                                 ,:SM_ESTADOCIVIL'
      '                                 ,:SM_GRAUDEINSTRUCAO'
      '                                 ,:IN_CBO_ID'
      '                                 ,:BO_APOSENTADO'
      '                                 ,:SM_TELEVISOR'
      '                                 ,:SM_RADIO'
      '                                 ,:SM_BANHEIRO'
      '                                 ,:SM_AUTOMOVEL'
      '                                 ,:SM_MENSALISTA'
      '                                 ,:SM_MAQUINALAVAR'
      '                                 ,:SM_VCRDVD'
      '                                 ,:SM_GELADEIRA'
      '                                 ,:SM_FREEZER'
      '                                 ,:BO_CHEFEDEFAMILIA'
      '                                 ,:SM_GRAUINSTRCHEFEDEFAMILIA)')
    SQLDelete.Strings = (
      'SELECT IDU_DADOSSOCIODEMOGRAFICOS('#39'D'#39
      '                                 ,:IN_DADOSSOCIODEMOGRAFICOS_ID)')
    SQLUpdate.Strings = (
      'SELECT IDU_DADOSSOCIODEMOGRAFICOS('#39'U'#39
      '                                 ,:IN_DADOSSOCIODEMOGRAFICOS_ID'
      '                                 ,:IN_PACIENTES_ID'
      '                                 ,:SM_CORRACA'
      '                                 ,:SM_ESTADOCIVIL'
      '                                 ,:SM_GRAUDEINSTRUCAO'
      '                                 ,:IN_CBO_ID'
      '                                 ,:BO_APOSENTADO'
      '                                 ,:SM_TELEVISOR'
      '                                 ,:SM_RADIO'
      '                                 ,:SM_BANHEIRO'
      '                                 ,:SM_AUTOMOVEL'
      '                                 ,:SM_MENSALISTA'
      '                                 ,:SM_MAQUINALAVAR'
      '                                 ,:SM_VCRDVD'
      '                                 ,:SM_GELADEIRA'
      '                                 ,:SM_FREEZER'
      '                                 ,:BO_CHEFEDEFAMILIA'
      '                                 ,:SM_GRAUINSTRCHEFEDEFAMILIA)')
    Connection = SODMPrincipal.UNCN
    SQL.Strings = (
      'SELECT DSD.*'
      '  FROM DADOSSOCIODEMOGRAFICOS DSD')
    MasterSource = DTSRPacientes
    MasterFields = 'in_pacientes_id'
    DetailFields = 'in_pacientes_id'
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False'
      'PostgreSQL.UseParamTypes=True')
    Left = 150
    Top = 54
    ParamData = <
      item
        DataType = ftInteger
        Name = 'in_pacientes_id'
        ParamType = ptInput
      end>
    object UNQYDadosSocioDemograficosin_dadossociodemograficos_id: TIntegerField
      FieldName = 'in_dadossociodemograficos_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYDadosSocioDemograficosin_pacientes_id: TIntegerField
      FieldName = 'in_pacientes_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_corraca: TSmallintField
      DisplayLabel = 'Como voc'#234' auto-define a sua cor ou ra'#231'a?'
      FieldName = 'sm_corraca'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_estadocivil: TSmallintField
      DisplayLabel = 'Qual o seu estado civil?'
      FieldName = 'sm_estadocivil'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_graudeinstrucao: TSmallintField
      DisplayLabel = 'Qual seu grau de instru'#231#227'o?'
      FieldName = 'sm_graudeinstrucao'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficosin_cbo_id: TIntegerField
      DisplayLabel = 'Qual sua profiss'#227'o?'
      FieldName = 'in_cbo_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficosbo_aposentado: TBooleanField
      DisplayLabel = 'Qual seu status ocupacional?'
      FieldName = 'bo_aposentado'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_televisor: TSmallintField
      DisplayLabel = 'Quantos televisores em cores?'
      FieldName = 'sm_televisor'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_radio: TSmallintField
      DisplayLabel = 'Quantos r'#225'dios?'
      FieldName = 'sm_radio'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_banheiro: TSmallintField
      DisplayLabel = 'Quantos banheiros?'
      FieldName = 'sm_banheiro'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_automovel: TSmallintField
      DisplayLabel = 'Quantos autom'#243'veis?'
      FieldName = 'sm_automovel'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_mensalista: TSmallintField
      DisplayLabel = 'Quantas empregadas mensalistas?'
      FieldName = 'sm_mensalista'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_maquinalavar: TSmallintField
      DisplayLabel = 'Quantas m'#225'quinas de lavar?'
      FieldName = 'sm_maquinalavar'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_vcrdvd: TSmallintField
      DisplayLabel = 'Quandos videocassetes/DVDs?'
      FieldName = 'sm_vcrdvd'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_geladeira: TSmallintField
      DisplayLabel = 'Quantas geladeiras?'
      FieldName = 'sm_geladeira'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_freezer: TSmallintField
      DisplayLabel = 'Quantos freezeres?'
      FieldName = 'sm_freezer'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficosbo_chefedefamilia: TBooleanField
      DisplayLabel = 'Voc'#234' '#233' o chefe da fam'#237'lia?'
      FieldName = 'bo_chefedefamilia'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYDadosSocioDemograficossm_grauinstrchefedefamilia: TSmallintField
      DisplayLabel = 'Qual o grau de instru'#231#227'o do chefe da fam'#237'lia?'
      FieldName = 'sm_grauinstrchefedefamilia'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object KRVCDadosSocioDemograficos: TKRKValidationChecks
    DataSet = UNQYDadosSocioDemograficos
    TableName = 'DADOSSOCIODEMOGRAFICOS'
    CheckableFields = <
      item
        FieldName = 'in_dadossociodemograficos_id'
        FieldDescription = 'in_dadossociodemograficos_id'
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'in_pacientes_id'
        FieldDescription = 'in_pacientes_id'
        CheckBlank.Active = True
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_corraca'
        FieldDescription = 'Como voc'#234' auto-define a sua cor ou ra'#231'a?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 1 a 5'
        CheckNumberSet.Numbers.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_estadocivil'
        FieldDescription = 'Qual o seu estado civil?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 1 a 4'
        CheckNumberSet.Numbers.Strings = (
          '1'
          '2'
          '3'
          '4')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_graudeinstrucao'
        FieldDescription = 'Qual seu grau de instru'#231#227'o?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 1 a 5'
        CheckNumberSet.Numbers.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'in_cbo_id'
        FieldDescription = 'Qual sua profiss'#227'o?'
        CheckBlank.Active = True
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'bo_aposentado'
        FieldDescription = 'Qual seu status ocupacional?'
        CheckBlank.Active = True
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_televisor'
        FieldDescription = 'Quantos televisores em cores?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 0 a 4'
        CheckNumberSet.Numbers.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_radio'
        FieldDescription = 'Quantos r'#225'dios?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 0 a 4'
        CheckNumberSet.Numbers.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_banheiro'
        FieldDescription = 'Quantos banheiros?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 0 a 4'
        CheckNumberSet.Numbers.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_automovel'
        FieldDescription = 'Quantos autom'#243'veis?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 0 a 4'
        CheckNumberSet.Numbers.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_mensalista'
        FieldDescription = 'Quantas empregadas mensalistas?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 0 a 4'
        CheckNumberSet.Numbers.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_maquinalavar'
        FieldDescription = 'Quantas m'#225'quinas de lavar?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 0 a 4'
        CheckNumberSet.Numbers.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_vcrdvd'
        FieldDescription = 'Quandos videocassetes/DVDs?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 0 a 4'
        CheckNumberSet.Numbers.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_geladeira'
        FieldDescription = 'Quantas geladeiras?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 0 a 4'
        CheckNumberSet.Numbers.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_freezer'
        FieldDescription = 'Quantos freezeres?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 0 a 4'
        CheckNumberSet.Numbers.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'bo_chefedefamilia'
        FieldDescription = 'Voc'#234' '#233' o chefe da fam'#237'lia?'
        CheckBlank.Active = True
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'sm_grauinstrchefedefamilia'
        FieldDescription = 'Qual o grau de instru'#231#227'o do chefe da fam'#237'lia?'
        CheckBlank.Active = True
        CheckNumberSet.Active = True
        CheckNumberSet.CustomValidationMessage = 'Op'#231#245'es v'#225'lidas variam de 1 a 5'
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'profissao'
        FieldDescription = 'profissao'
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'cbo'
        FieldDescription = 'cbo'
        CheckTextSet.FocusOnValidateFailure = False
      end>
    Left = 150
    Top = 102
  end
  object DTSRPacientes: TDataSource
    DataSet = UNQYPacientes
    Left = 30
    Top = 150
  end
end

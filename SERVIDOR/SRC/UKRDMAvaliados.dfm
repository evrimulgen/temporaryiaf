inherited KRDMAvaliados: TKRDMAvaliados
  OldCreateOrder = True
  Height = 201
  Width = 420
  object UNQYAvaliados: TUniQuery
    SQLInsert.Strings = (
      'SELECT IDU_AVALIADOS('#39'I'#39
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
      'SELECT IDU_AVALIADOS('#39'D'#39
      '                    ,:IN_AVALIADOS_ID)')
    SQLUpdate.Strings = (
      'SELECT IDU_AVALIADOS('#39'U'#39
      '                    ,:IN_AVALIADOS_ID'
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
      'SELECT AVA.IN_AVALIADOS_ID'
      '     , AVA.VA_NOME'
      '     , CAST(AVA.EN_GENERO AS VARCHAR(9)) AS EN_GENERO'
      '     , AVA.DA_DATANASCIMENTO'
      '     , AVA.VA_RG'
      
        '     , CAST(AVA.EN_ORGAOEMISSORRG AS VARCHAR(15)) AS EN_ORGAOEMI' +
        'SSORRG'
      '     , CAST(AVA.EN_UFEMISSAORG AS CHAR(2)) AS EN_UFEMISSAORG'
      
        '     , CAST(AVA.EN_TIPOLOGRADOURO AS VARCHAR(15)) AS EN_TIPOLOGR' +
        'ADOURO'
      '     , AVA.VA_NOMELOGRADOURO'
      '     , AVA.VA_IDLOGRADOURO'
      '     , AVA.VA_COMPLEMENTOLOGRADOURO'
      '     , AVA.VA_BAIRROLOGRADOURO'
      '     , AVA.VA_CIDADE'
      '     , CAST(AVA.EN_UF AS CHAR(2)) AS EN_UF'
      '     , AVA.CH_FONERESIDENCIAL'
      '     , AVA.CH_FONECELULAR'
      '     , AVA.TX_OBSERVACOES'
      '  FROM AVALIADOS AVA'
      
        ' WHERE ((:IN_AVALIADOS_ID IS NULL) OR AVA.IN_AVALIADOS_ID = :IN_' +
        'AVALIADOS_ID)'
      
        '   AND ((:VA_NOME IS NULL) OR UPPER(AVA.VA_NOME) LIKE UPPER(:VA_' +
        'NOME))'
      
        '   AND ((:EN_GENERO IS NULL) OR CAST(AVA.EN_GENERO AS VARCHAR) =' +
        ' :EN_GENERO)'
      
        '   AND ((:DA_DATANASCIMENTO IS NULL) OR AVA.DA_DATANASCIMENTO = ' +
        ':DA_DATANASCIMENTO)'
      '   AND ((:VA_RG IS NULL) OR AVA.VA_RG = :VA_RG)'
      
        '   AND ((:EN_ORGAOEMISSORRG IS NULL) OR CAST(AVA.EN_ORGAOEMISSOR' +
        'RG AS VARCHAR) = :EN_ORGAOEMISSORRG)'
      
        '   AND ((:EN_UFEMISSAORG IS NULL) OR CAST(AVA.EN_UFEMISSAORG AS ' +
        'VARCHAR) = :EN_UFEMISSAORG)'
      
        '   AND ((:EN_TIPOLOGRADOURO IS NULL) OR CAST(AVA.EN_TIPOLOGRADOU' +
        'RO AS VARCHAR) = :EN_TIPOLOGRADOURO)'
      
        '   AND ((:VA_NOMELOGRADOURO IS NULL) OR UPPER(AVA.VA_NOMELOGRADO' +
        'URO) LIKE UPPER(:VA_NOMELOGRADOURO))'
      
        '   AND ((:VA_IDLOGRADOURO IS NULL) OR UPPER(AVA.VA_IDLOGRADOURO)' +
        ' LIKE UPPER(:VA_IDLOGRADOURO))'
      
        '   AND ((:VA_COMPLEMENTOLOGRADOURO IS NULL) OR UPPER(AVA.VA_COMP' +
        'LEMENTOLOGRADOURO) LIKE UPPER(:VA_COMPLEMENTOLOGRADOURO))'
      
        '   AND ((:VA_BAIRROLOGRADOURO IS NULL) OR UPPER(AVA.VA_BAIRROLOG' +
        'RADOURO) LIKE UPPER(:VA_BAIRROLOGRADOURO))'
      
        '   AND ((:VA_CIDADE IS NULL) OR UPPER(AVA.VA_CIDADE) LIKE UPPER(' +
        ':VA_CIDADE))'
      '   AND ((:EN_UF IS NULL) OR CAST(AVA.EN_UF AS VARCHAR) = :EN_UF)'
      
        '   AND ((:CH_FONERESIDENCIAL IS NULL) OR AVA.CH_FONERESIDENCIAL ' +
        '= :CH_FONERESIDENCIAL)'
      
        '   AND ((:CH_FONECELULAR IS NULL) OR AVA.CH_FONECELULAR = :CH_FO' +
        'NECELULAR)'
      
        '   AND ((:TX_OBSERVACOES IS NULL) OR UPPER(AVA.TX_OBSERVACOES) L' +
        'IKE UPPER(:TX_OBSERVACOES))')
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False'
      'PostgreSQL.UseParamTypes=True')
    Left = 30
    Top = 54
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_AVALIADOS_ID'
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
    object UNQYAvaliadosin_avaliados_id: TIntegerField
      FieldName = 'in_avaliados_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYAvaliadosva_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 128
    end
    object UNQYAvaliadosen_genero: TWideStringField
      DisplayLabel = 'G'#234'nero'
      DisplayWidth = 9
      FieldName = 'en_genero'
      Required = True
      Size = 9
    end
    object UNQYAvaliadosda_datanascimento: TDateField
      DisplayLabel = 'Data de nascimento'
      FieldName = 'da_datanascimento'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYAvaliadosva_rg: TWideStringField
      DisplayLabel = 'RG'
      FieldName = 'va_rg'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object UNQYAvaliadosen_orgaoemissorrg: TWideStringField
      DisplayLabel = #211'rg'#227'o emissor do RG'
      DisplayWidth = 14
      FieldName = 'en_orgaoemissorrg'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 14
    end
    object UNQYAvaliadosen_ufemissaorg: TWideStringField
      DisplayLabel = 'UF de emiss'#227'o do RG'
      DisplayWidth = 2
      FieldName = 'en_ufemissaorg'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
    object UNQYAvaliadosen_tipologradouro: TWideStringField
      DisplayLabel = 'Tipo de logradouro'
      DisplayWidth = 15
      FieldName = 'en_tipologradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object UNQYAvaliadosva_nomelogradouro: TWideStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'va_nomelogradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 128
    end
    object UNQYAvaliadosva_idlogradouro: TWideStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'va_idlogradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object UNQYAvaliadosva_complementologradouro: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'va_complementologradouro'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYAvaliadosva_bairrologradouro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'va_bairrologradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYAvaliadosva_cidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'va_cidade'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object UNQYAvaliadosen_uf: TWideStringField
      DisplayLabel = 'UF'
      DisplayWidth = 2
      FieldName = 'en_uf'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
    object UNQYAvaliadosch_foneresidencial: TWideStringField
      DisplayLabel = 'Telefone residencial'
      FieldName = 'ch_foneresidencial'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object UNQYAvaliadosch_fonecelular: TWideStringField
      DisplayLabel = 'Telefone celular'
      FieldName = 'ch_fonecelular'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object UNQYAvaliadostx_observacoes: TWideMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'tx_observacoes'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
    end
  end
  object KRVCAvaliados: TKRKValidationChecks
    DataSet = UNQYAvaliados
    TableName = 'AVALIADOS'
    CheckableFields = <
      item
        FieldName = 'in_avaliados_id'
        FieldDescription = 'in_avaliados_id'
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
      '                                 ,:IN_AVALIADOS_ID'
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
      '                                 ,:IN_AVALIADOS_ID'
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
      '     , CBO.CH_CODIGO AS CBO'
      '     , CBO.VA_TITULO AS PROFISSAO'
      '  FROM DADOSSOCIODEMOGRAFICOS DSD'
      '  JOIN CBO CBO USING (IN_CBO_ID)')
    MasterSource = DTSRAvaliados
    MasterFields = 'in_avaliados_id'
    DetailFields = 'in_avaliados_id'
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False'
      'PostgreSQL.UseParamTypes=True')
    Left = 150
    Top = 54
    ParamData = <
      item
        DataType = ftInteger
        Name = 'in_avaliados_id'
        ParamType = ptInput
      end>
    object UNQYDadosSocioDemograficosin_dadossociodemograficos_id: TIntegerField
      FieldName = 'in_dadossociodemograficos_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYDadosSocioDemograficosin_avaliados_id: TIntegerField
      FieldName = 'in_avaliados_id'
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
    end
    object UNQYDadosSocioDemograficoscbo: TWideStringField
      FieldName = 'cbo'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object UNQYDadosSocioDemograficosprofissao: TWideStringField
      FieldName = 'profissao'
      ProviderFlags = []
      ReadOnly = True
      Size = 128
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
        FieldName = 'in_avaliados_id'
        FieldDescription = 'in_avaliados_id'
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
        CheckNumberSet.Numbers.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'cbo'
        FieldDescription = 'cbo'
        CheckTextSet.FocusOnValidateFailure = False
      end
      item
        FieldName = 'profissao'
        FieldDescription = 'profissao'
        CheckTextSet.FocusOnValidateFailure = False
      end>
    Left = 150
    Top = 102
  end
  object DTSRAvaliados: TDataSource
    DataSet = UNQYAvaliados
    Left = 30
    Top = 150
  end
  object UNQYSinaisESintomas: TUniQuery
    SQLInsert.Strings = (
      'SELECT IDU_SINAISESINTOMAS('#39'I'#39
      '                          ,NULL'
      '                          ,:IN_AVALIADOS_ID'
      '                          ,:BO_DORPEIPESMANBRA'
      '                          ,:BO_BATCARIRRRAPPALREP'
      '                          ,:BO_DIFRESDEISON'
      '                          ,:BO_GRAPERPESSEMMOTCON'
      '                          ,:BO_INFACOFEB'
      '                          ,:BO_FEBDESBATCARACE'
      '                          ,:BO_DORPERCAM'
      '                          ,:BO_HERABDINCO'
      '                          ,:BO_LESPESTORNAOSAR'
      '                          ,:BO_TORINC'
      '                          ,:BO_QUERECDEIDIFCAMDORPER'
      '                          ,:BO_PROALGCIROLH'
      '                          ,:BO_JUNINC'
      '                          ,:BO_CANINCFALARATIHAB'
      '                          ,:BO_DIFRESREP'
      '                          ,:BO_TONDES'
      '                          ,:BO_ALGCIRMEN90DIA);')
    SQLDelete.Strings = (
      'SELECT IDU_SINAISESINTOMAS('#39'D'#39
      '                          ,:IN_SINAISESINTOMAS_ID);')
    SQLUpdate.Strings = (
      'SELECT IDU_SINAISESINTOMAS('#39'U'#39
      '                          ,:IN_SINAISESINTOMAS_ID'
      '                          ,:IN_AVALIADOS_ID'
      '                          ,:BO_DORPEIPESMANBRA'
      '                          ,:BO_BATCARIRRRAPPALREP'
      '                          ,:BO_DIFRESDEISON'
      '                          ,:BO_GRAPERPESSEMMOTCON'
      '                          ,:BO_INFACOFEB'
      '                          ,:BO_FEBDESBATCARACE'
      '                          ,:BO_DORPERCAM'
      '                          ,:BO_HERABDINCO'
      '                          ,:BO_LESPESTORNAOSAR'
      '                          ,:BO_TORINC'
      '                          ,:BO_QUERECDEIDIFCAMDORPER'
      '                          ,:BO_PROALGCIROLH'
      '                          ,:BO_JUNINC'
      '                          ,:BO_CANINCFALARATIHAB'
      '                          ,:BO_DIFRESREP'
      '                          ,:BO_TONDES'
      '                          ,:BO_ALGCIRMEN90DIA);')
    Connection = SODMPrincipal.UNCN
    SQL.Strings = (
      'SELECT SES.* '
      '  FROM SINAISESINTOMAS SES')
    MasterSource = DTSRAvaliados
    MasterFields = 'in_avaliados_id'
    DetailFields = 'in_avaliados_id'
    Left = 282
    Top = 54
    ParamData = <
      item
        DataType = ftInteger
        Name = 'in_avaliados_id'
        ParamType = ptInput
      end>
    object UNQYSinaisESintomasin_sinaisesintomas_id: TIntegerField
      FieldName = 'in_sinaisesintomas_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object UNQYSinaisESintomasin_avaliados_id: TIntegerField
      FieldName = 'in_avaliados_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object UNQYSinaisESintomasbo_dorpeipesmanbra: TBooleanField
      FieldName = 'bo_dorpeipesmanbra'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_batcarirrrappalrep: TBooleanField
      FieldName = 'bo_batcarirrrappalrep'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_difresdeison: TBooleanField
      FieldName = 'bo_difresdeison'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_graperpessemmotcon: TBooleanField
      FieldName = 'bo_graperpessemmotcon'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_infacofeb: TBooleanField
      FieldName = 'bo_infacofeb'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_febdesbatcarace: TBooleanField
      FieldName = 'bo_febdesbatcarace'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_dorpercam: TBooleanField
      FieldName = 'bo_dorpercam'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_herabdinco: TBooleanField
      FieldName = 'bo_herabdinco'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_lespestornaosar: TBooleanField
      FieldName = 'bo_lespestornaosar'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_torinc: TBooleanField
      FieldName = 'bo_torinc'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_querecdeidifcamdorper: TBooleanField
      FieldName = 'bo_querecdeidifcamdorper'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_proalgcirolh: TBooleanField
      FieldName = 'bo_proalgcirolh'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_juninc: TBooleanField
      FieldName = 'bo_juninc'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_canincfalaratihab: TBooleanField
      FieldName = 'bo_canincfalaratihab'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_difresrep: TBooleanField
      FieldName = 'bo_difresrep'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_tondes: TBooleanField
      FieldName = 'bo_tondes'
      ProviderFlags = [pfInUpdate]
    end
    object UNQYSinaisESintomasbo_algcirmen90dia: TBooleanField
      FieldName = 'bo_algcirmen90dia'
      ProviderFlags = [pfInUpdate]
    end
  end
end

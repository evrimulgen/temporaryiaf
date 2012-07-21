inherited KRDMAvaliadosGerenciar: TKRDMAvaliadosGerenciar
  OldCreateOrder = True
  Properties.OpenAllDataSets = True
  MyFormClass = 'TKRFMAvaliadosGerenciar'
  Height = 358
  Width = 246
  inherited ACLI: TActionList
    object ACTNSelecionarCBO: TAction
      Caption = '...'
      OnExecute = ACTNSelecionarCBOExecute
    end
  end
  object DTSRAvaliados: TDataSource
    DataSet = CLDSAvaliados
    OnDataChange = DTSRAvaliadosDataChange
    Left = 30
    Top = 108
  end
  object CLDSAvaliados: TClientDataSet
    Active = True
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    Params = <
      item
        DataType = ftInteger
        Name = 'IN_AVALIADOS_ID'
        ParamType = ptInput
        Value = -1
      end
      item
        DataType = ftString
        Name = 'VA_NOME'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'EN_GENERO'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftDateTime
        Name = 'DA_DATANASCIMENTO'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_RG'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'EN_ORGAOEMISSORRG'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'EN_UFEMISSAORG'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'EN_TIPOLOGRADOURO'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_NOMELOGRADOURO'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_IDLOGRADOURO'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_COMPLEMENTOLOGRADOURO'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_BAIRROLOGRADOURO'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_CIDADE'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'EN_UF'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'CH_FONERESIDENCIAL'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'CH_FONECELULAR'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftMemo
        Name = 'TX_OBSERVACOES'
        ParamType = ptInput
        Value = Null
      end>
    ProviderName = 'DSPRAvaliados'
    AfterRefresh = CLDSAvaliadosAfterRefresh
    OnCalcFields = CLDSAvaliadosCalcFields
    Left = 30
    Top = 60
    object CLDSAvaliadosin_avaliados_id: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'in_avaliados_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object CLDSAvaliadosva_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 128
    end
    object CLDSAvaliadosen_genero: TWideStringField
      DisplayLabel = 'G'#234'nero'
      DisplayWidth = 9
      FieldName = 'en_genero'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 9
    end
    object CLDSAvaliadosda_datanascimento: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data de nascimento'
      FieldName = 'da_datanascimento'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSAvaliadosva_rg: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'RG'
      FieldName = 'va_rg'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object CLDSAvaliadosen_orgaoemissorrg: TWideStringField
      DisplayLabel = #211'rg'#227'o emissor do RG'
      DisplayWidth = 14
      FieldName = 'en_orgaoemissorrg'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 14
    end
    object CLDSAvaliadosen_ufemissaorg: TWideStringField
      DisplayLabel = 'UF de emiss'#227'o do RG'
      DisplayWidth = 2
      FieldName = 'en_ufemissaorg'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
    object CLDSAvaliadosen_tipologradouro: TWideStringField
      DisplayLabel = 'Tipo de logradouro'
      DisplayWidth = 15
      FieldName = 'en_tipologradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object CLDSAvaliadosva_nomelogradouro: TWideStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'va_nomelogradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 128
    end
    object CLDSAvaliadosva_idlogradouro: TWideStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'va_idlogradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object CLDSAvaliadosva_complementologradouro: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'va_complementologradouro'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSAvaliadosva_bairrologradouro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'va_bairrologradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSAvaliadosva_cidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'va_cidade'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object CLDSAvaliadosen_uf: TWideStringField
      DisplayLabel = 'UF'
      DisplayWidth = 2
      FieldName = 'en_uf'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
    object CLDSAvaliadosch_foneresidencial: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone residencial'
      FieldName = 'ch_foneresidencial'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object CLDSAvaliadosch_fonecelular: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone celular'
      FieldName = 'ch_fonecelular'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object CLDSAvaliadostx_observacoes: TWideMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'tx_observacoes'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
    end
    object CLDSAvaliadosUNQYDadosSocioDemograficos: TDataSetField
      FieldName = 'UNQYDadosSocioDemograficos'
      ProviderFlags = []
    end
    object CLDSAvaliadosUNQYSinaisESintomas: TDataSetField
      FieldName = 'UNQYSinaisESintomas'
      ProviderFlags = []
    end
    object CLDSAvaliadosUNQYParametrosFisiologicos: TDataSetField
      FieldName = 'UNQYParametrosFisiologicos'
      ProviderFlags = []
    end
    object CLDSAvaliadosfoneresidencial: TStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone residencial'
      FieldKind = fkCalculated
      FieldName = 'foneresidencial'
      ProviderFlags = []
      Size = 14
      Calculated = True
    end
    object CLDSAvaliadosfonecelular: TStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone celular'
      FieldKind = fkCalculated
      FieldName = 'fonecelular'
      Size = 14
      Calculated = True
    end
  end
  object CLDSDadosSocioDemograficos: TClientDataSet
    Active = True
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    DataSetField = CLDSAvaliadosUNQYDadosSocioDemograficos
    Params = <>
    Left = 144
    Top = 60
    object CLDSDadosSocioDemograficosin_dadossociodemograficos_id: TIntegerField
      FieldName = 'in_dadossociodemograficos_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object CLDSDadosSocioDemograficosin_avaliados_id: TIntegerField
      FieldName = 'in_avaliados_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_corraca: TSmallintField
      DisplayLabel = 'Como voc'#234' auto-define a sua cor ou ra'#231'a?'
      FieldName = 'sm_corraca'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_estadocivil: TSmallintField
      DisplayLabel = 'Qual o seu estado civil?'
      FieldName = 'sm_estadocivil'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_graudeinstrucao: TSmallintField
      DisplayLabel = 'Qual seu grau de instru'#231#227'o?'
      FieldName = 'sm_graudeinstrucao'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficosin_cbo_id: TIntegerField
      DisplayLabel = 'Qual sua profiss'#227'o?'
      FieldName = 'in_cbo_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficosbo_aposentado: TBooleanField
      DisplayLabel = 'Qual seu status ocupacional?'
      FieldName = 'bo_aposentado'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_televisor: TSmallintField
      DisplayLabel = 'Quantos televisores em cores?'
      FieldName = 'sm_televisor'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_radio: TSmallintField
      DisplayLabel = 'Quantos r'#225'dios?'
      FieldName = 'sm_radio'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_banheiro: TSmallintField
      DisplayLabel = 'Quantos banheiros?'
      FieldName = 'sm_banheiro'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_automovel: TSmallintField
      DisplayLabel = 'Quantos autom'#243'veis?'
      FieldName = 'sm_automovel'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_mensalista: TSmallintField
      DisplayLabel = 'Quantas empregadas mensalistas?'
      FieldName = 'sm_mensalista'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_maquinalavar: TSmallintField
      DisplayLabel = 'Quantas m'#225'quinas de lavar?'
      FieldName = 'sm_maquinalavar'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_vcrdvd: TSmallintField
      DisplayLabel = 'Quandos videocassetes/DVDs?'
      FieldName = 'sm_vcrdvd'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_geladeira: TSmallintField
      DisplayLabel = 'Quantas geladeiras?'
      FieldName = 'sm_geladeira'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_freezer: TSmallintField
      DisplayLabel = 'Quantos freezeres?'
      FieldName = 'sm_freezer'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficosbo_chefedefamilia: TBooleanField
      DisplayLabel = 'Voc'#234' '#233' o chefe da fam'#237'lia?'
      FieldName = 'bo_chefedefamilia'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_grauinstrchefedefamilia: TSmallintField
      DisplayLabel = 'Qual o grau de instru'#231#227'o do chefe da fam'#237'lia?'
      FieldName = 'sm_grauinstrchefedefamilia'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSDadosSocioDemograficoscbo: TWideStringField
      Alignment = taCenter
      FieldName = 'cbo'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = CLDSDadosSocioDemograficoscboGetText
      FixedChar = True
      Size = 6
    end
    object CLDSDadosSocioDemograficosprofissao: TWideStringField
      FieldName = 'profissao'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = CLDSDadosSocioDemograficosprofissaoGetText
      Size = 128
    end
    object CLDSDadosSocioDemograficosic_cbo: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ic_cbo'
      ProviderFlags = []
      Size = 6
    end
    object CLDSDadosSocioDemograficosic_profissao: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ic_profissao'
      ProviderFlags = []
      Size = 128
    end
  end
  object DTSRDadosSocioDemograficos: TDataSource
    DataSet = CLDSDadosSocioDemograficos
    Left = 144
    Top = 108
  end
  object CLDSSinaisESintomas: TClientDataSet
    Active = True
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    DataSetField = CLDSAvaliadosUNQYSinaisESintomas
    Params = <>
    Left = 144
    Top = 156
    object CLDSSinaisESintomasin_sinaisesintomas_id: TIntegerField
      FieldName = 'in_sinaisesintomas_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object CLDSSinaisESintomasin_avaliados_id: TIntegerField
      FieldName = 'in_avaliados_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSSinaisESintomasbo_dorpeipesmanbra: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_dorpeipesmanbra'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_batcarirrrappalrep: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_batcarirrrappalrep'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_difresdeison: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_difresdeison'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_graperpessemmotcon: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_graperpessemmotcon'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_infacofeb: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_infacofeb'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_febdesbatcarace: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_febdesbatcarace'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_dorpercam: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_dorpercam'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_herabdinco: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_herabdinco'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_lespestornaosar: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_lespestornaosar'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_torinc: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_torinc'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_querecdeidifcamdorper: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_querecdeidifcamdorper'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_proalgcirolh: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_proalgcirolh'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_juninc: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_juninc'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_canincfalaratihab: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_canincfalaratihab'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_difresrep: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_difresrep'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_tondes: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_tondes'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSSinaisESintomasbo_algcirmen90dia: TBooleanField
      DefaultExpression = #39'False'#39
      FieldName = 'bo_algcirmen90dia'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DTSRSinaisESintomas: TDataSource
    DataSet = CLDSSinaisESintomas
    Left = 144
    Top = 204
  end
  object CLDSParametrosFisiologicos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    DataSetField = CLDSAvaliadosUNQYParametrosFisiologicos
    Params = <>
    Left = 144
    Top = 252
    object CLDSParametrosFisiologicosin_parametrosfisiologicos_id: TIntegerField
      FieldName = 'in_parametrosfisiologicos_id'
    end
    object CLDSParametrosFisiologicosin_avaliados_id: TIntegerField
      FieldName = 'in_avaliados_id'
      Required = True
    end
    object CLDSParametrosFisiologicosts_momafe: TDateTimeField
      Alignment = taCenter
      FieldName = 'ts_momafe'
    end
    object CLDSParametrosFisiologicossm_frepul: TSmallintField
      Alignment = taCenter
      FieldName = 'sm_frepul'
      Required = True
    end
    object CLDSParametrosFisiologicosbo_pulrit: TBooleanField
      Alignment = taCenter
      FieldName = 'bo_pulrit'
      Required = True
    end
    object CLDSParametrosFisiologicossm_presis: TSmallintField
      Alignment = taCenter
      FieldName = 'sm_presis'
      Required = True
    end
    object CLDSParametrosFisiologicossm_predia: TSmallintField
      Alignment = taCenter
      FieldName = 'sm_predia'
      Required = True
    end
  end
  object DTSRParametrosFisiologicos: TDataSource
    DataSet = CLDSParametrosFisiologicos
    Left = 144
    Top = 300
  end
end

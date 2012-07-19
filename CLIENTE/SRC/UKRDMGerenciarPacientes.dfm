inherited KRDMGerenciarPacientes: TKRDMGerenciarPacientes
  OldCreateOrder = True
  Properties.OpenAllDataSets = True
  MyFormClass = 'TKRFMGerenciarPacientes'
  Height = 162
  Width = 252
  inherited ACLI: TActionList
    object ACTNSelecionarCBO: TAction
      Caption = '...'
      OnExecute = ACTNSelecionarCBOExecute
    end
  end
  object DTSRPacientes: TDataSource
    DataSet = CLDSPacientes
    OnDataChange = DTSRPacientesDataChange
    Left = 30
    Top = 108
  end
  object CLDSPacientes: TClientDataSet
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    Params = <
      item
        DataType = ftInteger
        Name = 'IN_PACIENTES_ID'
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
    ProviderName = 'DSPRPacientes'
    AfterRefresh = CLDSPacientesAfterRefresh
    OnCalcFields = CLDSPacientesCalcFields
    Left = 30
    Top = 60
    object CLDSPacientesin_pacientes_id: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'in_pacientes_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object CLDSPacientesva_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 128
    end
    object CLDSPacientesen_genero: TWideStringField
      DisplayLabel = 'G'#234'nero'
      DisplayWidth = 9
      FieldName = 'en_genero'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSPacientesda_datanascimento: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data de nascimento'
      FieldName = 'da_datanascimento'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSPacientesva_rg: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'RG'
      FieldName = 'va_rg'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object CLDSPacientesen_orgaoemissorrg: TWideStringField
      DisplayLabel = #211'rg'#227'o emissor do RG'
      DisplayWidth = 14
      FieldName = 'en_orgaoemissorrg'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSPacientesen_ufemissaorg: TWideStringField
      DisplayLabel = 'UF de emiss'#227'o do RG'
      DisplayWidth = 2
      FieldName = 'en_ufemissaorg'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSPacientesen_tipologradouro: TWideStringField
      DisplayLabel = 'Tipo de logradouro'
      DisplayWidth = 15
      FieldName = 'en_tipologradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSPacientesva_nomelogradouro: TWideStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'va_nomelogradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 128
    end
    object CLDSPacientesva_idlogradouro: TWideStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'va_idlogradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object CLDSPacientesva_complementologradouro: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'va_complementologradouro'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSPacientesva_bairrologradouro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'va_bairrologradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSPacientesva_cidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'va_cidade'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object CLDSPacientesen_uf: TWideStringField
      DisplayLabel = 'UF'
      DisplayWidth = 2
      FieldName = 'en_uf'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSPacientesch_foneresidencial: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone residencial'
      FieldName = 'ch_foneresidencial'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object CLDSPacientesch_fonecelular: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone celular'
      FieldName = 'ch_fonecelular'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object CLDSPacientestx_observacoes: TWideMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'tx_observacoes'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
    end
    object CLDSPacientesUNQYDadosSocioDemograficos: TDataSetField
      FieldName = 'UNQYDadosSocioDemograficos'
    end
    object CLDSPacientesfoneresidencial: TStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone residencial'
      FieldKind = fkCalculated
      FieldName = 'foneresidencial'
      Size = 14
      Calculated = True
    end
    object CLDSPacientesfonecelular: TStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone celular'
      FieldKind = fkCalculated
      FieldName = 'fonecelular'
      Size = 14
      Calculated = True
    end
  end
  object CLDSDadosSocioDemograficos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    DataSetField = CLDSPacientesUNQYDadosSocioDemograficos
    Params = <>
    Left = 150
    Top = 60
    object CLDSDadosSocioDemograficosin_dadossociodemograficos_id: TIntegerField
      FieldName = 'in_dadossociodemograficos_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object CLDSDadosSocioDemograficosin_pacientes_id: TIntegerField
      FieldName = 'in_pacientes_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_corraca: TSmallintField
      FieldName = 'sm_corraca'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_estadocivil: TSmallintField
      FieldName = 'sm_estadocivil'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_graudeinstrucao: TSmallintField
      FieldName = 'sm_graudeinstrucao'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficosin_cbo_id: TIntegerField
      FieldName = 'in_cbo_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficosbo_aposentado: TBooleanField
      FieldName = 'bo_aposentado'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_televisor: TSmallintField
      FieldName = 'sm_televisor'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_radio: TSmallintField
      FieldName = 'sm_radio'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_banheiro: TSmallintField
      FieldName = 'sm_banheiro'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_automovel: TSmallintField
      FieldName = 'sm_automovel'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_mensalista: TSmallintField
      FieldName = 'sm_mensalista'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_maquinalavar: TSmallintField
      FieldName = 'sm_maquinalavar'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_vcrdvd: TSmallintField
      FieldName = 'sm_vcrdvd'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_geladeira: TSmallintField
      FieldName = 'sm_geladeira'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_freezer: TSmallintField
      FieldName = 'sm_freezer'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficosbo_chefedefamilia: TBooleanField
      FieldName = 'bo_chefedefamilia'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSDadosSocioDemograficossm_grauinstrchefedefamilia: TSmallintField
      FieldName = 'sm_grauinstrchefedefamilia'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DTSRDadosSocioDemograficos: TDataSource
    DataSet = CLDSDadosSocioDemograficos
    Left = 150
    Top = 108
  end
end

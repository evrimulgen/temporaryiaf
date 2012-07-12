inherited KRDMGerenciarPacientes: TKRDMGerenciarPacientes
  OldCreateOrder = True
  Properties.OpenAllDataSets = True
  MyFormClass = 'TKRFMGerenciarPacientes'
  Height = 162
  object DTSRPacientes: TDataSource
    DataSet = CLDSPacientes
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
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftDateTime
        Name = 'DA_DATANASCIMENTO'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_RG'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftString
        Name = 'EN_ORGAOEMISSORRG'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftString
        Name = 'EN_UFEMISSAORG'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftString
        Name = 'EN_TIPOLOGRADOURO'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_NOMELOGRADOURO'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_IDLOGRADOURO'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_COMPLEMENTOLOGRADOURO'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_BAIRROLOGRADOURO'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_CIDADE'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftString
        Name = 'EN_UF'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftString
        Name = 'CH_FONERESIDENCIAL'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftString
        Name = 'CH_FONECELULAR'
        ParamType = ptUnknown
        Value = Null
      end
      item
        DataType = ftMemo
        Name = 'TX_OBSERVACOES'
        ParamType = ptUnknown
        Value = Null
      end>
    ProviderName = 'DSPRPacientes'
    Left = 30
    Top = 60
    object CLDSPacientesin_pacientes_id: TIntegerField
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
    object CLDSPacientesen_genero: TWideMemoField
      FieldName = 'en_genero'
      Required = True
      BlobType = ftWideMemo
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
    object CLDSPacientesen_orgaoemissorrg: TWideMemoField
      DisplayLabel = #211'rg'#227'o emissor do RG'
      FieldName = 'en_orgaoemissorrg'
      ProviderFlags = [pfInUpdate]
      Required = True
      BlobType = ftWideMemo
    end
    object CLDSPacientesen_ufemissaorg: TWideMemoField
      DisplayLabel = 'UF de emiss'#227'o do RG'
      FieldName = 'en_ufemissaorg'
      ProviderFlags = [pfInUpdate]
      Required = True
      BlobType = ftWideMemo
    end
    object CLDSPacientesen_tipologradouro: TWideMemoField
      DisplayLabel = 'Tipo de logradouro'
      FieldName = 'en_tipologradouro'
      ProviderFlags = [pfInUpdate]
      Required = True
      BlobType = ftWideMemo
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
    object CLDSPacientesen_uf: TWideMemoField
      DisplayLabel = 'UF'
      FieldName = 'en_uf'
      ProviderFlags = [pfInUpdate]
      Required = True
      BlobType = ftWideMemo
    end
    object CLDSPacientesch_foneresidencial: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone residencial'
      FieldName = 'ch_foneresidencial'
      ProviderFlags = [pfInUpdate]
      OnGetText = CLDSPacientesch_foneresidencialGetText
      FixedChar = True
      Size = 10
    end
    object CLDSPacientesch_fonecelular: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone celular'
      FieldName = 'ch_fonecelular'
      ProviderFlags = [pfInUpdate]
      OnGetText = CLDSPacientesch_fonecelularGetText
      FixedChar = True
      Size = 10
    end
    object CLDSPacientestx_observacoes: TWideMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'tx_observacoes'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
    end
  end
end

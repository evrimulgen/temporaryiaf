object KRDMSegurancaEPermissoes: TKRDMSegurancaEPermissoes
  OldCreateOrder = False
  SQLs = <>
  MyFormClass = 'TKRFMSegurancaEPermissoes'
  Height = 150
  Width = 215
  object CLDSUsuarios: TClientDataSet
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    Params = <>
    ProviderName = 'DSPRUsuarios'
    Left = 24
    Top = 6
  end
  object DTSRUsuarios: TDataSource
    DataSet = CLDSUsuarios
    Left = 24
    Top = 54
  end
end

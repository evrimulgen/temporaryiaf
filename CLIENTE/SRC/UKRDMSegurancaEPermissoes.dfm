inherited KRDMSegurancaEPermissoes: TKRDMSegurancaEPermissoes
  OldCreateOrder = True
  Properties.OpenAllDataSets = True
  MyFormClass = 'TKRFMSegurancaEPermissoes'
  Height = 372
  Width = 557
  inherited KRBH: TKRKBalloonHint
    TipAlignment = taBottomLeft
    Options = [kbhoActivateOnShow, kbhoSetFocusToAssociatedWinContronOnDeactivate, kbhoHideOnDeactivate, kbhoHideWithEnter, kbhoHideWithEsc, kbhoSelectAllOnFocus]
  end
  object CLDSConsUsuarios: TClientDataSet
    Active = True
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    Params = <
      item
        DataType = ftSmallint
        Name = 'SM_USUARIOS_ID'
        ParamType = ptInput
        Value = -1
      end
      item
        DataType = ftString
        Name = 'VA_NOME'
        ParamType = ptInput
        Size = 64
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_LOGIN'
        ParamType = ptInput
        Size = 16
        Value = Null
      end
      item
        DataType = ftString
        Name = 'CH_SENHA'
        ParamType = ptInput
        Size = 128
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_EMAIL'
        ParamType = ptInput
        Size = 64
        Value = Null
      end>
    ProviderName = 'DSPRUsuarios'
    Left = 36
    Top = 54
    object CLDSConsUsuariossm_usuarios_id: TSmallintField
      DisplayLabel = 'ID'
      FieldName = 'sm_usuarios_id'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object CLDSConsUsuariosva_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 64
    end
    object CLDSConsUsuariosva_login: TWideStringField
      DisplayLabel = 'Login'
      FieldName = 'va_login'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 16
    end
    object CLDSConsUsuariosch_senha: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'ch_senha'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 128
    end
    object CLDSConsUsuariosva_email: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'va_email'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 64
    end
    object CLDSConsUsuariosZQRYPermissoesDosUsuarios: TDataSetField
      FieldName = 'ZQRYPermissoesDosUsuarios'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
  end
  object DTSRConsUsuarios: TDataSource
    DataSet = CLDSConsUsuarios
    Left = 36
    Top = 102
  end
  object CLDSConsEntidadesDoSistema: TClientDataSet
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    Params = <
      item
        DataType = ftInteger
        Name = 'IN_ENTIDADESDOSISTEMA_ID'
        ParamType = ptInput
        Value = -1
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
    ProviderName = 'DSPREntidadesDoSistema'
    ReadOnly = True
    Left = 306
    Top = 54
    object CLDSConsEntidadesDoSistemain_entidadesdosistema_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'in_entidadesdosistema_id'
      ReadOnly = True
    end
    object CLDSConsEntidadesDoSistemava_nome: TWideStringField
      DisplayLabel = 'Entidade'
      FieldName = 'va_nome'
      ReadOnly = True
      Size = 128
    end
    object CLDSConsEntidadesDoSistemasm_tipo: TSmallintField
      DisplayLabel = 'Tipo'
      FieldName = 'sm_tipo'
      ReadOnly = True
      OnGetText = CLDSConsEntidadesDoSistemasm_tipoGetText
    end
  end
  object DTSRConsEntidadesDoSistema: TDataSource
    DataSet = CLDSConsEntidadesDoSistema
    Left = 306
    Top = 102
  end
  object CLDSUsuarios: TClientDataSet
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    Params = <
      item
        DataType = ftSmallint
        Name = 'SM_USUARIOS_ID'
        ParamType = ptInput
        Value = -1
      end
      item
        DataType = ftString
        Name = 'VA_NOME'
        ParamType = ptInput
        Size = 64
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_LOGIN'
        ParamType = ptInput
        Size = 16
        Value = Null
      end
      item
        DataType = ftString
        Name = 'CH_SENHA'
        ParamType = ptInput
        Size = 128
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_EMAIL'
        ParamType = ptInput
        Size = 64
        Value = Null
      end>
    ProviderName = 'DSPRUsuarios'
    AfterRefresh = CLDSUsuariosAfterRefresh
    OnCalcFields = CLDSUsuariosCalcFields
    Left = 36
    Top = 150
    object CLDSUsuariossm_usuarios_id: TSmallintField
      DisplayLabel = 'ID'
      FieldName = 'sm_usuarios_id'
      ProviderFlags = [pfInKey]
    end
    object CLDSUsuariosva_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Size = 64
    end
    object CLDSUsuariosva_login: TWideStringField
      DisplayLabel = 'Login'
      FieldName = 'va_login'
      ProviderFlags = [pfInUpdate]
      Size = 16
    end
    object CLDSUsuariosch_senha: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'ch_senha'
      ProviderFlags = [pfInUpdate]
      OnGetText = CLDSUsuariosch_senhaGetText
      Size = 128
    end
    object CLDSUsuariosva_email: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'va_email'
      ProviderFlags = [pfInUpdate]
      Size = 64
    end
    object CLDSUsuariosnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldKind = fkCalculated
      FieldName = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 64
      Calculated = True
    end
    object CLDSUsuarioslogin: TWideStringField
      DisplayLabel = 'Login'
      FieldKind = fkCalculated
      FieldName = 'login'
      ProviderFlags = []
      ReadOnly = True
      Size = 16
      Calculated = True
    end
    object CLDSUsuariosZQRYGruposDosUsuarios: TDataSetField
      FieldName = 'ZQRYGruposDosUsuarios'
    end
    object CLDSUsuariosZQRYPermissoesDosUsuarios: TDataSetField
      FieldName = 'ZQRYPermissoesDosUsuarios'
    end
  end
  object DTSRUsuarios: TDataSource
    DataSet = CLDSUsuarios
    Left = 36
    Top = 198
  end
  object CLDSGruposDosUsuarios: TClientDataSet
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    DataSetField = CLDSUsuariosZQRYGruposDosUsuarios
    Params = <>
    Left = 156
    Top = 150
    object CLDSGruposDosUsuariosin_gruposdosusuarios_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'in_gruposdosusuarios_id'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object CLDSGruposDosUsuariossm_grupos_id: TSmallintField
      DisplayLabel = 'ID do grupo'
      FieldName = 'sm_grupos_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSGruposDosUsuariossm_usuarios_id: TSmallintField
      DisplayLabel = 'ID do usu'#225'rio'
      FieldName = 'sm_usuarios_id'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CLDSGruposDosUsuariosgrupo: TWideStringField
      DisplayLabel = 'Grupo'
      FieldName = 'grupo'
      ProviderFlags = []
      ReadOnly = True
      Size = 64
    end
  end
  object CLDSPermissoesDosUsuarios: TClientDataSet
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    DataSetField = CLDSConsUsuariosZQRYPermissoesDosUsuarios
    Params = <>
    Left = 156
    Top = 54
    object CLDSPermissoesDosUsuariosentidade: TWideStringField
      DisplayLabel = 'Entidade'
      FieldName = 'entidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 128
    end
    object CLDSPermissoesDosUsuariostipo: TSmallintField
      FieldName = 'tipo'
      ProviderFlags = []
      ReadOnly = True
    end
    object CLDSPermissoesDosUsuariosin_permissoesdosusuarios_id: TIntegerField
      FieldName = 'in_permissoesdosusuarios_id'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object CLDSPermissoesDosUsuariosin_entidadesdosistema_id: TIntegerField
      FieldName = 'in_entidadesdosistema_id'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSPermissoesDosUsuariossm_usuarios_id: TSmallintField
      FieldName = 'sm_usuarios_id'
      ProviderFlags = [pfInUpdate]
    end
    object CLDSPermissoesDosUsuariossm_ler: TSmallintField
      DisplayLabel = 'Acessar'
      FieldName = 'sm_ler'
      ProviderFlags = [pfInUpdate]
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosUsuariossm_inserir: TSmallintField
      DisplayLabel = 'Inserir'
      FieldName = 'sm_inserir'
      ProviderFlags = [pfInUpdate]
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosUsuariossm_alterar: TSmallintField
      DisplayLabel = 'Alterar'
      FieldName = 'sm_alterar'
      ProviderFlags = [pfInUpdate]
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosUsuariossm_excluir: TSmallintField
      DisplayLabel = 'Excluir'
      FieldName = 'sm_excluir'
      ProviderFlags = [pfInUpdate]
      OnGetText = DoGetTextVazio
    end
  end
  object DTSRPermissoesDosUsuarios: TDataSource
    DataSet = CLDSPermissoesDosUsuarios
    Left = 156
    Top = 102
  end
end

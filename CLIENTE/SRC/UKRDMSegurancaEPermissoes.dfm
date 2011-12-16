inherited KRDMSegurancaEPermissoes: TKRDMSegurancaEPermissoes
  OldCreateOrder = True
  Properties.OpenAllDataSets = True
  MyFormClass = 'TKRFMSegurancaEPermissoes'
  Height = 246
  Width = 519
  object CLDSConsUsuarios: TClientDataSet
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
    ReadOnly = True
    Left = 36
    Top = 54
    object CLDSConsUsuariossm_usuarios_id: TSmallintField
      DisplayLabel = 'ID'
      FieldName = 'sm_usuarios_id'
    end
    object CLDSConsUsuariosva_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'va_nome'
      Size = 64
    end
    object CLDSConsUsuariosva_login: TWideStringField
      DisplayLabel = 'Login'
      FieldName = 'va_login'
      Size = 16
    end
    object CLDSConsUsuariosch_senha: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'ch_senha'
      Size = 128
    end
    object CLDSConsUsuariosva_email: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'va_email'
      Size = 64
    end
    object CLDSConsUsuariosZQRYPermissoesDosUsuarios: TDataSetField
      FieldName = 'ZQRYPermissoesDosUsuarios'
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
    Left = 162
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
    Left = 162
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
    Left = 162
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
    Left = 306
    Top = 150
    object CLDSPermissoesDosUsuariosentidade: TWideStringField
      FieldName = 'entidade'
      ReadOnly = True
      Size = 128
    end
    object CLDSPermissoesDosUsuariosin_permissoesdosusuarios_id: TIntegerField
      FieldName = 'in_permissoesdosusuarios_id'
      ReadOnly = True
    end
    object CLDSPermissoesDosUsuariosin_entidadesdosistema_id: TIntegerField
      FieldName = 'in_entidadesdosistema_id'
      ReadOnly = True
    end
    object CLDSPermissoesDosUsuariossm_usuarios_id: TSmallintField
      FieldName = 'sm_usuarios_id'
      ReadOnly = True
    end
    object CLDSPermissoesDosUsuariossm_ler: TSmallintField
      FieldName = 'sm_ler'
      ReadOnly = True
    end
    object CLDSPermissoesDosUsuariossm_inserir: TSmallintField
      FieldName = 'sm_inserir'
      ReadOnly = True
    end
    object CLDSPermissoesDosUsuariossm_alterar: TSmallintField
      FieldName = 'sm_alterar'
      ReadOnly = True
    end
    object CLDSPermissoesDosUsuariossm_excluir: TSmallintField
      FieldName = 'sm_excluir'
      ReadOnly = True
    end
  end
  object DTSRPermissoesDosUsuarios: TDataSource
    DataSet = CLDSPermissoesDosUsuarios
    Left = 306
    Top = 198
  end
end

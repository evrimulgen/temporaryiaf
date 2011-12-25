inherited KRDMSegurancaEPermissoes: TKRDMSegurancaEPermissoes
  OldCreateOrder = True
  OnCreate = KRKDataModuleCreate
  Properties.OpenAllDataSets = True
  MyFormClass = 'TKRFMSegurancaEPermissoes'
  Height = 372
  Width = 426
  inherited ACLI: TActionList
    Images = IMLI
    object ACTNAdicionarEntidade: TAction
      Caption = 'Adicionar entidade'
      Enabled = False
      ImageIndex = 0
      OnExecute = ACTNAdicionarEntidadeExecute
    end
  end
  inherited IMLI: TImageList
    Bitmap = {
      494C010101000800AC0010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031200031DB7D02EB2D1E002D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033240033EB8B00F4FABD77FFE48302F52F20002F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003727
      0037EB8A00F4FAC389FFFAC495FFE8AE72FFE07E02F633200033000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003A28003AEC88
      03F6F9C28DFFF6C08CFFF4B878FFF6B87BFFD69C61FFDE7B03F6352000350000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E26003EEA8400F7EF90
      1CFFEF9D3CFFF5C698FFF1AF6CFFE2A568FFC8802EFFD67D16FFDC7602F7381D
      0039000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EA8F1CFFF3C08FFFEDA861FFDF9F5EFFD3750CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E58A20FFEFBA86FFE9A054FFDC9853FFCA6E0CFF00000000007400FF006F
      00FF006C00FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DF831CFFEDB379FFE49849FFE8BC8FFFE4B88CFF00000000007C00FF43DD
      76FF007100FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D97B1CFFEAAC6FFFE2913CFFE7B889FF008700FF008500FF008100FF47E1
      7AFF007900FF007400FF006F00FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D37619FFE6A562FFDD8831FFE6B381FF008D00FF5DF791FF59F38DFF52EC
      86FF47E17AFF44DE77FF007700FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6E15FFE49E56FFD98226FFE3AF79FF009100FF008D00FF008B00FF59F3
      8DFF008300FF008100FF007C00FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C86813FFE09748FFD57619FFE2AB71FFD9AB87FF00000000008F00FF5DF7
      91FF008900FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3610FFFE6A359FFDC892EFFD37917FFAC4A00FF00000000009300FF0091
      00FF008D00FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A74400F7A94200F9A74000F9A33F00F69E3C00F600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F8FF000000000000
      F07F000000000000E03F000000000000C01F000000000000800F000000000000
      F07F000000000000F047000000000000F047000000000000F001000000000000
      F001000000000000F001000000000000F047000000000000F047000000000000
      F07F000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  inherited KRBH: TKRKBalloonHint
    TipAlignment = taBottomLeft
    Options = [kbhoActivateOnShow, kbhoSetFocusToAssociatedWinContronOnDeactivate, kbhoHideOnDeactivate, kbhoHideWithEnter, kbhoHideWithEsc, kbhoSelectAllOnFocus]
  end
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
    Left = 36
    Top = 54
    object CLDSConsUsuariossm_usuarios_id: TSmallintField
      DisplayLabel = 'ID'
      FieldName = 'sm_usuarios_id'
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
      ProviderFlags = [pfInUpdate, pfInKey]
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
    FieldDefs = <
      item
        Name = 'in_gruposdosusuarios_id'
        DataType = ftInteger
      end
      item
        Name = 'sm_grupos_id'
        DataType = ftSmallint
      end
      item
        Name = 'sm_usuarios_id'
        DataType = ftSmallint
      end
      item
        Name = 'grupo'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 64
      end
      item
        Name = 'ic_grupo'
        DataType = ftString
        Size = 64
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 156
    Top = 150
    object CLDSGruposDosUsuariosin_gruposdosusuarios_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'in_gruposdosusuarios_id'
      ProviderFlags = [pfInUpdate, pfInKey]
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
      Alignment = taCenter
      DisplayLabel = 'Grupo'
      FieldName = 'grupo'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = CLDSGruposDosUsuariosgrupoGetText
      Size = 64
    end
    object CLDSGruposDosUsuariosic_grupo: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ic_grupo'
      ProviderFlags = []
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
      OnGetText = CLDSPermissoesDosUsuariosentidadeGetText
      Size = 128
    end
    object CLDSPermissoesDosUsuariostipo: TSmallintField
      FieldName = 'tipo'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = CLDSPermissoesDosUsuariostipoGetText
    end
    object CLDSPermissoesDosUsuariosin_permissoesdosusuarios_id: TIntegerField
      FieldName = 'in_permissoesdosusuarios_id'
    end
    object CLDSPermissoesDosUsuariosin_entidadesdosistema_id: TIntegerField
      FieldName = 'in_entidadesdosistema_id'
    end
    object CLDSPermissoesDosUsuariossm_usuarios_id: TSmallintField
      FieldName = 'sm_usuarios_id'
    end
    object CLDSPermissoesDosUsuariossm_ler: TSmallintField
      DisplayLabel = 'Acessar'
      FieldName = 'sm_ler'
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosUsuariossm_inserir: TSmallintField
      DisplayLabel = 'Inserir'
      FieldName = 'sm_inserir'
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosUsuariossm_alterar: TSmallintField
      DisplayLabel = 'Alterar'
      FieldName = 'sm_alterar'
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosUsuariossm_excluir: TSmallintField
      DisplayLabel = 'Excluir'
      FieldName = 'sm_excluir'
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosUsuariosic_entidade: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ic_entidade'
      ProviderFlags = []
      Size = 128
    end
    object CLDSPermissoesDosUsuariosic_tipo: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ic_tipo'
      ProviderFlags = []
    end
  end
  object DTSRPermissoesDosUsuarios: TDataSource
    DataSet = CLDSPermissoesDosUsuarios
    Left = 156
    Top = 102
  end
  object DTSRGruposDosUsuarios: TDataSource
    DataSet = CLDSGruposDosUsuarios
    Left = 156
    Top = 198
  end
  object DTSRGrupos: TDataSource
    DataSet = CLDSGrupos
    Left = 36
    Top = 294
  end
  object CLDSGrupos: TClientDataSet
    Aggregates = <>
    ConnectionBroker = DAMOPrincipal.CNBRPrincipal
    Params = <
      item
        DataType = ftSmallint
        Name = 'SM_GRUPOS_ID'
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
        Name = 'VA_DESCRICAO'
        ParamType = ptInput
        Size = 128
        Value = Null
      end>
    ProviderName = 'DSPRGrupos'
    Left = 36
    Top = 246
    object CLDSGrupossm_grupos_id: TSmallintField
      DisplayLabel = 'ID'
      FieldName = 'sm_grupos_id'
    end
    object CLDSGruposva_nome: TWideStringField
      DisplayLabel = 'Nome do grupo'
      FieldName = 'va_nome'
      Size = 64
    end
    object CLDSGruposva_descricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o do grupo'
      FieldName = 'va_descricao'
      Size = 128
    end
  end
end

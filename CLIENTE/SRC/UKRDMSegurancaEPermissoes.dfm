inherited KRDMSegurancaEPermissoes: TKRDMSegurancaEPermissoes
  OldCreateOrder = True
  Properties.OpenAllDataSets = True
  MyFormClass = 'TKRFMSegurancaEPermissoes'
  Height = 372
  Width = 715
  inherited ACLI: TActionList
    Images = IMLI
    object ACTNAdicionarEntidade: TAction
      Caption = 'Adicionar entidade'
      Enabled = False
      ImageIndex = 0
      OnExecute = ACTNAdicionarEntidadeExecute
    end
    object ACTNRessetarSenhas: TAction
      Caption = 'Ressetar Senhas'
      OnExecute = ACTNRessetarSenhasExecute
    end
    object ACTNRegistrarEntidades: TAction
      Caption = 'Registrar Entidades'
      ImageIndex = 1
    end
  end
  inherited IMLI: TImageList
    Bitmap = {
      494C0101020008002C0010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      000000000000016A05CE0D8E17FF0A8A14FF098813FF088511FF005C02C70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033240033EB8B00F4FABD77FFE48302F52F20002F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000036C07CE50DA7AFF39CF68FF38CD66FF31C25AFF005E03C70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003727
      0037EB8A00F4FAC389FFFAC495FFE8AE72FFE07E02F633200033000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000046D08CE5BE084FF3DD46DFF3CD36CFF33C55EFF026003C70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003A28003AEC88
      03F6F9C28DFFF6C08CFFF4B878FFF6B87BFFD69C61FFDE7B03F6352000350000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000046F09CE63E48AFF40D770FF3ED56EFF36C860FF026104C70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E26003EEA8400F7EF90
      1CFFEF9D3CFFF5C698FFF1AF6CFFE2A568FFC8802EFFD67D16FFDC7602F7381D
      00390000000000000000000000000000000000000000067A0DD406790ED40578
      0DD405760BD408860FF055E282FF43DA73FF40D871FF38CB63FF027808EC0165
      05CE016304CE016204CE006003CE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EA8F1CFFF3C08FFFEDA861FFDF9F5EFFD3750CFF00000000000000000000
      0000000000000000000000000000000000000000000020A72CFF5FE487FF4ADD
      78FF49DC77FF48DC76FF49E079FF45DD76FF43DB74FF3FD66FFF3ACD66FF38CB
      64FF35C861FF32C45DFF098412FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E58A20FFEFBA86FFE9A054FFDC9853FFCA6E0CFF00000000007400FF006F
      00FF006C00FF0000000000000000000000000000000021A92EFF75F099FF5DEA
      8AFF59E888FF55E684FF52E481FF4DE17CFF46DE77FF43DB74FF40D871FF3ED5
      6EFF3CD36CFF38CD66FF0A8714FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DF831CFFEDB379FFE49849FFE8BC8FFFE4B88CFF00000000007C00FF43DD
      76FF007100FF0000000000000000000000000000000023AB2FFF7DF39FFF67EE
      91FF63ED8EFF5FEA8BFF58E886FF53E482FF4DE17CFF45DD76FF43DA73FF40D7
      70FF3DD46DFF39CF68FF0B8915FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D97B1CFFEAAC6FFFE2913CFFE7B889FF008700FF008500FF008100FF47E1
      7AFF007900FF007400FF006F00FF000000000000000024AD31FF91F7ABFF8DF6
      A8FF8BF5A6FF89F4A5FF79F09BFF58E886FF52E481FF49DF79FF5AE486FF66E5
      8CFF5DE186FF52DB7BFF0E8D19FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D37619FFE6A562FFDD8831FFE6B381FF008D00FF5DF791FF59F38DFF52EC
      86FF47E17AFF44DE77FF007700FF0000000000000000077F10CE087D10CE077B
      0FCE077A0FCE0A8C13EF89F4A5FF5FEA8BFF55E684FF44D871FF05810DEC046F
      0BCE046C09CE046B08CE036907CE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6E15FFE49E56FFD98226FFE3AF79FF009100FF008D00FF008B00FF59F3
      8DFF008300FF008100FF007C00FF000000000000000000000000000000000000
      000000000000077A0FCE8BF5A6FF63ED8EFF59E888FF44D770FF046C0AC70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C86813FFE09748FFD57619FFE2AB71FFD9AB87FF00000000008F00FF5DF7
      91FF008900FF0000000000000000000000000000000000000000000000000000
      000000000000087B10CE8DF6A8FF67EE91FF5DEA8AFF45D871FF046F0AC70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3610FFFE6A359FFDC892EFFD37917FFAC4A00FF00000000009300FF0091
      00FF008D00FF0000000000000000000000000000000000000000000000000000
      000000000000087B10CE91F7ABFF7EF39FFF75F099FF57DF7EFF04700BC70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A74400F7A94200F9A74000F9A33F00F69E3C00F600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000087E11CE25AD32FF24AB31FF22A92FFF20A62DFF04710BC70000
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
      000000000000000000000000FFFFFF00FFFFFFFF00000000F8FFF81F00000000
      F07FF81F00000000E03FF81F00000000C01FF81F00000000800F800100000000
      F07F800100000000F047800100000000F047800100000000F001800100000000
      F001800100000000F001F81F00000000F047F81F00000000F047F81F00000000
      F07FF81F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  inherited KRBH: TKRKBalloonHint
    TipAlignment = taBottomLeft
    Options = [kbhoActivateOnShow, kbhoSetFocusToAssociatedWinContronOnDeactivate, kbhoHideOnDeactivate, kbhoHideWithEnter, kbhoHideWithEsc, kbhoSelectAllOnFocus]
  end
  object CLDSUsuariosCON: TClientDataSet
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
      end
      item
        DataType = ftBoolean
        Name = 'BO_SUPERUSUARIO'
        ParamType = ptInput
        Value = Null
      end>
    ProviderName = 'DSPRUsuarios'
    Left = 192
    Top = 60
    object CLDSUsuariosCONsm_usuarios_id: TSmallintField
      DisplayLabel = 'ID'
      FieldName = 'sm_usuarios_id'
      ReadOnly = True
    end
    object CLDSUsuariosCONva_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 64
    end
    object CLDSUsuariosCONva_login: TWideStringField
      DisplayLabel = 'Login'
      FieldName = 'va_login'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 16
    end
    object CLDSUsuariosCONch_senha: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'ch_senha'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 128
    end
    object CLDSUsuariosCONva_email: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'va_email'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 64
    end
    object CLDSUsuariosCONbo_superusuario: TBooleanField
      FieldName = 'bo_superusuario'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object CLDSUsuariosCONZQRYPermissoesDosUsuarios: TDataSetField
      FieldName = 'ZQRYPermissoesDosUsuarios'
    end
  end
  object DTSRUsuariosCON: TDataSource
    DataSet = CLDSUsuariosCON
    Left = 192
    Top = 108
  end
  object CLDSEntidadesDoSistemaCON: TClientDataSet
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
    Left = 564
    Top = 120
    object CLDSEntidadesDoSistemaCONin_entidadesdosistema_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'in_entidadesdosistema_id'
      ReadOnly = True
    end
    object CLDSEntidadesDoSistemaCONva_nome: TWideStringField
      DisplayLabel = 'Entidade'
      FieldName = 'va_nome'
      ReadOnly = True
      Size = 128
    end
    object CLDSEntidadesDoSistemaCONsm_tipo: TSmallintField
      DisplayLabel = 'Tipo'
      FieldName = 'sm_tipo'
      ReadOnly = True
      OnGetText = CLDSEntidadesDoSistemaCONsm_tipoGetText
    end
  end
  object DTSRConsEntidadesDoSistema: TDataSource
    DataSet = CLDSEntidadesDoSistemaCON
    Left = 564
    Top = 168
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
      end
      item
        DataType = ftBoolean
        Name = 'BO_SUPERUSUARIO'
        ParamType = ptInput
        Value = Null
      end>
    ProviderName = 'DSPRUsuarios'
    AfterRefresh = CLDSUsuariosAfterRefresh
    OnCalcFields = CLDSUsuariosCalcFields
    Left = 54
    Top = 60
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
      Size = 128
    end
    object CLDSUsuariosva_email: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'va_email'
      ProviderFlags = [pfInUpdate]
      Size = 64
    end
    object CLDSUsuariosbo_superusuario: TBooleanField
      FieldName = 'bo_superusuario'
      ProviderFlags = [pfInUpdate]
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
    Left = 54
    Top = 108
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
    Left = 54
    Top = 156
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
    DataSetField = CLDSUsuariosCONZQRYPermissoesDosUsuarios
    Params = <>
    Left = 192
    Top = 156
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
    Left = 192
    Top = 204
  end
  object DTSRGruposDosUsuarios: TDataSource
    DataSet = CLDSGruposDosUsuarios
    Left = 54
    Top = 204
  end
  object DTSRGrupos: TDataSource
    DataSet = CLDSGrupos
    Left = 54
    Top = 318
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
    AfterRefresh = CLDSGruposAfterRefresh
    Left = 54
    Top = 270
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
  object CLDSPermissoesDosGrupos: TClientDataSet
    Aggregates = <>
    DataSetField = CLDSGruposCONZQRYPermissoesDosGrupos
    Params = <>
    Left = 336
    Top = 156
    object CLDSPermissoesDosGruposentidade: TWideStringField
      FieldName = 'Entidade'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = CLDSPermissoesDosGruposentidadeGetText
      Size = 128
    end
    object CLDSPermissoesDosGrupostipo: TSmallintField
      FieldName = 'tipo'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = CLDSPermissoesDosGrupostipoGetText
    end
    object CLDSPermissoesDosGruposin_permissoesdosgrupos_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'in_permissoesdosgrupos_id'
    end
    object CLDSPermissoesDosGruposin_entidadesdosistema_id: TIntegerField
      FieldName = 'in_entidadesdosistema_id'
      Required = True
    end
    object CLDSPermissoesDosGrupossm_grupos_id: TSmallintField
      FieldName = 'sm_grupos_id'
      Required = True
    end
    object CLDSPermissoesDosGrupossm_ler: TSmallintField
      DisplayLabel = 'Acessar'
      FieldName = 'sm_ler'
      Required = True
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosGrupossm_inserir: TSmallintField
      DisplayLabel = 'Inserir'
      FieldName = 'sm_inserir'
      Required = True
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosGrupossm_alterar: TSmallintField
      DisplayLabel = 'Alterar'
      FieldName = 'sm_alterar'
      Required = True
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosGrupossm_excluir: TSmallintField
      DisplayLabel = 'Excluir'
      FieldName = 'sm_excluir'
      Required = True
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosGruposic_entidade: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ic_entidade'
      ProviderFlags = []
      Size = 128
    end
    object CLDSPermissoesDosGruposic_tipo: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ic_tipo'
      ProviderFlags = []
      Size = 10
    end
  end
  object DTSRPermissoesDosGrupos: TDataSource
    DataSet = CLDSPermissoesDosGrupos
    Left = 336
    Top = 204
  end
  object CLDSGruposCON: TClientDataSet
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
    Left = 336
    Top = 60
    object CLDSGruposCONsm_grupos_id: TSmallintField
      DisplayLabel = 'ID'
      FieldName = 'sm_grupos_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object CLDSGruposCONva_nome: TWideStringField
      DisplayLabel = 'Nome do grupo'
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Size = 64
    end
    object CLDSGruposCONva_descricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o do grupo'
      FieldName = 'va_descricao'
      ProviderFlags = [pfInUpdate]
      Size = 128
    end
    object CLDSGruposCONZQRYPermissoesDosGrupos: TDataSetField
      FieldName = 'ZQRYPermissoesDosGrupos'
    end
  end
  object DTSRGruposCON: TDataSource
    DataSet = CLDSGruposCON
    Left = 336
    Top = 108
  end
end

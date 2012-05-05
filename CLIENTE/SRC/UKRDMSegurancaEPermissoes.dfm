inherited KRDMSegurancaEPermissoes: TKRDMSegurancaEPermissoes
  OldCreateOrder = True
  Properties.OpenAllDataSets = True
  MyFormClass = 'TKRFMSegurancaEPermissoes'
  Height = 372
  Width = 715
  inherited ACLI: TActionList
    object ACTNAdicionarEntidade: TAction
      Caption = 'Adicionar entidade(s)'
      Enabled = False
      ImageIndex = 0
      OnExecute = ACTNAdicionarEntidadeExecute
    end
    object ACTNRessetarSenhas: TAction
      Caption = 'Ressetar Senhas'
      ImageIndex = 3
      OnExecute = ACTNRessetarSenhasExecute
    end
    object ACTNRegistrarEntidades: TAction
      Caption = 'Registrar Entidades'
      ImageIndex = 1
      OnExecute = ACTNRegistrarEntidadesExecute
    end
    object ACTNAdicionarGruposAoUsuario: TAction
      Caption = 'Adicionar grupos'
      ImageIndex = 1
      OnExecute = ACTNAdicionarGruposAoUsuarioExecute
    end
    object ACTNRemoverGruposDoUsuario: TAction
      Caption = 'Remover grupos'
      Enabled = False
      ImageIndex = 2
      OnExecute = ACTNRemoverGruposDoUsuarioExecute
    end
  end
  inherited KRBH: TKRKBalloonHint
    TipAlignment = taBottomLeft
    Options = [kbhoActivateOnShow, kbhoSetFocusToAssociatedWinContronOnDeactivate, kbhoHideOnDeactivate, kbhoHideWithEnter, kbhoHideWithEsc, kbhoSelectAllOnFocus]
  end
  inherited KPIM: TKRKPngImageList
    PngImages = <
      item
        Background = clWindow
        Name = 'down_plus'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D65004D6F20313720466562
          20323030332031343A35303A3134202B30313030523C11670000000774494D45
          07D30A06140B0F5FC14CAA000000097048597300000B1100000B11017F645F91
          0000027E4944415478DA7D935F48537114C7BFF34FE93645A9A4B48151B022B4
          059520842849D624210BA250240A563E9869CCA8F0412C35CAAD3552E949C1A7
          56200846BDA4513D9453446416BA745BBB929AE9BCDBBCBF7B3B732A77CDFA5D
          3E3F7E7FCEF99EC3F99DAB807C9CB4F160520C44913622035B01DE95EDA7CD0C
          1190594AEB0B85DC3FE5F280743A7F2F463DCBE0167870C30E48BDE7AA61412B
          429A0251834C9A39C21F25B0FDDA27E968F64E0C3B7DB87024093BC0E3F679AD
          99DCABCC8672543DE9048CA825D317C4542813B98022AD6A50CC3F948621970F
          A5594ADC9FD284A352F447868BA831756323938670261102E9C611F154F636D8
          A779941C4C44FD783ACCD7CB2108020281007C3E1F186368EA78033485338910
          D0DC7588A5BA547C71FB51AC8D87D1BE6B23E29D8A2234B6F70154D7554CF401
          6D91020D9362992E19436E1E85FBE2C028726DD1EE1EDCC31963C509345BDF02
          8FD143B65E623C2A833D2D6EF1AA4E09BB2708C9BF88D7637358341F7B8E5BB8
          B21A95111674D06C231C5135D0B4CE88370F2762C41B04E37FE3E5D812165BB2
          9ED25D2F91456410D391AFD0BE928779BE4F93C0123293804B07B6609413202C
          2FE0C3570FBC62327E0A6A3F7BFFCC80FE07A3E4344BFC90F7413C6E74E9E332
          4ABA9B73B6264AD480B37E11B18881C7E544E777152F7495B6C3F939E4DC4F38
          89A0BC1343A4E26C750972EB2DCD394A959A4E2666E6601A0EF2ACADC006EE9B
          9B6CE8ED6027E6376BE59855117D65310A1AAD753AA5EAE1C7D96566C97D056E
          D24577547E0C12BFC26D252B9C6C1D12494161A53EF6785D2BB3E6F5809BE0D6
          220F6DE61CF52F6C88842BAE5D7BAA91BFD3FE9FC0FA998A50134B84EF5FCEA1
          F10744C40595F51EFAFF0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'add'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D65004672203135204E6F76
          20323030322031303A30383A3239202B30313030F5A262C60000000774494D45
          07D30A06140A1E2C6A5D19000000097048597300000AF000000AF00142AC3498
          000003164944415478DA55936968546714869F3B8B33C92441AB3186FC886222
          49B40D1AB4A84DA1060A420D4A517FE98F0A8D0B55A128E23F45E20262700B19
          4D83DA246D1D472D428BA828425C9A58B5B84D5CD2C426C4CCC4CC72273373EF
          DCDB33934D3F78B870BE735ECE7BEEF9143E3C47C827CCD6DCA9D3AA3F716515
          277543F10F05DF0CF506AFD2C7295A79215971C11C2B51C68B7F62CD5C67F1A9
          4D0B57E6644C52E80CFAE88B0C104CA8F487223CF6F544D5D7F1BD9CA451B287
          047D42408A57E457B67E37FF1B4B7BE0369EDB4F28B32E485FE5CEEFE2DEDB1E
          864D8DFFBA5553BD97A8A5857AB9EA4F8928D4915F965BF4BCB66A63CEF53E2F
          C3BA4AE0611117569D27AE199C9DB19913972E11D134A2669C81A7462CD91CDB
          CC4BAE88805F610FFB0FAFDEBEEBBDF12F6FA3AFC49D42F07111675634A1E906
          9E829D1CF57A511309427A9C70C085766DF0B2941F108147CAE4BA9C2707ABB7
          94FD79DD373E8ECA394BD950B6410C2AECE8FA8A81BF678EDB69BCFB8AE43FDA
          3B1AD4DD12BAA2CC6A2848AC5E5469EF6CD7F0ACFA0D35A962580C99908ED56A
          25C39E81C3EE8024B8336BA839721EBA64744707F78940935278325FFBF2B352
          5BE4D9147EA9FE95B016C1E650506C60B5D970DA33B1323273B74B04F6FD01EF
          86E198BF4EA2F54A566D96AF6AF1BCE2BC6C8D8A8A8A74AB1D1D1D1C2B69930E
          EC343A377EB42A353B1EC0FB17011AC3E7D2026CE5F8E7CB4AB7F8E3BDE2D982
          699A9487AAF0AEF7A47FB2DB5EC30FA74F93300D299C0CDDA5F0ECCE556EF057
          6A0114BEA53C7B51465B66A125D3D4CCF48A7D115B8E779D27BD6F6EA7B4ED76
          434CD43A978895973A2DFD3F13E28EA4FE9E5A2427DFB36DD21CEB7E6B9E8C5D
          BCAEFBB47CDC4EBAED43CDD0530E86DFA4DDE7E13E3D12BE9872AB8C6EE354D6
          B29D62CB8F4C7338B149BB9A8C6E380B82D3212C5FFD8DCEC3FE8B521C90FC5B
          C2CDD4368EBD05993979CCE26B4AA8A6C0B50487331743C4A35A80EE50070FE8
          25C8A0E4DD1752EDF78EACF2C449894C11660B738542217BF44E15BA85A742A7
          10F8F8314D9C9199408EE012ECA3714D880A212126186305FF03FBB334F3A993
          BA340000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'delete'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D65004672203135204E6F76
          20323030322031303A30383A3239202B30313030F5A262C60000000774494D45
          07D30A06140A3580D6A459000000097048597300000AF000000AF00142AC3498
          0000032F4944415478DA55936D6C535518C77FA7EDEDCB56DC58D9663237C670
          265213A36618B290F801A312C129E10324908009680CF8821A8C60A289F22211
          C922608242D40F9809CE2CE39D2C2E04494170288C66CE8EBDB276ACEB3AFA76
          7BEFF569E9106FF2CB3D39CF39FFF39CE7FC1FC57D5F70365E8FC1EB14AB17B5
          52DFC359C3241A19FF7B34C5C9DD510E1DCB10916559C19ADEA3A607A947783E
          553EEB50D192572AB5397530DC0F912188474986FAE9B93674AB33AABFB76182
          36593E2518F704B2F5BC90F4FB7FF1BEFA86467F10BD2B80E690402281159F44
          8D8E80C341B0EF4EE640D87A7B57821689DE164C15A962866D6E456FD9E68FCB
          331DED84922578AC34359910643218C361CC5DAD68DF7D0A9DED9C0D59919563
          AC09C339119854BDD56CADDEF0DA279AD74DAAF32423EBF6E06968A4B4A916A7
          99C66C09E2F03D88B5621EAAB79B9E31D839CC3707D2EC11811B2A34CF1DA8DD
          FC61038153F9DA8455057C7184A2736D38ABEA70D6FBE1CB8DF04373BE740331
          F879882B6FA6D8261BCEAA810595130F352D29E17A00340DE3DA9FC4BEFF0B67
          F51CDC4E07F65F8FA2362D03BB0D3D63D2370197C2445726F2028755687E45AC
          F69986070875638D45985CF012FAA666DC1E97E0C1DE7319F5D6628CBE519236
          C9594A776382E8AA24FB44E05BF5C75CD7A5C79F9BFF9475F52283EB77632D5D
          85C766C373671CADB20A57FE8DA730DF7F9970FB19BA2583F393746DC9D22E91
          83AACDC767CF36D67FE01AEEA1F7EB00B63A3F33BBCE50BA7539FAB61654E352
          722F6A6E5FCBEF9F1FE45606F64ED172426E92BFC2223B553B6A5C579F9C952E
          1B7D771FDE5017C53FED8734E84EB9FA475F6176B412FCF134FD629F9B09C637
          1AB4EA90ABFAE99C91B4BDC5AC5E3893FD8FF970642562D8C502A6184C482660
          282EA694F9B114D91D3A87AFC33FB2EF48FE190B4E2E7DC7C59A45456CA92BA1
          CC2D0269316A5CB288A5E42F698FA4B8DD6C705C36E7FA2177FA0521362D20F5
          A55C1CF0F4628D26BFC5133E07D5D24B0C6419BC6012EC10FF4B1283B2EE37E1
          0A77854CF55F2F22E73243A8111E15660B258598D8879B42B7205D46FC7FCD74
          DF97AF89E02DA015E6F542074E15C6F7DAF95F1EEA47D3DEA1E1730000000049
          454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'refresh'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D6500446F203134204E6F76
          20323030322032333A33313A3434202B3031303084501C480000000774494D45
          07D30A06140B3370AE302D000000097048597300000B1100000B11017F645F91
          0000030F4944415478DA65937B48D35114C7CF6F4EDD74324DA7E6A3301F9148
          9499A1A11196D328D0A432893231B534C81516A656A259597FA81141523EC8A9
          44DA6316BE4DE7A37025BA818AAFA5738AF3FDD8CBFD3ADACF5CF5830FF7DEDF
          39F77B1EF75E02FEFDE284D7ACACCDCFB10862AF8156AD960E4B851AD9403E34
          240AD0BA8CACEABB137F2D6E0F3FB3E3D8C6B10DE98439CB009846009EB600FC
          8F3F9646DB2A1E406B7A3EBA4DE989909B02F19D913436234BD7D7500692EA55
          B0D9EDE01C1075C2CBC389B9C302A0E46DC7E2089F77D5F2F8E3B3C42ADD6CAA
          D03B1477CD6E0A5C6ACF83C6944FD05F6B4FA5BA0C2EC13B3D22F3D2827D9D99
          962C805B77F9732FD2C3D939452D8B3DB9FE97D1A75EBF0436E28AA890496A34
          03DF8C84A4D41B49DB38C6403700B035C736F15EF5CA2BA2CAD15EF05B204966
          026FC248186CC3AA414D6D2621A8D2061646AFF804F8A4C49EF224683A8C8261
          C24E26376B455975E853484074D3E940DFED450C1A4948170C27A7A657E4138A
          59B966F4DB13D0599F29781816E780E9D349002D0AE86800813E11EFE027BF09
          05CA09B8589D37967B34617806601E634F2A0106709EFEE8E96B10375619BA87
          865899315D2CB7B039B6D6469C95451D297CC92B0185A8190504846942BDA035
          F5F0B1EE09000D1E4EF6872E9DA4F47E390C7E968272BE833A3627642B620A04
          9D01A47616E72D4827E19ADC21791EE3BD6B04A32A51E06B9F020A32E34B405C
          26448746641C59EB0D03A153689069649ED89FD9BD1CE2E7CE4C2BAE99CD8EE6
          9ACB96002AEA24AA01FEF53B9845293A8DAD5F9CA01A47A0E9CE43153707D74A
          4A04082B5ED777CDDCC8CC5C59CC9043746538977BC064194DC266B14A2A6A2C
          42D75630B172228C58B1A4429C01ED37BFE0BE216461E32ADB2147D653748F60
          D97379F7BCFCF6B154D8F5256CAA02AB9D912BC8F1DAE2621026AE354E8C7423
          8B1B02C688C59FB761EF7F88E6127CC1C2CDEF20181A3316FA4562759F400423
          EF6568EF4184545F56F51F93FE88770DDC903D8823D5B4B593E845BA10D946FD
          FFBD46BD7F0C4AC8845AABA99AD7D0EA3BFF0213B62CC1377BDBA80000000049
          454E44AE426082}
      end>
    Bitmap = {}
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
    object CLDSUsuariosCONUNQYPermissoesDosUsuarios: TDataSetField
      FieldName = 'UNQYPermissoesDosUsuarios'
    end
  end
  object DTSRUsuariosCON: TDataSource
    DataSet = CLDSUsuariosCON
    Left = 192
    Top = 108
  end
  object CLDSEntidadesDoSistema: TClientDataSet
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
    Left = 473
    Top = 60
    object CLDSEntidadesDoSistemain_entidadesdosistema_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'in_entidadesdosistema_id'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object CLDSEntidadesDoSistemava_nome: TWideStringField
      DisplayLabel = 'Entidade'
      FieldName = 'va_nome'
      ProviderFlags = [pfInUpdate]
      Size = 128
    end
    object CLDSEntidadesDoSistemasm_tipo: TSmallintField
      DisplayLabel = 'Tipo'
      FieldName = 'sm_tipo'
      ProviderFlags = [pfInUpdate]
      OnGetText = CLDSEntidadesDoSistemasm_tipoGetText
    end
  end
  object DTSREntidadesDoSistema: TDataSource
    DataSet = CLDSEntidadesDoSistema
    Left = 473
    Top = 108
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
      DisplayLabel = 'Superusu'#225'rio'
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
    object CLDSUsuariosUNQYGruposDosUsuarios: TDataSetField
      FieldName = 'UNQYGruposDosUsuarios'
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
    DataSetField = CLDSUsuariosUNQYGruposDosUsuarios
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
    end
    object CLDSGruposDosUsuariossm_usuarios_id: TSmallintField
      DisplayLabel = 'ID do usu'#225'rio'
      FieldName = 'sm_usuarios_id'
      ProviderFlags = [pfInUpdate]
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
    DataSetField = CLDSUsuariosCONUNQYPermissoesDosUsuarios
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
      DisplayLabel = '_Acessar'
      FieldName = 'sm_ler'
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosUsuariossm_inserir: TSmallintField
      DisplayLabel = '_Inserir'
      FieldName = 'sm_inserir'
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosUsuariossm_alterar: TSmallintField
      DisplayLabel = '_Alterar'
      FieldName = 'sm_alterar'
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosUsuariossm_excluir: TSmallintField
      DisplayLabel = '_Excluir'
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
    Top = 306
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
    Top = 258
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
    DataSetField = CLDSGruposCONUNQYPermissoesDosGrupos
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
      DisplayLabel = '_Acessar'
      FieldName = 'sm_ler'
      Required = True
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosGrupossm_inserir: TSmallintField
      DisplayLabel = '_Inserir'
      FieldName = 'sm_inserir'
      Required = True
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosGrupossm_alterar: TSmallintField
      DisplayLabel = '_Alterar'
      FieldName = 'sm_alterar'
      Required = True
      OnGetText = DoGetTextVazio
    end
    object CLDSPermissoesDosGrupossm_excluir: TSmallintField
      DisplayLabel = '_Excluir'
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
    object CLDSGruposCONUNQYPermissoesDosGrupos: TDataSetField
      FieldName = 'UNQYPermissoesDosGrupos'
    end
  end
  object DTSRGruposCON: TDataSource
    DataSet = CLDSGruposCON
    Left = 336
    Top = 108
  end
end

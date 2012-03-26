inherited KRFMSegurancaEPermissoes: TKRFMSegurancaEPermissoes
  Caption = 'Seguran'#231'a e Permiss'#245'es'
  ClientHeight = 562
  ClientWidth = 784
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  object PGCTSegurancaEPermissoes: TPageControl [0]
    Left = 0
    Top = 40
    Width = 784
    Height = 522
    ActivePage = TabSheet_Permissions
    Align = alClient
    TabOrder = 0
    object TabSheet_Permissions: TTabSheet
      AlignWithMargins = True
      Caption = 'Permiss'#245'es'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PANLLayerSuperior: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 770
        Height = 228
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object PGCTUSUGRUConsultar: TPageControl
          Left = 421
          Top = 0
          Width = 349
          Height = 228
          Margins.Left = 0
          ActivePage = TBSHUSUConsultar
          Align = alRight
          TabOrder = 0
          OnChange = PGCTUSUGRUConsultarChange
          object TBSHUSUConsultar: TTabSheet
            Caption = 'Usu'#225'rios'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            DesignSize = (
              341
              200)
            object GroupBoxUsuarioConsultaRapida: TGroupBox
              AlignWithMargins = True
              Left = 4
              Top = 0
              Width = 331
              Height = 57
              Margins.Left = 4
              Margins.Top = 0
              Margins.Right = 6
              Align = alTop
              Caption = ' Localiza'#231#227'o r'#225'pida '
              TabOrder = 0
              DesignSize = (
                331
                57)
              object Label3: TLabel
                Left = 211
                Top = 31
                Width = 12
                Height = 13
                Anchors = [akTop, akRight]
                Caption = 'ou'
              end
              object LAEDUSU_VA_NOME: TLabeledEdit
                Left = 8
                Top = 27
                Width = 197
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                CharCase = ecUpperCase
                EditLabel.Width = 27
                EditLabel.Height = 13
                EditLabel.Caption = 'Nome'
                LabelSpacing = 1
                TabOrder = 0
                OnKeyPress = LAEDUSU_VA_NOMEKeyPress
              end
              object LAEDUSU_VA_LOGIN: TLabeledEdit
                Left = 229
                Top = 27
                Width = 94
                Height = 21
                Anchors = [akTop, akRight]
                CharCase = ecUpperCase
                EditLabel.Width = 25
                EditLabel.Height = 13
                EditLabel.Caption = 'Login'
                LabelSpacing = 1
                TabOrder = 1
                OnKeyPress = LAEDUSU_VA_LOGINKeyPress
              end
            end
            object KRDGConsUsuarios: TKRKDBGrid
              Left = 4
              Top = 63
              Width = 331
              Height = 132
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataSource = KRDMSegurancaEPermissoes.DTSRUsuariosCON
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              OptionsEx = [dgAutomaticColumSizes]
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              RowColors = <
                item
                  BackgroundColor = clBtnFace
                  ForegroundColor = clNone
                end>
              VariableWidthColumns = '<va_nome>'
              Columns = <
                item
                  Expanded = False
                  FieldName = 'va_nome'
                  Width = 208
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'va_login'
                  Visible = True
                end>
            end
          end
          object TBSHGRUConsultar: TTabSheet
            Caption = 'Grupos'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            DesignSize = (
              341
              200)
            object GroupBoxGrupoConsultaRapida: TGroupBox
              AlignWithMargins = True
              Left = 4
              Top = 0
              Width = 331
              Height = 57
              Margins.Left = 4
              Margins.Top = 0
              Margins.Right = 6
              Align = alTop
              Caption = ' Localiza'#231#227'o r'#225'pida '
              TabOrder = 0
              DesignSize = (
                331
                57)
              object LabeledEdit_GRU_VA_NOME: TLabeledEdit
                Left = 8
                Top = 27
                Width = 315
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                CharCase = ecUpperCase
                EditLabel.Width = 27
                EditLabel.Height = 13
                EditLabel.Caption = 'Nome'
                LabelSpacing = 1
                TabOrder = 0
                OnKeyPress = LabeledEdit_GRU_VA_NOMEKeyPress
              end
            end
            object KRDGGruposCON: TKRKDBGrid
              Left = 4
              Top = 63
              Width = 331
              Height = 132
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataSource = KRDMSegurancaEPermissoes.DTSRGruposCON
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              OptionsEx = [dgAutomaticColumSizes]
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              RowColors = <
                item
                  BackgroundColor = clBtnFace
                  ForegroundColor = clNone
                end>
              VariableWidthColumns = '<va_nome>'
              Columns = <
                item
                  Expanded = False
                  FieldName = 'va_nome'
                  Width = 309
                  Visible = True
                end>
            end
          end
        end
        object GroupBoxEntidadesDoSistema: TGroupBox
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 415
          Height = 228
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alClient
          Caption = ' Entidades do sistema '
          TabOrder = 1
          DesignSize = (
            415
            228)
          object GroupBoxFiltro: TGroupBox
            AlignWithMargins = True
            Left = 6
            Top = 15
            Width = 402
            Height = 57
            Margins.Left = 4
            Margins.Top = 0
            Margins.Right = 5
            Align = alTop
            Caption = ' Localiza'#231#227'o r'#225'pida '
            TabOrder = 0
            DesignSize = (
              402
              57)
            object LabelTipo: TLabel
              Left = 298
              Top = 13
              Width = 20
              Height = 13
              Anchors = [akTop, akRight]
              Caption = 'Tipo'
              ExplicitLeft = 522
            end
            object Label2: TLabel
              Left = 284
              Top = 31
              Width = 6
              Height = 13
              Anchors = [akTop, akRight]
              Caption = 'e'
              ExplicitLeft = 508
            end
            object ComboBox_EDS_TI_TIPO: TComboBox
              Left = 296
              Top = 27
              Width = 98
              Height = 21
              Style = csDropDownList
              Anchors = [akTop, akRight]
              ItemIndex = 0
              TabOrder = 1
              Text = 'Todos'
              OnChange = ComboBox_EDS_TI_TIPOChange
              Items.Strings = (
                'Todos'
                'Tabela'
                'A'#231#227'o')
            end
            object LabeledEdit_EDS_VA_NOME: TLabeledEdit
              Left = 8
              Top = 27
              Width = 270
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              CharCase = ecUpperCase
              EditLabel.Width = 42
              EditLabel.Height = 13
              EditLabel.Caption = 'Entidade'
              LabelSpacing = 1
              TabOrder = 0
              OnKeyPress = LabeledEdit_EDS_VA_NOMEKeyPress
            end
          end
          object BBTNAdicionarEntidade: TBitBtn
            Left = 6
            Top = 195
            Width = 127
            Height = 25
            Action = KRDMSegurancaEPermissoes.ACTNAdicionarEntidade
            Caption = 'Adicionar entidade'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            Spacing = 8
            TabOrder = 1
          end
          object KRDGConsEntidadesDoSistema: TKRKDBGrid
            Left = 6
            Top = 78
            Width = 402
            Height = 111
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = KRDMSegurancaEPermissoes.DTSRConsEntidadesDoSistema
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEx = [dgPersistentSelection, dgAutomaticColumSizes]
            ReadOnly = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            RowColors = <
              item
                BackgroundColor = clBtnFace
                ForegroundColor = clNone
              end>
            VariableWidthColumns = '<va_nome>'
            OnAfterMultiselect = KRDGConsEntidadesDoSistemaAfterMultiselect
            Columns = <
              item
                Expanded = False
                FieldName = 'va_nome'
                Width = 283
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'sm_tipo'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
          object BBTNRegistrarEntidades: TBitBtn
            Left = 281
            Top = 195
            Width = 127
            Height = 25
            Action = KRDMSegurancaEPermissoes.ACTNRegistrarEntidades
            Caption = 'Registrar Entidades'
            DoubleBuffered = False
            ParentDoubleBuffered = False
            TabOrder = 3
          end
        end
      end
      object PANLFooter: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 234
        Width = 770
        Height = 254
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object PGCTPermissoes: TPageControl
          Left = 0
          Top = 0
          Width = 770
          Height = 254
          ActivePage = TBSHPDU
          Align = alClient
          MultiLine = True
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          object TBSHPDU: TTabSheet
            Caption = 'Entidades e permiss'#245'es do usu'#225'rio selecionado'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object PANLUSULayerTop: TPanel
              Left = 0
              Top = 0
              Width = 762
              Height = 57
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object GroupBoxUsuarioConsultaRapida2: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 0
                Width = 491
                Height = 57
                Margins.Left = 4
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alClient
                Caption = ' Localiza'#231#227'o r'#225'pida '
                TabOrder = 0
                DesignSize = (
                  491
                  57)
                object LabelTipo2: TLabel
                  Left = 387
                  Top = 13
                  Width = 20
                  Height = 13
                  Anchors = [akTop, akRight]
                  Caption = 'Tipo'
                  ExplicitLeft = 745
                end
                object LabelE: TLabel
                  Left = 374
                  Top = 31
                  Width = 6
                  Height = 13
                  Anchors = [akTop, akRight]
                  Caption = 'e'
                  ExplicitLeft = 732
                end
                object ComboBox_PDU_TI_TIPO: TComboBox
                  Left = 387
                  Top = 27
                  Width = 96
                  Height = 21
                  Style = csDropDownList
                  Anchors = [akTop, akRight]
                  ItemIndex = 0
                  TabOrder = 1
                  Text = 'Todos'
                  Items.Strings = (
                    'Todos'
                    'Tabela'
                    'A'#231#227'o')
                end
                object LabeledEdit_PDU_VA_NOME: TLabeledEdit
                  Left = 8
                  Top = 27
                  Width = 359
                  Height = 21
                  Anchors = [akLeft, akTop, akRight]
                  CharCase = ecUpperCase
                  EditLabel.Width = 137
                  EditLabel.Height = 13
                  EditLabel.Caption = 'Nome / Identifica'#231#227'o cont'#233'm'
                  LabelSpacing = 1
                  TabOrder = 0
                end
              end
              object GroupBoxUsuarioLegenda: TGroupBox
                AlignWithMargins = True
                Left = 501
                Top = 0
                Width = 255
                Height = 57
                Margins.Top = 0
                Margins.Right = 6
                Margins.Bottom = 0
                Align = alRight
                Caption = ' Legenda '
                TabOrder = 1
                object LabelUsuarioAutorizado: TLabel
                  Left = 27
                  Top = 14
                  Width = 99
                  Height = 13
                  Caption = 'Permiss'#227'o concedida'
                end
                object LabelUsuarioDesaltoriza: TLabel
                  Left = 160
                  Top = 14
                  Width = 87
                  Height = 13
                  Caption = 'Permiss'#227'o negada'
                end
                object LabelUsuarioNaoAplicavel: TLabel
                  Left = 75
                  Top = 36
                  Width = 123
                  Height = 13
                  Caption = 'A permiss'#227'o n'#227'o se aplica'
                end
                object IMAGConcedido: TImage
                  Left = 8
                  Top = 13
                  Width = 16
                  Height = 16
                  AutoSize = True
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                    001008060000001FF3FF610000002B744558744372656174696F6E2054696D65
                    004672203135204E6F7620323030322031303A30383A3239202B30313030F5A2
                    62C60000000774494D4507D30A06140A2A0DDEA9AC000000097048597300000A
                    F000000AF00142AC34980000000467414D410000B18F0BFC6105000003284944
                    415478DA55937D68536714C67F3736A96D6DFA613B61B1DDFAC5E6948943288C
                    EA4A2DF8CFCAC6C650FF90C2869B6E1DC24464281DAC73FD6B30D45270AD6255
                    FC18223AAC5B5BB0ADE83E32BF2ADAAE9F6B6C6D9BB4D96D6E127373939B9DA4
                    D1EA0B0FEF7D0FE779EE79CFFB1C85E7D7113251D961B1596A5664E694452311
                    C5A36A23B139F3379C9CE406D3926508624F29CA33722B557991ACB6DA759B1D
                    AB5E2AC2A5B9980EB8F1EA1A4333D33C1C9C721BFDC65E4E7349B2FD82E8A280
                    90572F2D6EDFBFB136D5151861C8771F550FE2D7C3F8C311B4B08E4FD7991CD3
                    C246AFB98776CE0B6B56602AF1B2F352ECFD876BF63AFABC7FE20EB9884AD81F
                    0EE30BE9897D52FB8F4F4B77737CBC99E19BAA87E3B11D78E9118179856FF9AA
                    AEFAC31F0A72EDFCE3BB452CA6108A44F11B0601F9EBBFF333746EBA47F1B232
                    063427EBDAAA095DF6B5D2CD2111185068E45AD347FB2A6FCC5CC113D4C8494B
                    471781A011615CC857ABEE506C2F4B5CB679F46B3EBFF413F479EFD2166B1481
                    2E25FF70CEC467EFBCEB3877AF834F56EEA365B68195F674A6FC2ABF56DDE5D5
                    ECD2449B8E0E1F60D7F58398D30E989C53690AC505CE2A793F664D56BCB9E6E5
                    2D19BBF9A0E87D069EF4F3F1ED1ACE5776519C5D9620B78C1EA0AEE7A0542607
                    D72A981B53690E35CBE998C23796DEF72ACB370C79A6E8AEF89BF4A56964C835
                    482181D6D17ABEEC6D48904DDD0223EBE1F15F7D9CE3CA82401DFBD756947E37
                    AB4C509251C2D50A27569B0D6BDA125AC7EAF9A2BB01435EDC34257DA248FA6E
                    85EB833F73875B1239A3B08182D46A9B33FB35EB8AA0BCFDE6C2729AD69FE2B2
                    FB183BBBBF271A49FA6E2E17A65E8790D3CB09E3A2F8B14BA21D712359D9C6D6
                    94372C2D2905165B48189936D09E24BD1687BB5004A479E6C308BFCC9F658231
                    895E10F42B4937DAA9663B6B957AF253F3B1A68AE3A501C16562DAE5F22DCE0D
                    8C7BE9D4DB798447F23B057F08D4A7B320DD6139B9BCCD6A6A7058DE22CB5648
                    4C5164181E316C0EF2009F94FD58F27E17DC167816ACBCB896083205522F7259
                    5E1164272B54E30F182F39B9FB5E1CA6C5B5D01390DAC910D892F1F808079253
                    187E7E9CFF07092151D68910EF880000000049454E44AE426082}
                  Transparent = True
                end
                object IMAGNegado: TImage
                  Left = 141
                  Top = 13
                  Width = 16
                  Height = 16
                  AutoSize = True
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                    001008060000001FF3FF610000002B744558744372656174696F6E2054696D65
                    004672203135204E6F7620323030322031303A30383A3239202B30313030F5A2
                    62C60000000774494D4507D30A06140B174CADD4FC000000097048597300000A
                    F000000AF00142AC34980000000467414D410000B18F0BFC6105000002F74944
                    415478DA5D535B485451145DF7CE9D3B2F1F9323193E981F31B3A20FD17EA294
                    C0AFD0FE8C08C21FA33E7A7C988A45207DF59141106588143D30222B1184327A
                    A7480FCD46C7741C5FE8E8A0335EE771DFED3B8E317560DD7DCEB97BADB3CFD9
                    7B334819D142E407459CE5B2D38E98B7390B5559C57A706D6A762DDEF75EC0DD
                    D608A6C84D22E85B1C666B2216E144DC9D7FCB51539B6E72B980391F105C0484
                    10E44000BE9139E14B50BC5417C243720F11D4BF020659292FBF67AF3DC9C237
                    0ECC7B81C80685142144694E568AC2EF17B4FB0BEAE52B5174126DD910615628
                    6CDE9DEFC9B8D0928E914F407885B6493C1223F296082166208677D3BA707A59
                    A91FD3F08A0456195F1EAEB91BCE35B09C06CC8E6FDE2E2E92737453C088C488
                    C0584B2246A34E744C861EDD10719D3C4799F93D364F5E73CBAE99CE4E8433F2
                    E0E454D8391D5633C07326C0446009160BF889AF189D93F1615AF09E89C85749
                    A08F5938B043CA3D5A6D5EEAEA42F8F5226C8A049BDD0E1B29D8C9834D4D5363
                    0D065F7C862F10938E8722ADB4F38099DD9F2315549499634383987CE2439A12
                    879D04AC74A29537814F49957EB11A3DCF7F62351014EBD6376ED2563B335268
                    19DB5B55568C895F104A0FC36CB383B559C1F0168ADE0C96311EC5049DE7218F
                    8FA0BD771151FFB0B751527A1202BD5968AB3A54749E0B2F019A710C65405600
                    BA0A241D3A99184196818F5C1EFC6A26FAFD9EEE6EE06BE20A4D0E941CCBB10C
                    ECCB453A5422E83A188D94540D92A243243D95C8BFB54CBC35ED86C3FF5D688C
                    C79E526EDE241E913E96DB693855E142DB4E175899B81A9114B2C65CA4607EA0
                    00C36C3E9C8B5EEDCEFAEAE36FC00CF19E25D2987CA3AC662BEA2BED6C536EB6
                    3583E13844351E2B7060467741A5026202D34287187F49E420F9F713A8EAB0B6
                    F5C094686C2F6271B092417531672ACD345BDC12451094C4992145F550D985A8
                    94A83930401822AC244A3925CB868893E0269424AD33F9CF681E236C4FD2FEDB
                    4C29C3581BA94F27389273245B98EA19C2FFEDFC07F72753E0E73544FB000000
                    0049454E44AE426082}
                  Transparent = True
                end
                object IMAGNaoAplica: TImage
                  Left = 56
                  Top = 34
                  Width = 16
                  Height = 16
                  AutoSize = True
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                    001008060000001FF3FF610000002B744558744372656174696F6E2054696D65
                    00536F203132204F6B7420323030332032333A34323A3137202B30313030AD5F
                    A7170000000774494D4507D30A0E0B0B2828053563000000097048597300000A
                    F000000AF00142AC34980000000467414D410000B18F0BFC6105000001F14944
                    415478DAA5935D4893511CC67FEF186313090A54BC2888A834882EFA106F0ABA
                    2C8641104197E27589D08D1741DD595654102E820A22C9C0E5065D95861294AE
                    9BA0189105C2686638B7BDFB7ABF7A962B582B54FAC3EFE69CE73CE739FF738E
                    C17F96B181396F5D06EF221CF99EA5DFE7370ED996C7D232730B4BDC198830A9
                    E98270FF69F0E52103A5A6D0D0F6035B7C017F05CC02A5AF2689046EE23D4367
                    47B821D93761371854770EB4865EECEAD9E3239F856C1EF2396152A978CC4CE3
                    5E1FA33F36CB63C9177F25F96D30758568F7E96D3D81CD4D502A2BACD2E67278
                    669142D123B30C774799BCF0884B92CF8A7C9DC1CBAB46EAF099B6761C1F380E
                    9465629AD8258BA2BC2A3AD1D338E9DE9B5C943C2A527506CF2F933A7AB2B91D
                    4B43AED2D9166EB142B9A430F2B265107B46BAEF162392DF17F3750663834C1C
                    3F6684432103CFF5706C0F4B8B14808A4C56562032CAF4F0045392DF6B3018EE
                    25DCB597685737BE6A5C5BA770ACD5E8B67A9E788B7BEE360F3E2F3227F978C3
                    1154CDD7FA18DCB793F3BB3BF00583AB0B331948267123719EC4133F17C5C49B
                    8626AAD43D5AC30739B57F0727B6B6D0E9A815C9053E8EBFE6D37C1A59F14ACC
                    8874C335D6CA2F5A4487E8146DB5F1EABD7FA8F1F787F447123D063689606D4C
                    6D24BBE6535EE39FACEF336DB47E008BE4CF11436A3C840000000049454E44AE
                    426082}
                  Transparent = True
                end
              end
            end
            object KRDGPDU: TKRKDBGrid
              AlignWithMargins = True
              Left = 4
              Top = 63
              Width = 752
              Height = 158
              Margins.Left = 4
              Margins.Top = 6
              Margins.Right = 6
              Margins.Bottom = 5
              Align = alClient
              DataSource = KRDMSegurancaEPermissoes.DTSRPermissoesDosUsuarios
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
              OptionsEx = [dgAutomaticColumSizes]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              RowColors = <
                item
                  BackgroundColor = clBtnFace
                  ForegroundColor = clNone
                end>
              VariableWidthColumns = '<entidade>'
              OnCellClick = KRDGPDUCellClick
              OnDrawColumnCell = DoDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'entidade'
                  Width = 526
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'sm_ler'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clInfoBk
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Width = 50
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'sm_inserir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Width = 50
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'sm_alterar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clInfoBk
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Width = 50
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'sm_excluir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Width = 50
                  Visible = True
                end>
            end
          end
          object TBSHPDG: TTabSheet
            Caption = 'Entidades e permiss'#245'es do grupo selecionado'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object PANLGRULayerTop: TPanel
              Left = 0
              Top = 0
              Width = 762
              Height = 57
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object GroupBoxGrupoConsultaRapida2: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 0
                Width = 491
                Height = 57
                Margins.Left = 4
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alClient
                Caption = ' Localiza'#231#227'o r'#225'pida '
                TabOrder = 0
                DesignSize = (
                  491
                  57)
                object LabelGrupoConsultarTipoDaEntidade: TLabel
                  Left = 387
                  Top = 13
                  Width = 20
                  Height = 13
                  Anchors = [akTop, akRight]
                  Caption = 'Tipo'
                  ExplicitLeft = 616
                end
                object LabelE2: TLabel
                  Left = 374
                  Top = 31
                  Width = 6
                  Height = 13
                  Anchors = [akTop, akRight]
                  Caption = 'e'
                  ExplicitLeft = 313
                end
                object ComboBox_PDG_TI_TIPO: TComboBox
                  Left = 387
                  Top = 27
                  Width = 96
                  Height = 21
                  Style = csDropDownList
                  Anchors = [akTop, akRight]
                  ItemIndex = 0
                  TabOrder = 1
                  Text = 'Todos'
                  Items.Strings = (
                    'Todos'
                    'Tabela'
                    'A'#231#227'o')
                end
                object LabeledEdit_PDG_VA_NOME: TLabeledEdit
                  Left = 8
                  Top = 27
                  Width = 359
                  Height = 21
                  Anchors = [akLeft, akTop, akRight]
                  CharCase = ecUpperCase
                  EditLabel.Width = 137
                  EditLabel.Height = 13
                  EditLabel.Caption = 'Nome / Identifica'#231#227'o cont'#233'm'
                  LabelSpacing = 1
                  TabOrder = 0
                end
              end
              object GroupBoxGrupoLegenda: TGroupBox
                AlignWithMargins = True
                Left = 501
                Top = 0
                Width = 255
                Height = 57
                Margins.Top = 0
                Margins.Right = 6
                Margins.Bottom = 0
                Align = alRight
                Caption = ' Legenda '
                TabOrder = 1
                object ImageGrupoSim: TImage
                  Left = 8
                  Top = 13
                  Width = 16
                  Height = 16
                  AutoSize = True
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                    001008060000001FF3FF610000002B744558744372656174696F6E2054696D65
                    004672203135204E6F7620323030322031303A30383A3239202B30313030F5A2
                    62C60000000774494D4507D30A06140A2A0DDEA9AC000000097048597300000A
                    F000000AF00142AC34980000000467414D410000B18F0BFC6105000003284944
                    415478DA55937D68536714C67F3736A96D6DFA613B61B1DDFAC5E6948943288C
                    EA4A2DF8CFCAC6C650FF90C2869B6E1DC24464281DAC73FD6B30D45270AD6255
                    FC18223AAC5B5BB0ADE83E32BF2ADAAE9F6B6C6D9BB4D96D6E127373939B9DA4
                    D1EA0B0FEF7D0FE779EE79CFFB1C85E7D7113251D961B1596A5664E694452311
                    C5A36A23B139F3379C9CE406D3926508624F29CA33722B557991ACB6DA759B1D
                    AB5E2AC2A5B9980EB8F1EA1A4333D33C1C9C721BFDC65E4E7349B2FD82E8A280
                    90572F2D6EDFBFB136D5151861C8771F550FE2D7C3F8C311B4B08E4FD7991CD3
                    C246AFB98776CE0B6B56602AF1B2F352ECFD876BF63AFABC7FE20EB9884AD81F
                    0EE30BE9897D52FB8F4F4B77737CBC99E19BAA87E3B11D78E9118179856FF9AA
                    AEFAC31F0A72EDFCE3BB452CA6108A44F11B0601F9EBBFF333746EBA47F1B232
                    063427EBDAAA095DF6B5D2CD2111185068E45AD347FB2A6FCC5CC113D4C8494B
                    471781A011615CC857ABEE506C2F4B5CB679F46B3EBFF413F479EFD2166B1481
                    2E25FF70CEC467EFBCEB3877AF834F56EEA365B68195F674A6FC2ABF56DDE5D5
                    ECD2449B8E0E1F60D7F58398D30E989C53690AC505CE2A793F664D56BCB9E6E5
                    2D19BBF9A0E87D069EF4F3F1ED1ACE5776519C5D9620B78C1EA0AEE7A0542607
                    D72A981B53690E35CBE998C23796DEF72ACB370C79A6E8AEF89BF4A56964C835
                    482181D6D17ABEEC6D48904DDD0223EBE1F15F7D9CE3CA82401DFBD756947E37
                    AB4C509251C2D50A27569B0D6BDA125AC7EAF9A2BB01435EDC34257DA248FA6E
                    85EB833F73875B1239A3B08182D46A9B33FB35EB8AA0BCFDE6C2729AD69FE2B2
                    FB183BBBBF271A49FA6E2E17A65E8790D3CB09E3A2F8B14BA21D712359D9C6D6
                    94372C2D2905165B48189936D09E24BD1687BB5004A479E6C308BFCC9F658231
                    895E10F42B4937DAA9663B6B957AF253F3B1A68AE3A501C16562DAE5F22DCE0D
                    8C7BE9D4DB798447F23B057F08D4A7B320DD6139B9BCCD6A6A7058DE22CB5648
                    4C5164181E316C0EF2009F94FD58F27E17DC167816ACBCB896083205522F7259
                    5E1164272B54E30F182F39B9FB5E1CA6C5B5D01390DAC910D892F1F808079253
                    187E7E9CFF07092151D68910EF880000000049454E44AE426082}
                  Transparent = True
                end
                object ImageGrupoNao: TImage
                  Left = 141
                  Top = 13
                  Width = 16
                  Height = 16
                  AutoSize = True
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                    001008060000001FF3FF610000002B744558744372656174696F6E2054696D65
                    004672203135204E6F7620323030322031303A30383A3239202B30313030F5A2
                    62C60000000774494D4507D30A06140B174CADD4FC000000097048597300000A
                    F000000AF00142AC34980000000467414D410000B18F0BFC6105000002F74944
                    415478DA5D535B485451145DF7CE9D3B2F1F9323193E981F31B3A20FD17EA294
                    C0AFD0FE8C08C21FA33E7A7C988A45207DF59141106588143D30222B1184327A
                    A7480FCD46C7741C5FE8E8A0335EE771DFED3B8E317560DD7DCEB97BADB3CFD9
                    7B334819D142E407459CE5B2D38E98B7390B5559C57A706D6A762DDEF75EC0DD
                    D608A6C84D22E85B1C666B2216E144DC9D7FCB51539B6E72B980391F105C0484
                    10E44000BE9139E14B50BC5417C243720F11D4BF020659292FBF67AF3DC9C237
                    0ECC7B81C80685142144694E568AC2EF17B4FB0BEAE52B5174126DD910615628
                    6CDE9DEFC9B8D0928E914F407885B6493C1223F296082166208677D3BA707A59
                    A91FD3F08A0456195F1EAEB91BCE35B09C06CC8E6FDE2E2E92737453C088C488
                    C0584B2246A34E744C861EDD10719D3C4799F93D364F5E73CBAE99CE4E8433F2
                    E0E454D8391D5633C07326C0446009160BF889AF189D93F1615AF09E89C85749
                    A08F5938B043CA3D5A6D5EEAEA42F8F5226C8A049BDD0E1B29D8C9834D4D5363
                    0D065F7C862F10938E8722ADB4F38099DD9F2315549499634383987CE2439A12
                    879D04AC74A29537814F49957EB11A3DCF7F62351014EBD6376ED2563B335268
                    19DB5B55568C895F104A0FC36CB383B559C1F0168ADE0C96311EC5049DE7218F
                    8FA0BD771151FFB0B751527A1202BD5968AB3A54749E0B2F019A710C65405600
                    BA0A241D3A99184196818F5C1EFC6A26FAFD9EEE6EE06BE20A4D0E941CCBB10C
                    ECCB453A5422E83A188D94540D92A243243D95C8BFB54CBC35ED86C3FF5D688C
                    C79E526EDE241E913E96DB693855E142DB4E175899B81A9114B2C65CA4607EA0
                    00C36C3E9C8B5EEDCEFAEAE36FC00CF19E25D2987CA3AC662BEA2BED6C536EB6
                    3583E13844351E2B7060467741A5026202D34287187F49E420F9F713A8EAB0B6
                    F5C094686C2F6271B092417531672ACD345BDC12451094C4992145F550D985A8
                    94A83930401822AC244A3925CB868893E0269424AD33F9CF681E236C4FD2FEDB
                    4C29C3581BA94F27389273245B98EA19C2FFEDFC07F72753E0E73544FB000000
                    0049454E44AE426082}
                  Transparent = True
                end
                object LabelGrupoSim: TLabel
                  Left = 27
                  Top = 14
                  Width = 99
                  Height = 13
                  Caption = 'Permiss'#227'o concedida'
                end
                object LabelGrupoNao: TLabel
                  Left = 160
                  Top = 14
                  Width = 87
                  Height = 13
                  Caption = 'Permiss'#227'o negada'
                end
                object ImageGrupoNaoSeAplica: TImage
                  Left = 56
                  Top = 34
                  Width = 16
                  Height = 16
                  AutoSize = True
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                    001008060000001FF3FF610000002B744558744372656174696F6E2054696D65
                    00536F203132204F6B7420323030332032333A34323A3137202B30313030AD5F
                    A7170000000774494D4507D30A0E0B0B2828053563000000097048597300000A
                    F000000AF00142AC34980000000467414D410000B18F0BFC6105000001F14944
                    415478DAA5935D4893511CC67FEF186313090A54BC2888A834882EFA106F0ABA
                    2C8641104197E27589D08D1741DD595654102E820A22C9C0E5065D95861294AE
                    9BA0189105C2686638B7BDFB7ABF7A962B582B54FAC3EFE69CE73CE739FF738E
                    C17F96B181396F5D06EF221CF99EA5DFE7370ED996C7D232730B4BDC198830A9
                    E98270FF69F0E52103A5A6D0D0F6035B7C017F05CC02A5AF2689046EE23D4367
                    47B821D93761371854770EB4865EECEAD9E3239F856C1EF2396152A978CC4CE3
                    5E1FA33F36CB63C9177F25F96D30758568F7E96D3D81CD4D502A2BACD2E67278
                    669142D123B30C774799BCF0884B92CF8A7C9DC1CBAB46EAF099B6761C1F380E
                    9465629AD8258BA2BC2A3AD1D338E9DE9B5C943C2A527506CF2F933A7AB2B91D
                    4B43AED2D9166EB142B9A430F2B265107B46BAEF162392DF17F3750663834C1C
                    3F6684432103CFF5706C0F4B8B14808A4C56562032CAF4F0045392DF6B3018EE
                    25DCB597685737BE6A5C5BA770ACD5E8B67A9E788B7BEE360F3E2F3227F978C3
                    1154CDD7FA18DCB793F3BB3BF00583AB0B331948267123719EC4133F17C5C49B
                    8626AAD43D5AC30739B57F0727B6B6D0E9A815C9053E8EBFE6D37C1A59F14ACC
                    8874C335D6CA2F5A4487E8146DB5F1EABD7FA8F1F787F447123D063689606D4C
                    6D24BBE6535EE39FACEF336DB47E008BE4CF11436A3C840000000049454E44AE
                    426082}
                  Transparent = True
                end
                object LabelGrupoNaoSeAplica: TLabel
                  Left = 75
                  Top = 36
                  Width = 123
                  Height = 13
                  Caption = 'A permiss'#227'o n'#227'o se aplica'
                end
              end
            end
            object KRDGPDG: TKRKDBGrid
              AlignWithMargins = True
              Left = 4
              Top = 63
              Width = 752
              Height = 158
              Margins.Left = 4
              Margins.Top = 6
              Margins.Right = 6
              Margins.Bottom = 5
              Align = alClient
              DataSource = KRDMSegurancaEPermissoes.DTSRPermissoesDosGrupos
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
              OptionsEx = [dgAutomaticColumSizes]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              RowColors = <
                item
                  BackgroundColor = clBtnFace
                  ForegroundColor = clNone
                end>
              VariableWidthColumns = '<Entidade>'
              OnCellClick = KRDGPDGCellClick
              OnDrawColumnCell = DoDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Entidade'
                  Width = 526
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'sm_ler'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clInfoBk
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Width = 50
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'sm_inserir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Width = 50
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'sm_alterar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clInfoBk
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Width = 50
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'sm_excluir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Width = 50
                  Visible = True
                end>
            end
          end
        end
      end
    end
    object TabSheet_USU: TTabSheet
      Caption = 'Gerenciamento de usu'#225'rios'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBoxUsuariosConsultar2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 768
        Height = 57
        Margins.Right = 5
        Align = alTop
        Caption = ' Localiza'#231#227'o r'#225'pida '
        TabOrder = 0
        DesignSize = (
          768
          57)
        object LabelE3: TLabel
          Left = 644
          Top = 31
          Width = 12
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'ou'
          ExplicitLeft = 873
        end
        object LabeledEdit_USU_VA_NOME2: TLabeledEdit
          Left = 8
          Top = 27
          Width = 630
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome'
          LabelSpacing = 1
          TabOrder = 0
          OnKeyPress = LabeledEdit_USU_VA_NOME2KeyPress
        end
        object LabeledEdit_USU_VA_LOGIN2: TLabeledEdit
          Left = 662
          Top = 27
          Width = 98
          Height = 21
          Anchors = [akTop, akRight]
          CharCase = ecUpperCase
          EditLabel.Width = 25
          EditLabel.Height = 13
          EditLabel.Caption = 'Login'
          LabelSpacing = 1
          TabOrder = 1
          OnKeyPress = LabeledEdit_USU_VA_LOGIN2KeyPress
        end
      end
      object PANLGerenciamentoDeUsuarios: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 66
        Width = 768
        Height = 424
        Margins.Right = 5
        Margins.Bottom = 4
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object PANLUsariosEGrupos: TPanel
          AlignWithMargins = True
          Left = 488
          Top = 0
          Width = 280
          Height = 424
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object DBNAUsuarios: TDBNavigator
            Left = 0
            Top = 0
            Width = 280
            Height = 25
            DataSource = KRDMSegurancaEPermissoes.DTSRUsuarios
            Align = alTop
            TabOrder = 0
          end
          object GroupBoxUsuariosCadastrar: TGroupBox
            Left = 0
            Top = 25
            Width = 280
            Height = 160
            Align = alTop
            Caption = ' Dados do usu'#225'rio '
            TabOrder = 1
            DesignSize = (
              280
              160)
            object KLDE_USU_VA_NOME: TKRKLabeledDBEdit
              Left = 8
              Top = 27
              Width = 264
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'VA_NOME'
              DataSource = KRDMSegurancaEPermissoes.DTSRUsuarios
              TabOrder = 0
              EditLabel.Width = 27
              EditLabel.Height = 13
              EditLabel.Caption = 'Nome'
              LabelSpacing = 1
            end
            object KLDE_USU_VA_LOGIN: TKRKLabeledDBEdit
              Left = 8
              Top = 68
              Width = 264
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'VA_LOGIN'
              DataSource = KRDMSegurancaEPermissoes.DTSRUsuarios
              TabOrder = 1
              EditLabel.Width = 25
              EditLabel.Height = 13
              EditLabel.Caption = 'Login'
              LabelSpacing = 1
            end
            object KLDE_USU_VA_EMAIL: TKRKLabeledDBEdit
              Left = 8
              Top = 109
              Width = 264
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'VA_EMAIL'
              DataSource = KRDMSegurancaEPermissoes.DTSRUsuarios
              TabOrder = 2
              EditLabel.Width = 28
              EditLabel.Height = 13
              EditLabel.Caption = 'E-mail'
              LabelSpacing = 1
            end
            object DBCBSuperUsuario: TDBCheckBox
              Left = 8
              Top = 136
              Width = 79
              Height = 17
              Hint = 
                'Um superusu'#225'rio tem permiss'#227'o completa e irrestrita em todo o si' +
                'stema independentemente das permiss'#245'es do seu usu'#225'rio ou de seus' +
                ' grupos'
              AllowGrayed = True
              Caption = 'Superusu'#225'rio'
              DataField = 'bo_superusuario'
              DataSource = KRDMSegurancaEPermissoes.DTSRUsuarios
              TabOrder = 3
              ValueChecked = 'TRUE'
              ValueUnchecked = 'FALSE'
            end
          end
          object GroupBox_GDU: TGroupBox
            Left = 0
            Top = 185
            Width = 280
            Height = 208
            Align = alClient
            Caption = ' Grupos aos quais o usu'#225'rio selecionado pertence '
            TabOrder = 2
            DesignSize = (
              280
              208)
            object Panel_GDU_Info: TPanel
              Left = 8
              Top = 15
              Width = 264
              Height = 185
              Anchors = [akLeft, akTop, akRight, akBottom]
              BevelOuter = bvNone
              TabOrder = 0
              object KRDGGruposDoUsuario: TKRKDBGrid
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 264
                Height = 156
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 29
                Align = alClient
                DataSource = KRDMSegurancaEPermissoes.DTSRGruposDosUsuarios
                Options = [dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                OptionsEx = [dgAutomaticColumSizes]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                RowColors = <>
                VariableWidthColumns = '<grupo>'
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'grupo'
                    Width = 242
                    Visible = True
                  end>
              end
            end
            object BitBtn_GDU_Adicionar: TBitBtn
              Left = 24
              Top = 175
              Width = 112
              Height = 25
              Anchors = [akBottom]
              Caption = 'Adicionar grupos'
              DoubleBuffered = True
              Glyph.Data = {
                36080000424D3608000000000000360000002800000020000000100000000100
                2000000000000008000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00015B0200015B0200015B0200015B
                0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF003737370037373700373737003737
                3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00015B020004E00A0003E30900015B
                0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0037373700898989008B8B8B003737
                3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00015B020004DC0B0004E00A00015B
                0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF003737370087878700898989003737
                3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00015B020005D80C0004DC0B00015B
                0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF003737370085858500878787003737
                3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF000155020005D50E0005D80C00015B
                0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF003333330084848400858585003737
                3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF000155020005D10F0005D50E00015B
                0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF003333330082828200848484003737
                3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00015B0200015B
                0200015B0200015B0200015B0200015502000155020006CD100005D10F000155
                0200015B0200015B0200015B0200015B0200015B0200015B0200373737003737
                3700373737003737370037373700333333003333330080808000828282003333
                3300373737003737370037373700373737003737370037373700015B020009B5
                190009B8170008BC160008BF150007C3140007C6130006CA110006CD100005D1
                0F0005D50E0005D80C0004DC0B0004E00A0003E30900015B0200373737007575
                75007676760078787800797979007B7B7B007D7D7D007E7E7E00808080008282
                8200848484008585850087878700898989008B8B8B0037373700015B02000AB1
                1A0009B5190009B8170008BC160008BF150007C3140007C6130006CA110006CD
                100005D10F0005D50E0005D80C0004DC0B0004E00A00015B0200373737007373
                7300757575007676760078787800797979007B7B7B007D7D7D007E7E7E008080
                8000828282008484840085858500878787008989890037373700015B0200015B
                0200015B0200015B0200015B0200015B0200015B020007C3140007C61300015B
                0200015B0200015B0200015B0200015B0200015B0200015B0200373737003737
                370037373700373737003737370037373700373737007B7B7B007D7D7D003737
                3700373737003737370037373700373737003737370037373700FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00015B020008BF150007C31400015B
                0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0037373700797979007B7B7B003737
                3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00015B020008BC160008BF1500015B
                0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF003737370078787800797979003737
                3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00015B020009B8170008BC1600015B
                0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF003737370076767600787878003737
                3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00015B020009B5190009B81700015B
                0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF003737370075757500767676003737
                3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00015B02000AB11A0009B51900015B
                0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF003737370073737300757575003737
                3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00015B0200015B0200015B0200015B
                0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF003737370037373700373737003737
                3700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Layout = blGlyphRight
              NumGlyphs = 2
              ParentDoubleBuffered = False
              TabOrder = 2
            end
            object BitBtn_GDU_Remover: TBitBtn
              Left = 142
              Top = 175
              Width = 112
              Height = 25
              Anchors = [akBottom]
              Caption = 'Remover grupos'
              DoubleBuffered = True
              Glyph.Data = {
                36080000424D3608000000000000360000002800000020000000100000000100
                2000000000000008000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00015B0200015B
                0200015B0200015B0200015B0200015B0200015B0200015B0200015B0200015B
                0200015B0200015B0200015B0200015B0200015B0200015B0200373737003737
                3700373737003737370037373700373737003737370037373700373737003737
                3700373737003737370037373700373737003737370037373700015B020009B5
                190009B8170008BC160008BF150007C3140007C6130006CA110006CD100005D1
                0F0005D50E0005D80C0004DC0B0004E00A0003E30900015B0200373737007575
                75007676760078787800797979007B7B7B007D7D7D007E7E7E00808080008282
                8200848484008585850087878700898989008B8B8B0037373700015B02000AB1
                1A0009B5190009B8170008BC160008BF150007C3140007C6130006CA110006CD
                100005D10F0005D50E0005D80C0004DC0B0004E00A00015B0200373737007373
                7300757575007676760078787800797979007B7B7B007D7D7D007D7E7E008080
                8000828282008484840085858500878787008989890037373700015B0200015B
                0200015B0200015B0200015B0200015B0200015B0200015B0200015B0200015B
                0200015B0200015B0200015B0200015B0200015B0200015B0200373737003737
                3700373737003737370037373700373737003737370037373700373737003737
                3700373737003737370037373700373737003737370037373700FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Layout = blGlyphRight
              NumGlyphs = 2
              ParentDoubleBuffered = False
              Spacing = 5
              TabOrder = 1
            end
          end
          object BUTNRessetarSenhas: TButton
            AlignWithMargins = True
            Left = 0
            Top = 399
            Width = 280
            Height = 25
            Margins.Left = 0
            Margins.Top = 6
            Margins.Right = 0
            Margins.Bottom = 0
            Action = KRDMSegurancaEPermissoes.ACTNRessetarSenhas
            Align = alBottom
            TabOrder = 3
          end
        end
        object PANLKRDGUsuarios: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 482
          Height = 424
          Margins.Left = 0
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object KRDGUsuarios: TKRKDBGrid
            Left = 0
            Top = 0
            Width = 482
            Height = 374
            Align = alClient
            DataSource = KRDMSegurancaEPermissoes.DTSRUsuarios
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEx = [dgPersistentSelection, dgAutomaticColumSizes]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            RowColors = <
              item
                BackgroundColor = clBtnFace
                ForegroundColor = clNone
              end>
            VariableWidthColumns = '<nome>'
            Columns = <
              item
                Expanded = False
                FieldName = 'nome'
                Width = 307
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'login'
                Title.Alignment = taCenter
                Width = 120
                Visible = True
              end>
          end
          object GRBXKRDGUsuarios: TGroupBox
            Left = 0
            Top = 374
            Width = 482
            Height = 50
            Align = alBottom
            Caption = ' Filtros definidos '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object LABLUSUFiltros: TLabel
              AlignWithMargins = True
              Left = 8
              Top = 15
              Width = 466
              Height = 26
              Margins.Left = 6
              Margins.Top = 0
              Margins.Right = 6
              Margins.Bottom = 7
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Caption = 
                'Nenhum registro ser'#225' exibido at'#233' que um filtro seja definido ou ' +
                'que o bot'#227'o atualizar seja pressionado'
              Color = clGreen
              ParentColor = False
              Transparent = True
              Layout = tlCenter
              WordWrap = True
              ExplicitLeft = 5
              ExplicitWidth = 472
              ExplicitHeight = 30
            end
          end
        end
      end
    end
    object TabSheet_GRU: TTabSheet
      Caption = 'Gerenciamento de grupos'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBoxGruposConsultar: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 768
        Height = 57
        Margins.Right = 5
        Align = alTop
        Caption = ' Localiza'#231#227'o r'#225'pida '
        TabOrder = 0
        DesignSize = (
          768
          57)
        object LabeledEdit_GRU_VA_NOME2: TLabeledEdit
          Left = 8
          Top = 27
          Width = 752
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome'
          LabelSpacing = 1
          TabOrder = 0
          OnKeyPress = LabeledEdit_GRU_VA_NOME2KeyPress
        end
      end
      object GroupBoxGruposCadastrar: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 435
        Width = 768
        Height = 56
        Margins.Top = 0
        Margins.Right = 5
        Align = alBottom
        Caption = ' Dados do grupo '
        TabOrder = 1
        DesignSize = (
          768
          56)
        object KLDE_GRU_VA_NOME: TKRKLabeledDBEdit
          Left = 8
          Top = 27
          Width = 210
          Height = 21
          DataField = 'va_nome'
          DataSource = KRDMSegurancaEPermissoes.DTSRGrupos
          TabOrder = 0
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome'
          LabelSpacing = 1
        end
        object KLDE_GRU_VA_DESCRICAO: TKRKLabeledDBEdit
          Left = 224
          Top = 27
          Width = 537
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'va_descricao'
          DataSource = KRDMSegurancaEPermissoes.DTSRGrupos
          TabOrder = 1
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o'
          LabelSpacing = 1
        end
      end
      object DBNAGrupos: TDBNavigator
        AlignWithMargins = True
        Left = 3
        Top = 410
        Width = 768
        Height = 25
        Margins.Right = 5
        Margins.Bottom = 0
        DataSource = KRDMSegurancaEPermissoes.DTSRGrupos
        Align = alBottom
        TabOrder = 2
      end
      object KRDGGrupos: TKRKDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 66
        Width = 768
        Height = 288
        Margins.Right = 5
        Align = alClient
        DataSource = KRDMSegurancaEPermissoes.DTSRGrupos
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEx = [dgAllowTitleClick, dgAutomaticColumSizes]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        RowColors = <
          item
            BackgroundColor = clBtnFace
            ForegroundColor = clNone
          end>
        VariableWidthColumns = '<va_descricao>'
        Columns = <
          item
            Expanded = False
            FieldName = 'va_nome'
            Width = 233
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'va_descricao'
            Width = 494
            Visible = True
          end>
      end
      object GRBXGRUFiltros: TGroupBox
        Left = 0
        Top = 357
        Width = 776
        Height = 50
        Align = alBottom
        Caption = ' Filtros definidos '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object LABLGRUFiltros: TLabel
          AlignWithMargins = True
          Left = 8
          Top = 15
          Width = 760
          Height = 26
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Margins.Bottom = 7
          Align = alClient
          Alignment = taCenter
          AutoSize = False
          Caption = 
            'Nenhum registro ser'#225' exibido at'#233' que um filtro seja definido ou ' +
            'que o bot'#227'o atualizar seja pressionado'
          Color = clGreen
          ParentColor = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
          ExplicitLeft = 5
          ExplicitWidth = 472
          ExplicitHeight = 30
        end
      end
    end
  end
  inherited TLBRAcoes: TToolBar
    Width = 784
    TabOrder = 1
    ExplicitWidth = 784
  end
  inherited IMLIToolBarAtivo: TImageList
    Bitmap = {
      494C0101020008001C0120002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000010000000A0000001B0000002200000024000000260000
      0026000000260000002600000026000000260000002600000025000000240000
      0023000000220000001C0000000C000000020000000000000000000000000000
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
      000000000001000000100000003A0000006D00000083000000890000008C0000
      008D0000008E0000008E0000008E0000008E0000008D0000008C000000880000
      0085000000830000006F0000003C0000000C0000000000000000000000000000
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
      00000000000C070300535B2000CE721F00E3603725EB8D959CF5969CA5F5A2AB
      B2F5AEB1B3F5A7A8A9F5959595F5888888F5687177F55F1600E6691C00E3681B
      00E3521700D20A03009E000000750000001D0000000000000000000000000000
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
      000008030042913B00E8C06C20FFCE7B25FF9F774FFFB5A491FFD47D22FFD785
      25FFE8CCA6FFFFFFFFFFFBFBFBFFE4E4E4FFB1BAC4FFBD7925FFDB9133FFE9B9
      76FFD28731FF641D00DF0000008B000000250000000000000000000000000000
      0000000000000000000100000001000000010000000000000000000000000000
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
      0000000000000000000000000000000000010000000100000001000000010000
      00019D4900E7BF6B1FFFC47327FFC7701FFFA17A53FFA69385FFC06312FFC56E
      19FFD2B291FFE6EBF0FFFCFCFCFFF7F7F7FFC1C9D3FFB76F1FFFD4872DFFE0AE
      70FFDF9B3BFF8E2A00F90000008E000000260000000000000000000000000000
      00010000000B0000001B000000210000001A0000000E00000004000000010000
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
      000000000001000000050000000D000000150000001C00000020000000230000
      0025BE5D00F9BF6D27FFBF6C23FFC46A1CFFA7805BFFB39E93FFB04A06FFBB5F
      12FFC2A183FFD1D6DAFFE5E5E5FFFFFFFFFFD8E1EBFFB36A1DFFD2832AFFDFAA
      6CFFDB9537FF8D2900F90000008F000000270000000000000000000000000000
      000A000000360000006D0000007F0000006C0000004A0000002A000000170000
      000A000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00090000001A0000002F0000004900000060000000710000007D000000850000
      008AC05E00F9BB6723FFBC681FFFC06519FFAB835EFFBFA498FFA12C00FFB94F
      00FFB6916CFFBCC0C4FFD3D3D3FFECECECFFE1EAF3FFB66B1BFFD48229FFE0AC
      6FFFD99336FF8D2900F90000008F000000270000000000000000000000010805
      003F7A4700CFA05B00E9512E00C0150B00A00100009A00000085000000620000
      003E000000230000001200000007000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004000000150000
      003A0302026B18121292332626AB533C3CC36F4F4FD7855E5EE68F6464EEC0A8
      A8F6C96401FEB76322FFBA641DFFBC6317FFA88160FFD1E4F3FFBBCBD9FFA6B6
      C3FF909EA9FF96A1ABFFA5AEB8FFB5BFC9FFAABACBFF905619FFA66521FFC68A
      49FFDA9237FF8E2A00F90000008F000000270000000000000000000000047F4A
      00C5F4B871FFFFD3A6FFF3B36DFFDC9028FF9F5A00EA3B2100B20C07009E0000
      00960000007B00000057000000350000001D0000000E00000004000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0006000000120000000700000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000002000000170A0808605741
      41B6C99C9CF7DEAEAEFFE0B0B0FFDDABABFFDCA9A9FFE0ADADFFDCA9A9FFE0BC
      BCFFCC6503FFB65F1DFFB7601BFFB9611AFFB6611AFFB45F1AFFB6611CFFB966
      1DFFBA691FFFBB671DFFB9661CFFB8671AFFB86B1EFFC57526FFC7792AFFCB7E
      2DFFD78F35FF8E2A00F90000008F00000027000000000000000001000018D081
      04FBFFD5A9FFFFCC99FFFFCD99FFFFCE9CFFFFC78EFFEAA34EFFCF7C0FFE7D42
      00D6251400A70502009D0000008F000000700000004A0000002B000000170000
      0008000000010000000000000000000000000000000000000000000000000000
      0017000000460000002400000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000B281F1F7AD7A5A5F8F4CE
      CEFFF6CFCFFFEFC3C3FFE7B8B8FFDDABABFFD9A6A6FFDBA8A8FFD6A3A3FFDCB8
      B8FFCC6703FFB25B1CFFB55C17FFB55A13FFB65B11FFB95B11FFBA5D12FFBB61
      13FFBE6316FFC16717FFC36A19FFC56E1CFFC8711EFFCA7421FFCD7A25FFCC7D
      2CFFD48E34FF8E2B00F90000008F000000270000000000000000140C0054E299
      2EFFFFD0A2FFFFCA95FFFFC993FFFFC78FFFFFC88EFFFFC88EFFFFCA90FFF9B7
      71FFDE9036FFB96400F9552B00C2160B00A10100009B00000085000000610000
      00330000000D0000000100000000000000000000000000000000000000006C2D
      00BF0201006D0000004D00000011000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000100C0C4AE4B9B9FCFFE4E4FFFAD6
      D6FFF2CBCBFFECC0C0FFE5B6B6FFDCA9A9FFD8A4A4FFDAA7A7FFD6A3A3FFDCB8
      B8FFCC6603FFB05618FFB2530DFFAF805CFFAD7B56FFAD7B56FFAD7C55FFAE7D
      57FFAE8056FFAE7E56FFAE8157FFAE8055FFAF8256FFAE8257FFAE885FFFCB79
      25FFD38A33FF8D2B00F90000008F0000002700000000000000013F25008EECAC
      59FFFFCD9BFFFFC993FFFFC891FFFFC78EFFFFC58BFFFFC387FFFFC385FFFFC3
      83FFFFC383FFFFC381FFEEA454FFD27C1FFF954C00EB371B00B20703009D0000
      007B0000002B0000000500000000000000000000000000000000000000019740
      00E81F0C0093000000710000001F000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000574242A3FCDADAFFFFDFDFFFF8D2
      D2FFF2C9C9FFF0C5C5FFF0CCCCFFF0C9C9FFEFC0C0FFECB9B9FFE7B4B4FFE9C4
      C4FFCC6603FFAC5116FFAE4801FFBFCBD5FFE4EBF1FFE2E9EEFFE4EBF0FFE4EB
      F0FFE3EAEFFFDFE5EBFFDDE3E9FFD9DFE5FFD3D9DFFFD2D8DEFFA8B5C6FFCA74
      1DFFD38932FF8D2A00F90000008F000000270000000000000004824900C8F9C2
      84FFFFCB96FFFFC891FFFFC78FFFFFC68CFFFFC489FFFFC386FFFFC183FFFFBF
      7EFFFFBD7AFFFFBC77FFFFBC76FFFFBD75FFFFB769FFE28E38FF9B4C00EE0502
      00930000003D0000000900000000000000000000000000000000000000018D3C
      00E0622800CC0000008B00000033000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C5252B4FFDEDEFFFFDFDFFFFEEA
      EAFFFBE5E5FFDEBEBEFFD4A4A4FFC69393FFBB8989FFBA8787FFB58282FFCEAF
      AFFFCC6602FFA94D14FFAB4300FFC6CDD2FFEFF0F0FFECECECFFD2D2D2FFD5D5
      D5FFD5D5D5FFD4D4D4FFD3D3D3FFD2D2D2FFDCDCDCFFDEDEDEFFAFB8C3FFC870
      19FFD08631FF8D2A00F90000008F000000270000000000000016C37300F8FFCF
      9DFFFFC790FFFFC78EFFFFC68CFFFFC58AFFFFC388FFFFC284FFFFC081FFFFC1
      80FFFFC07CFFFFBE78FFFFBB74FFFFB970FFFFB86CFFFFBD6FFFD37B21FF170B
      008B0000002C0000000500000000000000000000000000000000000000018939
      00DFA84500FC040100950000004D0000000F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000735656B8FFE8E8FFF5E8E8FFE4BF
      BFFFDFB2B2FFEEC0C0FFE8B8B8FFE0ADADFFDCA9A9FFDEABABFFDAA7A7FFDFB9
      B9FFCE6604FFA74810FFA73D00FFCAD2D6FFF2F3F3FFF1F1F1FFD5D5D5FFD7D7
      D7FFD7D7D7FFD6D6D6FFD5D5D5FFD2D2D2FFDDDDDDFFE1E1E1FFB1BCC5FFC76D
      17FFCE8430FF8D2A00F90000008F0000002700000000110A0050DB8E28FFFFCF
      9DFFFFC68DFFFFC68CFFFFC58AFFFFC488FFFFC286FFFFC183FFFFC280FFFCB8
      70FFF0A656FFF1A759FFF3AA5BFFF4AA5BFFF9AB5CFFEB9844FFA05000EF0401
      00460000000E0000000100000000000000000000000000000000000000018B3A
      00E1C6600CFF1508009E00000063000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006D5252B4FBECECFFFDDADAFFFBD5
      D5FFF4CDCDFFEDC1C1FFE5B6B6FFDDABABFFD9A6A6FFDAA7A7FFD6A3A3FFDCB8
      B8FFCD6703FFA3450EFFA43800FFCFD7DBFFF8F8F8FFF8F8F8FFE3E3E3FFE7E7
      E7FFE5E5E5FFE3E3E3FFDFDFDFFFDCDCDCFFE1E1E1FFE3E3E3FFB3BEC7FFC56C
      16FFCD822FFF8D2A00F90000008F0000002700000001391F008AE7A553FFFFCC
      97FFFFC58AFFFFC58AFFFFC488FFFFC386FFFFC283FFFFC081FFFFC181FFF0A7
      58FFAD5700FA4C2800BF5D2F00BD693400BF733800C54F2600A60803003C0000
      0009000000010000000000000000000000000000000000000000000000039A3E
      00EFE27919FF2D1100B1000000750000001D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000695050B1FDDADAFFFFDEDEFFF8D3
      D3FFF2CACAFFECBFBFFFE5B4B4FFDBA8A8FFD7A3A3FFDAA7A7FFD6A3A3FFDCB8
      B8FFCD6703FFA0410AFFA13400FFD2DAE0FFFCFCFCFFFBFBFBFFC4C4C4FFC9C9
      C9FFCACACAFFC9C9C9FFCACACAFFC8C8C8FFDFDFDFFFE3E3E3FFB4BFCAFFC46B
      14FFCE812EFF8D2A00F90000008E0000002600000004794100C5F6C085FFFFC5
      8BFFFFC488FFFFC387FFFFC386FFFFC285FFFFC081FFFFBF7EFFFFBE7CFFFFC3
      83FFC97412FE150B00A20000007E0000002D0000000700000001000000010000
      00000000000000000000000000000000000000000000000000000000000EA846
      00FDF78D20FF4C1D00C900000081000000220000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000856868C4FFE2E2FFFFDCDCFFF9D3
      D3FFF4CBCBFFF3CFCFFFF5D5D5FFF6CFCFFFF4C8C8FFECBCBCFFE2AFAFFFE6C2
      C2FFCE6903FF9D3C08FF9D3000FFD7DFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FFF5F5F5FFEDEDEDFFE7E7E7FFE4E4E4FFB7C1CBFFC86C
      16FFD0832EFF8F2E00F90000008C0000002500000015B96700F6FFD2A4FFFFC3
      86FFFFC287FFFFC488FFFFC487FFFFCC95FFFFC181FFFFBE7BFFFFBD78FFFFBE
      78FFF5AC5FFF7C3D00DD0100009F0000005E0000001A00000002000000000000
      000000000000000000000000000000000000000000000000000005020035B551
      04FFFF9623FF6A2700DF00000087000000240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000896B6BC7FFDFDFFFFFE9E9FFF8E9
      E9FFE2CACAFFDAB5B5FFCF9D9DFFC08D8DFFB98686FFBB8888FFBB8888FFD1B2
      B2FFCD6602FF9A3606FF9B2C00FFD9E1E6FFFFFFFFFFFFFFFFFFBDBDBDFFC1C1
      C1FFC3C3C3FFC3C3C3FFC5C5C5FFC4C4C4FFDEDEDEFFE6E6E6FFBBC2CBFF9950
      0CFFA76825FF973700F9000000760000001E0D07004CD5831FFFFFD6A8FFFFC2
      84FFFFC285FFFFC385FFC86F04FFFEBE7AFFFFD4A7FFFFBC76FFFFBB76FFFFBA
      74FFFFBE78FFD58125FF2C1600AD000000910000004600000011000000010000
      0000000000000000000000000000000000000000000000000001190A006AC962
      0CFFFF9A22FF7D2D00EA00000086000000240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000916E6ECAFFF7F7FFEFDADAFFECC3
      C3FFF5CACAFFEFC2C2FFE8B9B9FFE0AEAEFFDCA9A9FFDEABABFFD9A6A6FFDFB9
      B9FFCE6F11FF9F3C02FF942500FFD9E3E8FFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
      FFFFFBFBFCFFF6F7F7FFF2F2F3FFEBECECFFE9EAEAFFE8E9E9FFBBC5CFFFB363
      15FFB86C23FF7B2F00E10000003F0000000D2F190086E39D4CFFFFD3A4FFFFC1
      80FFFFC78CFFD78528FF7D4100D9DB882CFFFFD19FFFFFCA94FFFFBA70FFFFB9
      70FFFFB86FFFFFB96DFFB45B01FA0E0600A2000000830000003C0000000F0000
      000200000000000000000000000000000000000000010000000B4B1E00B2E37A
      15FFFF971FFF792B00E90000007F000000210000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000644C4CABFBDCDCFFFFDEDEFFF9D5
      D5FFF2CBCBFFECC0C0FFE5B6B6FFDDABABFFD9A6A6FFDAA7A7FFD6A3A3FFDCB8
      B8FFCA8A6EFFCE6F15FFCF5C06FFCACBCDFFD4CECBFFD3CCC8FFD1CCC9FFCEC7
      C4FFCAC4C0FFC1BBB6FDABA7A4F1A9A6A1F1A6A1A0F1A4A09DF1969CA2F1AC43
      00F1803700D90C0500510000000D00000002683400C0F3C088FFFFCD9AFFFFC3
      82FFEDA85CFF6D3800CF02010047924B00E1F9B165FFFFDAB4FFFFC07EFFFFB8
      6BFFFFB66AFFFFB76BFFF3A553FF8A4000E7070300A300000080000000420000
      0018000000070000000100000001000000030000000D050200469C4000F8FF98
      21FFFD8D1BFF642400DC000000700000001B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000917272CBFFE1E1FFFFDDDDFFF8D3
      D3FFF2CACAFFECC0C0FFE5B6B6FFDDAAAAFFD9A5A5FFDAA7A7FFD6A3A3FFD6AB
      ABFFD7B2B2FFD2ADADFFCCA7A7FFC7A2A2FFC29C9CFFB89494FFAE8989FFA47E
      7EFF9B7474FF7C5C5CF00000008B000000260000000100000001000000010000
      0001000000010000000100000000000000008C4700DEFFD09DFFFFD4A6FFFFBF
      7DFFB05D00F60905006500000017170C0055C86E0CFEFFC788FFFFDAB4FFFFB8
      6EFFFFB568FFFFB364FFFFB667FFE99640FF7E3A00E2090400A30000008E0000
      005D0000003500000023000000200000002A0100004A522000C7DE7513FFFF96
      1FFFEC7C14FF411900C200000058000000130000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A07D7DD4FFE1E1FFFFDCDCFFF8D2
      D2FFF3CACAFFEFC3C3FFECC2C2FFE9C0C0FFE8B9B9FFE6B3B3FFE3B0B0FFDBA8
      A8FFD29F9FFFC99696FFC18E8EFFB68383FFAB7777FF9E6A6AFF8F5B5BFF814D
      4DFF734040FF522828EE0000008B000000250000000100000000000000000000
      0000000000000000000000000000000000004A2500A2DA8930FFFFD2A1FFD181
      27FF2A16008D000000200000000400000000562A00A8DC892FFFFFD19BFFFFD5
      A9FFFFB363FFFFB261FFFFB15EFFFFB360FFEE9941FF9F4900F4261000AB0301
      00A000000091000000810000007E0D05008C592300CECA640DFFFF9721FFFF93
      1BFFD0640BFF220C00A30000003B000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A48181D6FFE1E1FFFFEDEDFFFFF2
      F2FFECD5D5FFE1C1C1FFDAB1B1FFCF9E9EFFC69292FFC39090FFBE8B8BFFB885
      85FFB27E7EFFAF7B7BFFAE7A7AFFAA7676FFA57171FFA26E6EFFA26E6EFF8854
      54FF713E3EFF562A2AF20000008B000000240000000100000000000000000000
      0000000000000000000000000000000000000000000F47240099884300D33F20
      00930000001600000005000000000000000000000010874100DCF09D49FFFFD4
      A6FFFFCF9FFFFFB05BFFFFAE5BFFFFAE57FFFFAF56FFFEAA50FFD2741EFFA249
      00F8682C00D55C2600CD8B3800E9B65505FEE57C18FFFF9722FFFF911BFFFF97
      1BFFAA4601FE0903007A0000001F000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AA8585D8FEFAFAFFF0D6D6FFE4BA
      BAFFEEC4C4FFEEC0C0FFE7B7B7FFDFABABFFDBA7A7FFDDAAAAFFD9A6A6FFD29F
      9FFFCB9898FFC49191FFBA8787FFB38080FFAC7878FF9B6767FF834F4FFF8652
      52FF936060FF5B2E2EF500000085000000230000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      000100000000000000000000000000000000000000000603002DA24D00F0F6A7
      53FFFFD5A8FFFFCC98FFFFAC56FFFFAB53FFFFA950FFFFAA4FFFFFAB4EFFFFAB
      4AFFFA9B39FFF6942FFFFF9D30FFFF9B2BFFFF9521FFFF901CFFFF921AFFE677
      10FF541E00C9000000420000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000866868C1FCDBDBFFFFDEDEFFFAD5
      D5FFF3CBCBFFECC0C0FFE5B6B6FFDDABABFFD9A6A6FFDAA7A7FFD6A3A3FFCF9C
      9CFFC89595FFC18E8EFFB98686FFB27E7EFFAA7676FF9F6B6BFF905C5CFF814D
      4DFF744141FF422020DE00000087000000240000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D060040A44C
      00F3F4A24CFFFFD2A1FFFFCF9AFFFFAE58FFFFA749FFFFA649FFFFA447FFFFA3
      41FFFF9F3AFFFF9C33FFFF972CFFFF9423FFFF911DFFFF9119FFFF9218FFA43F
      00FC0C04006F0000001A00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B89292DFFFE1E1FFFFDDDDFFF8D3
      D3FFF2CACAFFECC0C0FFE5B6B6FFDDABABFFD9A6A6FFDAA7A7FFD6A3A3FFCF9C
      9CFFC89595FFC18E8EFFB98686FFB27E7EFFAA7676FF9E6A6AFF8F5B5BFF814D
      4DFF734040FF4F2727E900000088000000240000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B05
      003D964300EBE68D35FFFFCB8CFFFFD4A4FFFFBC75FFFFA748FFFFA13DFFFF9F
      39FFFF9B33FFFF992CFFFF9626FFFF9220FFFF911AFFFF9419FFB44F05FE2B0F
      0097000000210000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BA9292DFFFE0E0FFFFDDDDFFF8D3
      D3FFF2CACAFFECBFBFFFE5B5B5FFDCA8A8FFD7A3A3FFDAA5A5FFD6A1A1FFCE9A
      9AFFC79494FFC18E8EFFB98686FFB27E7EFFAA7676FF9E6A6AFF8F5B5BFF814D
      4DFF734040FF512828E900000089000000240000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030100236C3000CAC86710FFFDAD59FFFFCA8DFFFFD09CFFFFC280FFFFB3
      64FFFFAC53FFFFA848FFFFA643FFFF9822FFF78715FFAE4902FE3413009B0000
      001E000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C19898E3FFE1E1FFFEDCDCFFF9D7
      D7FFF5D4D4FFF2D2D2FFF0CFCFFFECC9C9FFEBC4C4FFECC3C3FFE8BDBDFFDFB3
      B3FFD6A7A7FFCC9B9BFFBD8A8AFFB07C7CFFAB7777FF9F6B6BFF8F5B5BFF7C49
      49FF713E3EFF572D2DEE00000086000000240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000005241000738E3B00EAC96610FFEB8F35FFFFAE56FFFFB6
      5EFFFFB155FFFE9E3BFFE37A18FFBD5405FF762900DF15070065000000100000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C39999E3FFF5F5FFFFF7F7FFFDE5
      E5FFFAD8D8FFF7CECEFFF4C7C7FFF1C2C2FFEFBEBEFFEBBABAFFEAB8B8FFE9B8
      B8FFE8B7B7FFE8B6B6FFE9B7B7FFE5B3B3FFD8A5A5FFC99696FFBC8989FFA36F
      6FFF885454FF592F2FEE0000006D0000001B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000B1609005F471C00AC772C00DD963B
      00F4923700F36E2800D83C1600A41106005B0000001100000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000725B5BAEFBE7E7FFFEC5C5FFF9C4
      C4FFF7C4C4FFF4C1C1FFF2BFBFFFEFBCBCFFEDBABAFFEBB8B8FFE8B5B5FFE6B3
      B3FFE3B0B0FFE1AEAEFFDFACACFFDCA9A9FFDDAAAAFFDEABABFFDEABABFFE5B2
      B2FF9E6A6AFF432525D000000031000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0001000000010000000100000001000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000C493C3C8AD3A6A6ECF3C0
      C0FFF3C0C0FFF4C1C1FFF4C1C1FFF1BEBEFEF3C0C0FFEFBCBCFFEEBBBBFFECB9
      B9FFE9B6B6FFE9B6B6FFE5B2B2FFE0ADADFFD7A4A4FFCA9797FFB98686FF9564
      64F93E2626B10201013200000009000000010000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000050B08
      0839281F1F6D47373793654E4EAF7E6161C4916E6ED39E7979DFA27B7BE39D77
      77E3956E6EE0815E5ED56C4D4DCA533A3AB63A28289E241818800D0909530000
      0019000000040000000100000000000000000000000000000000000000000000
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
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited IMLIToolBarInativo: TImageList
    Bitmap = {
      494C0101020008002C0120002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000010000000A0202021B0303032204040424040404260404
      0426040404260404042604040426040404260404042604040425040404240404
      0423030303220202021C0000000C000000020000000000000000000000000000
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
      000000000001000000100A0A0A3A1A1A1A6D20202083212121892222228C2222
      228D2222228E2222228E2222228E2222228E2222228D2222228C212121882121
      2185202020831B1B1B6F0A0A0A3C0000000C0000000000000000000000000000
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
      00000000000C12121253343434CE2E2E2EE3363636EB878787F5919191F5A0A0
      A0F5A6A6A6F59B9B9BF5868686F5797979F5646464F5262626E62C2C2CE32B2B
      2BE32E2E2ED22626269E1C1C1C750202021D0000000000000000000000000000
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
      00000D0D0D423D3D3DE8535353FF606060FF5C5C5CFF8E8E8EFF626262FF6868
      68FFB9B9B9FFFFFFFFFFFBFBFBFFDDDDDDFFACACACFF5D5D5DFF737373FF9F9F
      9FFF6A6A6AFF2E2E2EDF2222228B040404250000000000000000000000000000
      0000000000000000000100000001000000010000000000000000000000000000
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
      0000000000000000000000000000000000010000000100000001000000010000
      0001474747E7525252FF595959FF575757FF5F5F5FFF7B7B7BFF4C4C4CFF5555
      55FF9C9C9CFFE7E7E7FFFCFCFCFFF6F6F6FFBEBEBEFF545454FF6A6A6AFF9494
      94FF7C7C7CFF282828F92222228E040404260000000000000000000000000000
      00010000000B0202021B030303210202021A0000000E00000004000000010000
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
      000000000001000000050000000D010101150202021C03030320040404230404
      04254B4B4BF9545454FF535353FF525252FF656565FF898989FF3A3A3AFF4949
      49FF898989FFCCCCCCFFDEDEDEFFFFFFFFFFDCDCDCFF505050FF666666FF9090
      90FF777777FF282828F92323238F050505270000000000000000000000000000
      000A090909361A1A1A6D1F1F1F7F1A1A1A6C0F0F0F4A0505052A010101170000
      000A000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00090202021A0606062F0E0E0E49161616601B1B1B711F1F1F7D212121852121
      218A4C4C4CF94F4F4FFF505050FF4E4E4EFF686868FF909090FF272727FF3E3E
      3EFF767676FFB2B2B2FFC8C8C8FFE7E7E7FFE7E7E7FF515151FF666666FF9292
      92FF757575FF282828F92323238F050505270000000000000000000000010C0C
      0C3F4B4B4BCF515151E93C3C3CC0292929A02525259A21212185161616620B0B
      0B3E040404230101011200000007000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004010101150A0A
      0A3A1A1A1A6B2B2B2B92393939AB484848C3535353D75A5A5AE65C5C5CEE9C9C
      9CF64F4F4FFE4C4C4CFF4D4D4DFF4C4C4CFF676767FFE0E0E0FFC1C1C1FFA8A8
      A8FF8C8C8CFF8F8F8FFF9E9E9EFFB2B2B2FFAEAEAEFF3E3E3EFF4B4B4BFF6D6D
      6DFF747474FF282828F92323238F050505270000000000000000000000045050
      50C59F9F9FFFC1C1C1FF9A9A9AFF727272FF505050EA353535B22828289E2424
      24961E1E1E7B13131357080808350202021D0000000E00000004000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0006010101120000000700000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000201010117181818604C4C
      4CB6909090F7A0A0A0FFA2A2A2FF9D9D9DFF9A9A9AFF9F9F9FFF9A9A9AFFAFAF
      AFFF4F4F4FFF494949FF494949FF4A4A4AFF4A4A4AFF484848FF4A4A4AFF4E4E
      4EFF505050FF4F4F4FFF4E4E4EFF4E4E4EFF515151FF5B5B5BFF5E5E5EFF6363
      63FF717171FF282828F92323238F050505270000000000000000020202186565
      65FBC3C3C3FFB8B8B8FFB9B9B9FFBBBBBBFFB2B2B2FF878787FF616161FE4646
      46D62E2E2EA72626269D2323238F1B1B1B700F0F0F4A0606062B010101170000
      0008000000010000000000000000000000000000000000000000000000000101
      01170D0D0D460404042400000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000B2B2B2B7A9B9B9BF8C5C5
      C5FFC6C6C6FFB8B8B8FFABABABFF9D9D9DFF979797FF999999FF949494FFAAAA
      AAFF505050FF454545FF464646FF454545FF454545FF464646FF474747FF4A4A
      4AFF4C4C4CFF4F4F4FFF525252FF555555FF585858FF5A5A5AFF5F5F5FFF6262
      62FF707070FF292929F92323238F050505270000000000000000151515547A7A
      7AFFBDBDBDFFB6B6B6FFB4B4B4FFB2B2B2FFB3B3B3FFB3B3B3FFB5B5B5FF9E9E
      9EFF737373FF505050F93B3B3BC22A2A2AA12424249B21212185161616610808
      08330000000D0000000100000000000000000000000000000000000000003F3F
      3FBF1B1B1B6D1010104D01010111000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001212124AAEAEAEFCDFDFDFFFCFCF
      CFFFC1C1C1FFB5B5B5FFA9A9A9FF9A9A9AFF959595FF989898FF949494FFAAAA
      AAFF4F4F4FFF424242FF404040FF666666FF626262FF626262FF626262FF6363
      63FF656565FF646464FF666666FF656565FF666666FF666666FF6C6C6CFF5E5E
      5EFF6D6D6DFF292929F92323238F0505052700000000000000013333338E9090
      90FFB9B9B9FFB4B4B4FFB3B3B3FFB2B2B2FFAFAFAFFFADADADFFADADADFFACAC
      ACFFACACACFFACACACFF898989FF616161FF454545EB323232B22626269D1E1E
      1E7B0606062B0000000500000000000000000000000000000000000000014040
      40E8282828931B1B1B710303031F000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004C4C4CA3D3D3D3FFDADADAFFCACA
      CAFFBFBFBFFFBBBBBBFFC2C2C2FFBFBFBFFFB5B5B5FFADADADFFA7A7A7FFB9B9
      B9FF4F4F4FFF3E3E3EFF383838FFC0C0C0FFE7E7E7FFE4E4E4FFE7E7E7FFE7E7
      E7FFE6E6E6FFE0E0E0FFDDDDDDFFD8D8D8FFD1D1D1FFCFCFCFFFA8A8A8FF5A5A
      5AFF6C6C6CFF282828F92323238F0505052700000000000000044E4E4EC8ABAB
      ABFFB7B7B7FFB3B3B3FFB2B2B2FFB0B0B0FFAEAEAEFFADADADFFAAAAAAFFA8A8
      A8FFA6A6A6FFA4A4A4FFA4A4A4FFA5A5A5FF9E9E9EFF727272FF444444EE2525
      25930A0A0A3D0000000900000000000000000000000000000000000000014141
      41E0393939CC2222228B08080833000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A5A5AB4D8D8D8FFDADADAFFE6E6
      E6FFE0E0E0FFB1B1B1FF959595FF828282FF767676FF747474FF6F6F6FFFA0A0
      A0FF4F4F4FFF3B3B3BFF353535FFC2C2C2FFECECECFFE7E7E7FFC7C7C7FFCACA
      CAFFCACACAFFC9C9C9FFC8C8C8FFC7C7C7FFD3D3D3FFD6D6D6FFAAAAAAFF5757
      57FF696969FF282828F92323238F0505052700000000010101165D5D5DF8BCBC
      BCFFB2B2B2FFB2B2B2FFB0B0B0FFAFAFAFFFADADADFFABABABFFA9A9A9FFAAAA
      AAFFA9A9A9FFA6A6A6FFA3A3A3FFA1A1A1FF9F9F9FFFA4A4A4FF616161FF2626
      268B0606062C0000000500000000000000000000000000000000000000013F3F
      3FDF383838FC252525951010104D0000000F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005E5E5EB8E4E4E4FFE3E3E3FFB3B3
      B3FFA4A4A4FFB5B5B5FFACACACFF9F9F9FFF9A9A9AFF9D9D9DFF989898FFACAC
      ACFF505050FF373737FF313131FFC7C7C7FFF0F0F0FFEEEEEEFFCACACAFFCDCD
      CDFFCDCDCDFFCCCCCCFFCACACAFFC7C7C7FFD4D4D4FFD9D9D9FFAEAEAEFF5454
      54FF676767FF282828F92323238F050505270000000013131350707070FFBCBC
      BCFFB1B1B1FFB0B0B0FFAFAFAFFFAEAEAEFFACACACFFAAAAAAFFABABABFF9F9F
      9FFF8B8B8BFF8D8D8DFF909090FF909090FF919191FF7C7C7CFF464646EF0E0E
      0E460000000E0000000100000000000000000000000000000000000000013F3F
      3FE14B4B4BFF2828289E17171763010101170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B5B5BB4E9E9E9FFD4D4D4FFCECE
      CEFFC4C4C4FFB6B6B6FFA9A9A9FF9D9D9DFF979797FF989898FF949494FFAAAA
      AAFF505050FF353535FF2E2E2EFFCDCDCDFFF7F7F7FFF7F7F7FFDCDCDCFFE1E1
      E1FFDEDEDEFFDCDCDCFFD7D7D7FFD3D3D3FFD9D9D9FFDCDCDCFFB0B0B0FF5353
      53FF656565FF282828F92323238F05050527000000012F2F2F8A898989FFB8B8
      B8FFAFAFAFFFAFAFAFFFAEAEAEFFADADADFFABABABFFA9A9A9FFAAAAAAFF8C8C
      8CFF464646FA393939BF3E3E3EBD414141BF434343C5393939A60B0B0B3C0000
      0009000000010000000000000000000000000000000000000000000000033C3C
      3CEF616161FF2E2E2EB11C1C1C750202021D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000595959B1D4D4D4FFD8D8D8FFCBCB
      CBFFC0C0C0FFB4B4B4FFA7A7A7FF999999FF949494FF989898FF949494FFAAAA
      AAFF505050FF323232FF2B2B2BFFD2D2D2FFFCFCFCFFFBFBFBFFB6B6B6FFBCBC
      BCFFBDBDBDFFBCBCBCFFBDBDBDFFBBBBBBFFD7D7D7FFDCDCDCFFB2B2B2FF5252
      52FF656565FF282828F92222228E0404042600000004494949C5A9A9A9FFAFAF
      AFFFAEAEAEFFADADADFFADADADFFACACACFFA9A9A9FFA8A8A8FFA7A7A7FFACAC
      ACFF5B5B5BFE2A2A2AA21F1F1F7E0606062D0000000700000001000000010000
      00000000000000000000000000000000000000000000000000000000000E3838
      38FD727272FF333333C920202081030303220000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C6C6CC4DDDDDDFFD6D6D6FFCBCB
      CBFFC2C2C2FFC6C6C6FFCDCDCDFFC6C6C6FFBEBEBEFFB0B0B0FFA1A1A1FFB6B6
      B6FF525252FF2F2F2FFF292929FFD8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F8FFF3F3F3FFE9E9E9FFE1E1E1FFDDDDDDFFB4B4B4FF5454
      54FF666666FF2B2B2BF92222228C0404042501010115555555F6C0C0C0FFADAD
      ADFFACACACFFAEAEAEFFAEAEAEFFB7B7B7FFAAAAAAFFA7A7A7FFA5A5A5FFA6A6
      A6FF929292FF404040DD2525259F1515155E0202021A00000002000000000000
      0000000000000000000000000000000000000000000000000000090909353F3F
      3FFF7B7B7BFF333333DF21212187040404240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006F6F6FC7DADADAFFE5E5E5FFE5E5
      E5FFBFBFBFFFA7A7A7FF8D8D8DFF7B7B7BFF737373FF757575FF757575FFA3A3
      A3FF505050FF2B2B2BFF262626FFDADADAFFFFFFFFFFFFFFFFFFADADADFFB2B2
      B2FFB5B5B5FFB5B5B5FFB7B7B7FFB6B6B6FFD6D6D6FFE0E0E0FFB5B5B5FF3A3A
      3AFF4E4E4EFF303030F91D1D1D760303031E1111114C666666FFC4C4C4FFABAB
      ABFFACACACFFADADADFF555555FFA6A6A6FFC2C2C2FFA4A4A4FFA3A3A3FFA2A2
      A2FFA6A6A6FF656565FF2F2F2FAD232323910D0D0D4601010111000000010000
      00000000000000000000000000000000000000000000000000011C1C1C6A4D4D
      4DFF7E7E7EFF323232EA21212186040404240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000727272CAF6F6F6FFD2D2D2FFB8B8
      B8FFC1C1C1FFB7B7B7FFADADADFFA0A0A0FF9A9A9AFF9D9D9DFF979797FFACAC
      ACFF565656FF2F2F2FFF222222FFDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFBFBFFF5F5F5FFEFEFEFFFE7E7E7FFE5E5E5FFE3E3E3FFB9B9B9FF4B4B
      4BFF525252FF383838E10B0B0B3F0000000D2B2B2B86818181FFC1C1C1FFAAAA
      AAFFB1B1B1FF686868FF454545D96C6C6CFFBEBEBEFFB5B5B5FFA2A2A2FFA1A1
      A1FFA0A0A0FFA0A0A0FF494949FA282828A2202020830A0A0A3C0000000F0000
      000200000000000000000000000000000000000000010000000B353535B26161
      61FF7B7B7BFF323232E91F1F1F7F030303210000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000545454ABD6D6D6FFD8D8D8FFCDCD
      CDFFC1C1C1FFB5B5B5FFA9A9A9FF9D9D9DFF979797FF989898FF949494FFAAAA
      AAFF737373FF575757FF494949FFBFBFBFFFC2C2C2FFBFBFBFFFBFBFBFFFB9B9
      B9FFB5B5B5FFACACACFD9D9D9DF19B9B9BF1979797F1959595F1929292F14040
      40F13F3F3FD9121212510000000D00000002414141C0A9A9A9FFB9B9B9FFACAC
      ACFF8D8D8DFF414141CF0E0E0E47494949E1989898FFCACACAFFA9A9A9FF9F9F
      9FFF9D9D9DFF9E9E9EFF8A8A8AFF404040E7262626A3202020800C0C0C420202
      0218000000070000000100000001000000030000000D0E0E0E46363636F87C7C
      7CFF737373FF323232DC1B1B1B700202021B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000757575CBDCDCDCFFD7D7D7FFCBCB
      CBFFC0C0C0FFB5B5B5FFA9A9A9FF9C9C9CFF969696FF989898FF949494FF9C9C
      9CFFA4A4A4FF9E9E9EFF979797FF919191FF8B8B8BFF828282FF757575FF6B6B
      6BFF606060FF535353F02222228B040404260000000100000001000000010000
      000100000001000000010000000000000000484848DEBDBDBDFFC2C2C2FFA8A8
      A8FF4C4C4CF6191919650101011715151555565656FEB1B1B1FFCACACAFF9F9F
      9FFF9C9C9CFF9A9A9AFF9D9D9DFF7A7A7AFF3C3C3CE2282828A32222228E1515
      155D0808083504040423030303200505052A0F0F0F4A353535C75D5D5DFF7B7B
      7BFF646464FF313131C213131358010101130000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7FD4DCDCDCFFD6D6D6FFCACA
      CAFFC0C0C0FFB8B8B8FFB7B7B7FFB4B4B4FFADADADFFA6A6A6FFA3A3A3FF9999
      99FF8F8F8FFF858585FF7C7C7CFF707070FF656565FF585858FF494949FF3D3D
      3DFF323232FF2B2B2BEE2222228B040404250000000100000000000000000000
      000000000000000000000000000000000000373737A26C6C6CFFBFBFBFFF6565
      65FF2B2B2B8D0303032000000004000000003B3B3BA86D6D6DFFBDBDBDFFC3C3
      C3FF9A9A9AFF999999FF979797FF999999FF7D7D7DFF3E3E3EF42D2D2DAB2626
      26A023232391202020811F1F1F7E2525258C353535CE4E4E4EFF7C7C7CFF7878
      78FF4F4F4FFF2B2B2BA30A0A0A3B000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000828282D6DCDCDCFFEAEAEAFFF0F0
      F0FFCCCCCCFFB5B5B5FFA3A3A3FF8E8E8EFF818181FF7E7E7EFF787878FF7272
      72FF6C6C6CFF696969FF686868FF646464FF5F5F5FFF5C5C5CFF5C5C5CFF4343
      43FF303030FF2B2B2BF22222228B040404240000000100000000000000000000
      0000000000000000000000000000000000000000000F35353599494949D33232
      32930101011600000005000000000000000000000010444444DC828282FFC2C2
      C2FFBCBCBCFF969696FF949494FF949494FF959595FF909090FF5B5B5BFF3D3D
      3DF8383838D5373737CD3A3A3AE9424242FE636363FF7C7C7CFF767676FF7B7B
      7BFF373737FE1F1F1F7A0303031F000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000868686D8FAFAFAFFCECECEFFADAD
      ADFFB9B9B9FFB5B5B5FFAAAAAAFF9D9D9DFF989898FF9C9C9CFF979797FF8F8F
      8FFF878787FF808080FF747474FF6D6D6DFF666666FF555555FF3F3F3FFF4141
      41FF4E4E4EFF2B2B2BF521212185040404230000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      000100000000000000000000000000000000000000000707072D444444F08C8C
      8CFFC3C3C3FFB8B8B8FF929292FF919191FF8F8F8FFF909090FF909090FF9090
      90FF818181FF797979FF828282FF808080FF7A7A7AFF767676FF777777FF6060
      60FF343434C90C0C0C420000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006E6E6EC1D5D5D5FFD8D8D8FFCECE
      CEFFC2C2C2FFB5B5B5FFA9A9A9FF9D9D9DFF979797FF989898FF949494FF8C8C
      8CFF848484FF7C7C7CFF737373FF6C6C6CFF646464FF595959FF4A4A4AFF3D3D
      3DFF333333FF2D2D2DDE21212187040404240000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D0D0D404343
      43F3878787FFBFBFBFFFBBBBBBFF949494FF8D8D8DFF8C8C8CFF8A8A8AFF8888
      88FF858585FF828282FF7C7C7CFF797979FF777777FF767676FF777777FF3333
      33FC1C1C1C6F0202021A00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000919191DFDCDCDCFFD7D7D7FFCBCB
      CBFFC0C0C0FFB5B5B5FFA9A9A9FF9D9D9DFF979797FF989898FF949494FF8C8C
      8CFF848484FF7C7C7CFF737373FF6C6C6CFF646464FF585858FF494949FF3D3D
      3DFF323232FF2D2D2DE921212188040404240000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000C0C
      0C3D404040EB717171FFB5B5B5FFC2C2C2FFA4A4A4FF8C8C8CFF868686FF8484
      84FF818181FF7E7E7EFF7B7B7BFF777777FF767676FF797979FF3E3E3EFE2B2B
      2B97030303210000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000919191DFDBDBDBFFD7D7D7FFCBCB
      CBFFC0C0C0FFB4B4B4FFA8A8A8FF999999FF949494FF969696FF929292FF8A8A
      8AFF838383FF7C7C7CFF737373FF6C6C6CFF646464FF585858FF494949FF3D3D
      3DFF323232FF2E2E2EE921212189040404240000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040404233E3E3ECA505050FF939393FFB4B4B4FFBCBCBCFFABABABFF9A9A
      9AFF929292FF8D8D8DFF8B8B8BFF7C7C7CFF6D6D6DFF3A3A3AFE2E2E2E9B0303
      031E000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000959595E3DCDCDCFFD6D6D6FFD0D0
      D0FFCCCCCCFFC9C9C9FFC6C6C6FFBFBFBFFFB9B9B9FFB8B8B8FFB1B1B1FFA5A5
      A5FF989898FF8B8B8BFF777777FF6A6A6AFF656565FF595959FF494949FF3939
      39FF303030FF2F2F2FEE21212186040404240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000005222222733B3B3BEA4F4F4FFF747474FF949494FF9C9C
      9CFF969696FF848484FF626262FF424242FF353535DF1A1A1A65000000100000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000979797E3F4F4F4FFF6F6F6FFE0E0
      E0FFD1D1D1FFC5C5C5FFBDBDBDFFB7B7B7FFB3B3B3FFAEAEAEFFACACACFFACAC
      ACFFABABABFFA9A9A9FFABABABFFA6A6A6FF969696FF858585FF767676FF5D5D
      5DFF434343FF303030EE1A1A1A6D0202021B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000B1818185F353535AC383838DD3636
      36F4333333F3363636D8313131A41616165B0101011100000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000616161AEE3E3E3FFBCBCBCFFBABA
      BAFFBABABAFFB7B7B7FFB4B4B4FFB1B1B1FFAEAEAEFFACACACFFA8A8A8FFA6A6
      A6FFA3A3A3FFA0A0A0FF9E9E9EFF9A9A9AFF9C9C9CFF9D9D9DFF9D9D9DFFA5A5
      A5FF585858FF373737D007070731000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0001000000010000000100000001000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000C4141418AA3A3A3ECB5B5
      B5FFB5B5B5FFB7B7B7FFB7B7B7FFB4B4B4FEB5B5B5FFB1B1B1FFAFAFAFFFADAD
      ADFFAAAAAAFFAAAAAAFFA5A5A5FF9F9F9FFF959595FF868686FF737373FF5656
      56F93A3A3AB10808083200000009000000010000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000050B0B
      0B392727276D41414193565656AF676767C4707070D3787878DF787878E37575
      75E36E6E6EE0626262D5555555CA474747B63A3A3A9E29292980141414530202
      0219000000040000000100000000000000000000000000000000000000000000
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
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end

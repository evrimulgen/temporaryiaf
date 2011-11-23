object KRFMSegurancaEPermissoes: TKRFMSegurancaEPermissoes
  Left = 0
  Top = 0
  Caption = 'Seguran'#231'a e Permiss'#245'es'
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object PGCTSegurancaEPermissoes: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 562
    ActivePage = TabSheet_Permissions
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1142
    ExplicitHeight = 614
    object TabSheet_Permissions: TTabSheet
      AlignWithMargins = True
      Caption = 'Permiss'#245'es'
      ExplicitWidth = 1128
      ExplicitHeight = 580
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
        ExplicitWidth = 1128
        object PGCTUSUGRUConsultar: TPageControl
          Left = 421
          Top = 0
          Width = 349
          Height = 228
          Margins.Left = 0
          ActivePage = TabSheet_USU_Consultar
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 779
          object TabSheet_USU_Consultar: TTabSheet
            Caption = 'Usu'#225'rios'
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
              end
            end
            object KRKDBGrid1: TKRKDBGrid
              Left = 4
              Top = 63
              Width = 331
              Height = 132
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataSource = KRDMSegurancaEPermissoes.DTSRUsuarios
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
            end
          end
          object TabSheet_GRU_Consultar: TTabSheet
            Caption = 'Grupos'
            ImageIndex = 1
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
              end
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
          ExplicitWidth = 773
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
            ExplicitWidth = 760
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
              Items.Strings = (
                'Todos'
                'Tabela'
                'A'#231#227'o')
              ExplicitLeft = 654
            end
            object LabeledEdit_EDS_VA_NOME: TLabeledEdit
              Left = 8
              Top = 27
              Width = 270
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              CharCase = ecUpperCase
              EditLabel.Width = 137
              EditLabel.Height = 13
              EditLabel.Caption = 'Nome / Identifica'#231#227'o cont'#233'm'
              LabelSpacing = 1
              TabOrder = 0
              ExplicitWidth = 628
            end
          end
          object BitBtn_EDS_AdicionarA: TBitBtn
            Left = 297
            Top = 195
            Width = 112
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Adic. p/ usu'#225'rio'
            DoubleBuffered = True
            Glyph.Data = {
              36080000424D3608000000000000360000002800000020000000100000000100
              2000000000000008000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0084614F00BA9C8400C09A7D00C0977800C0937200C0947300895D4E00FF00
              FF00FF00FF00FF00FF00004D0000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF005F5F5F009797970095959500919191008D8D8D008E8E8E005C5C5C00FF00
              FF00FF00FF00FF00FF002E2E2E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF008C5C5A00F4E2CE00FFDEC100FFD6B000FFD0A200FFCC9E0090585800FF00
              FF00FF00FF0000500000069C1800005B0100FF00FF00FF00FF00FF00FF00FF00
              FF0060606000DDDDDD00D8D8D800CECECE00C6C6C600C3C3C3005D5D5D00FF00
              FF00FF00FF00303030006565650036363600FF00FF00FF00FF00FF00FF00FF00
              FF008F5F5B00F7EBDD00FFE4CC00FFDDBF00FFD6B000FFD3A90091585800FF00
              FF00004F00001094350012AB3A000999220000580100FF00FF00FF00FF00FF00
              FF0062626200E8E8E800DFDFDF00D7D7D700CECECE00CACACA005D5D5D00FF00
              FF002F2F2F006A6A6A00797979006666660035353500FF00FF00FF00FF00FF00
              FF009F6C6000FAF5EE00FFEDDA00FFE4CC00FFDEC100FFDBB90078564B00004A
              0000004B0000046310001BB1510009761F00004B0000004B0000FF00FF00FF00
              FF006D6D6D00F3F3F300E9E9E900DFDFDF00D8D8D800D4D4D400565656002C2C
              2C002D2D2D004040400085858500515151002D2D2D002D2D2D00906B5300D8B9
              9A00B37D6800FBFCFB00FFF5EB00FFECDA00FFE4CC00FFE2C60091585800FF00
              FF00FF00FF00006202001BB15100006F0400FF00FF00FF00FF0067676700B2B2
              B2007C7C7C00FBFBFB00F3F3F300E8E8E800DFDFDF00DCDCDC005D5D5D00FF00
              FF00FF00FF003B3B3B008585850043434300FF00FF00FF00FF00A06D6100F7E7
              D500CB916E00FDFFFF00FFFFFE00FFF5EB00FFEDDA00F39E950090585800FF00
              FF00FF00FF00005601001BB1510000640200FF00FF00FF00FF006E6E6E00E3E3
              E3008C8C8C00FEFEFE00FEFEFE00F3F3F300E9E9E900A3A3A3005D5D5D00FF00
              FF00FF00FF0033333300858585003C3C3C00FF00FF00FF00FF00AC766600F8F0
              E500DFA27600FFFFFF00FFFFFF00FDFFFF00FBF7EF0092554F00A2745500FF00
              FF00FF00FF00005201001BB15100005B0100FF00FF00FF00FF0076767600EDED
              ED009A9A9A00FFFFFF00FFFFFF00FEFEFE00F5F5F500595959006F6F6F00FF00
              FF00FF00FF00313131008585850036363600FF00FF00FF00FF00B7816A00FAF8
              F200EEAF7B00CF916D00D1936E00D1936E00D1936E00A5775600FF00FF00FF00
              FF00FF00FF00005201001BB1510000520100FF00FF00FF00FF007F7F7F00F6F6
              F600A5A5A5008C8C8C008E8E8E008E8E8E008E8E8E0071717100FF00FF00FF00
              FF00FF00FF00313131008585850031313100FF00FF00FF00FF00C38A6C00FAFC
              FB00FFF9F100FFF2E200FFEAD400FFE6CA0099605600FF00FF00FF00FF00FF00
              FF00FF00FF00004B000021A24700004B0000FF00FF00FF00FF0086868600FBFB
              FB00F7F7F700EEEEEE00E5E5E500E0E0E00062626200FF00FF00FF00FF00FF00
              FF00FF00FF002D2D2D00797979002D2D2D00FF00FF00FF00FF00CF967000FEFF
              FF00FFFFFE00FFF5EB00FFEDDA00F3A398009D635800FF00FF00FF00FF00FF00
              FF00FF00FF00004B000025873400004B0000FF00FF00FF00FF0090909000FEFE
              FE00FEFEFE00F3F3F300E9E9E900A7A7A70065656500FF00FF00FF00FF00FF00
              FF00FF00FF002D2D2D00646464002D2D2D00FF00FF00FF00FF00DA9E7500FFFF
              FF00FFFFFF00FDFFFF00FBF7EF009D5F4E00A87A5500FF00FF00FF00FF00FF00
              FF00FF00FF00004B00000A5D0C00004B0000FF00FF00FF00FF0097979700FFFF
              FF00FFFFFF00FEFEFE00F5F5F5006060600073737300FF00FF00FF00FF00FF00
              FF00FF00FF002D2D2D003C3C3C002D2D2D00FF00FF00FF00FF00E3A67800CF91
              6D00D1936E00D1936E00D1936E00AC7D5700FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00004B0000004B0000004B0000FF00FF00FF00FF009E9E9E008C8C
              8C008E8E8E008E8E8E008E8E8E0076767600FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF002D2D2D002D2D2D002D2D2D00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00004B0000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF002D2D2D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00004B0000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF002D2D2D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Layout = blGlyphRight
            NumGlyphs = 2
            ParentDoubleBuffered = False
            Spacing = 8
            TabOrder = 1
            ExplicitLeft = 655
          end
          object KRDGEntidadesDoSistema: TKRKDBGrid
            Left = 6
            Top = 78
            Width = 402
            Height = 111
            Anchors = [akLeft, akTop, akRight, akBottom]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            RowColors = <>
          end
        end
      end
      object PANLFooter: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 234
        Width = 770
        Height = 294
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 120
        ExplicitTop = 240
        ExplicitHeight = 197
        object PGCTPermissoes: TPageControl
          Left = 0
          Top = 0
          Width = 770
          Height = 294
          ActivePage = TBSHGRU
          Align = alClient
          MultiLine = True
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          ExplicitLeft = 3
          ExplicitTop = 3
          ExplicitHeight = 194
          object TBSHGRU: TTabSheet
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
          end
          object TBSHUSU: TTabSheet
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
                object Image1: TImage
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
                object Image2: TImage
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
                object Image3: TImage
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
          end
        end
      end
    end
    object TabSheet_USU: TTabSheet
      Caption = 'Gerenciamento de usu'#225'rios'
      ImageIndex = 1
      ExplicitWidth = 1134
      ExplicitHeight = 586
      DesignSize = (
        776
        534)
      object GroupBoxUsuariosConsultar2: TGroupBox
        Left = 5
        Top = 2
        Width = 766
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        Caption = ' Localiza'#231#227'o r'#225'pida '
        TabOrder = 0
        ExplicitWidth = 1124
        DesignSize = (
          766
          57)
        object LabelE3: TLabel
          Left = 642
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
          Width = 628
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome'
          LabelSpacing = 1
          TabOrder = 0
          ExplicitWidth = 986
        end
        object LabeledEdit_USU_VA_LOGIN2: TLabeledEdit
          Left = 660
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
          ExplicitLeft = 1018
        end
      end
      object Panel_USU_Layer: TPanel
        Left = 490
        Top = 65
        Width = 281
        Height = 22
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 2
        ExplicitLeft = 848
        DesignSize = (
          281
          22)
        object SpeedButton_USU_Delete: TSpeedButton
          Tag = 5
          Left = 143
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00000000000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF0000000000000000004C4C
            4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C
            4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C0000000000000000000000
            EF000000EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000EF000000EF0000000000000000004747
            470047474700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00474747004747470000000000000000000000
            DF000000DF000000DF000000DF000000DF000000DF000000DF000000DF000000
            DF000000DF000000DF000000DF000000DF000000DF0000000000000000004343
            4300434343004343430043434300434343004343430043434300434343004343
            4300434343004343430043434300434343004343430000000000000000000000
            CF000000CF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000CF000000CF0000000000000000003E3E
            3E003E3E3E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF003E3E3E003E3E3E0000000000000000000000
            C0000000C0000000C0000000C0000000C0000000C0000000C0000000C0000000
            C0000000C0000000C0000000C0000000C0000000C00000000000000000003939
            3900393939003939390039393900393939003939390039393900393939003939
            3900393939003939390039393900393939003939390000000000000000000000
            B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000000
            B0000000B0000000B0000000B0000000B0000000B00000000000000000003535
            3500353535003535350035353500353535003535350035353500353535003535
            3500353535003535350035353500353535003535350000000000000000000000
            A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000000
            A0000000A0000000A0000000A0000000A0000000A00000000000000000003030
            3000303030003030300030303000303030003030300030303000303030003030
            3000303030003030300030303000303030003030300000000000000000000000
            A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000000
            A0000000A0000000A0000000A0000000A0000000A00000000000000000003030
            3000303030003030300030303000303030003030300030303000303030003030
            3000303030003030300030303000303030003030300000000000000000000000
            B0000000B0000000B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000B0000000B0000000B00000000000000000003535
            35003535350035353500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0035353500353535003535350000000000000000000000
            C0000000C0000000C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000C0000000C0000000C00000000000000000003939
            39003939390039393900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0039393900393939003939390000000000000000000000
            CF000000CF000000CF000000CF000000CF000000CF000000CF000000CF000000
            CF000000CF000000CF000000CF000000CF000000CF0000000000000000003E3E
            3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E
            3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E0000000000000000000000
            DF000000DF000000DF000000DF000000DF000000DF000000DF000000DF000000
            DF000000DF000000DF000000DF000000DF000000DF0000000000000000004343
            4300434343004343430043434300434343004343430043434300434343004343
            4300434343004343430043434300434343004343430000000000000000000000
            EF000000EF000000EF000000EF000000EF000000EF000000EF000000EF000000
            EF000000EF000000EF000000EF000000EF000000EF0000000000000000004747
            4700474747004747470047474700474747004747470047474700474747004747
            4700474747004747470047474700474747004747470000000000000000000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF0000000000000000004C4C
            4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C
            4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C0000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00}
          Margin = 2
          NumGlyphs = 2
          Spacing = -2
          ExplicitLeft = 142
        end
        object SpeedButton_USU_Refresh: TSpeedButton
          Tag = 9
          Left = 259
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop, akRight]
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = -2
          ExplicitLeft = 257
        end
        object SpeedButton_USU_Edit: TSpeedButton
          Tag = 6
          Left = 172
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF0000000000FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF000000FF000000FF000000FF00000000000000000000001919
            1900191919001919190019191900191919001919190019191900191919001919
            190019191900191919001919190019191900191919000000000000000000E700
            0000E7000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00E7000000E700000000000000000000001717
            170017171700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0017171700171717000000000000000000CF00
            0000CF000000CF000000CF000000CF000000CF000000CF000000CF000000CF00
            0000CF000000CF000000CF000000CF000000CF00000000000000000000001414
            1400141414001414140014141400141414001414140014141400141414001414
            140014141400141414001414140014141400141414000000000000000000B800
            0000B8000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00B8000000B800000000000000000000001212
            120012121200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0012121200121212000000000000000000A000
            0000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A000
            0000A0000000A0000000A0000000A0000000A000000000000000000000001010
            1000101010001010100010101000101010001010100010101000101010001010
            1000101010001010100010101000101010001010100000000000000000008900
            0000890000008900000089000000890000008900000089000000890000008900
            0000890000008900000089000000890000008900000000000000000000000D0D
            0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D
            0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D0000000000000000007100
            0000710000007100000071000000710000007100000071000000710000007100
            0000710000007100000071000000710000007100000000000000000000000B0B
            0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
            0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B0000000000000000007100
            00007100000071000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0071000000710000007100000000000000000000000B0B
            0B000B0B0B000B0B0B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000B0B0B000B0B0B000B0B0B0000000000000000008900
            0000890000008900000089000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF008900000089000000890000008900000000000000000000000D0D
            0D000D0D0D000D0D0D000D0D0D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000D0D0D000D0D0D000D0D0D000D0D0D000000000000000000A000
            0000A0000000A0000000A0000000A0000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00A0000000A0000000A0000000A0000000A000000000000000000000001010
            100010101000101010001010100010101000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0010101000101010001010100010101000101010000000000000000000B800
            0000B8000000B8000000B8000000B8000000B8000000FFFFFF00FFFFFF00B800
            0000B8000000B8000000B8000000B8000000B800000000000000000000001212
            12001212120012121200121212001212120012121200FFFFFF00FFFFFF001212
            120012121200121212001212120012121200121212000000000000000000CF00
            0000CF000000CF000000CF000000CF000000CF000000CF000000CF000000CF00
            0000CF000000CF000000CF000000CF000000CF00000000000000000000001414
            1400141414001414140014141400141414001414140014141400141414001414
            140014141400141414001414140014141400141414000000000000000000E700
            0000E7000000E7000000E7000000E7000000E7000000E7000000E7000000E700
            0000E7000000E7000000E7000000E7000000E700000000000000000000001717
            1700171717001717170017171700171717001717170017171700171717001717
            170017171700171717001717170017171700171717000000000000000000FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF000000FF000000FF000000FF00000000000000000000001919
            1900191919001919190019191900191919001919190019191900191919001919
            1900191919001919190019191900191919001919190000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00}
          Margin = 2
          NumGlyphs = 2
          Spacing = -2
          ExplicitLeft = 171
        end
        object SpeedButton_USU_Insert: TSpeedButton
          Tag = 4
          Left = 115
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF000000000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000000000000000009999
            9900999999009999990099999900999999009999990099999900999999009999
            99009999990099999900999999009999990099999900000000000000000000DF
            070000DF0700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000DF070000DF070000000000000000008888
            880088888800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF008888880088888800000000000000000000C0
            0F0000C00F0000C00F0000C00F0000C00F0000C00F0000C00F0000C00F0000C0
            0F0000C00F0000C00F0000C00F0000C00F0000C00F0000000000000000007878
            7800787878007878780078787800787878007878780078787800787878007878
            78007878780078787800787878007878780078787800000000000000000000A0
            170000A01700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000A0170000A0170000000000000000006767
            670067676700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00676767006767670000000000000000000081
            1F0000811F0000811F0000811F0000811F0000811F0000811F0000811F000081
            1F0000811F0000811F0000811F0000811F0000811F0000000000000000005757
            5700575757005757570057575700575757005757570057575700575757005757
            5700575757005757570057575700575757005757570000000000000000000062
            27000062270000622700006227000062270000622700FFFFFF00FFFFFF000062
            2700006227000062270000622700006227000062270000000000000000004646
            46004646460046464600464646004646460046464600FFFFFF00FFFFFF004646
            4600464646004646460046464600464646004646460000000000000000000042
            2F0000422F0000422F0000422F0000422F0000422F00FFFFFF00FFFFFF000042
            2F0000422F0000422F0000422F0000422F0000422F0000000000000000003535
            35003535350035353500353535003535350035353500FFFFFF00FFFFFF003535
            3500353535003535350035353500353535003535350000000000000000000042
            2F0000422F0000422F0000422F0000422F0000422F00FFFFFF00FFFFFF000042
            2F0000422F0000422F0000422F0000422F0000422F0000000000000000003535
            35003535350035353500353535003535350035353500FFFFFF00FFFFFF003535
            3500353535003535350035353500353535003535350000000000000000000062
            27000062270000622700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000622700006227000062270000000000000000004646
            46004646460046464600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0046464600464646004646460000000000000000000081
            1F0000811F0000811F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000811F0000811F0000811F0000000000000000005757
            57005757570057575700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00575757005757570057575700000000000000000000A0
            170000A0170000A0170000A0170000A0170000A01700FFFFFF00FFFFFF0000A0
            170000A0170000A0170000A0170000A0170000A0170000000000000000006767
            67006767670067676700676767006767670067676700FFFFFF00FFFFFF006767
            67006767670067676700676767006767670067676700000000000000000000C0
            0F0000C00F0000C00F0000C00F0000C00F0000C00F00FFFFFF00FFFFFF0000C0
            0F0000C00F0000C00F0000C00F0000C00F0000C00F0000000000000000007878
            78007878780078787800787878007878780078787800FFFFFF00FFFFFF007878
            78007878780078787800787878007878780078787800000000000000000000DF
            070000DF070000DF070000DF070000DF070000DF0700FFFFFF00FFFFFF0000DF
            070000DF070000DF070000DF070000DF070000DF070000000000000000008888
            88008888880088888800888888008888880088888800FFFFFF00FFFFFF008888
            88008888880088888800888888008888880088888800000000000000000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000000000000000009999
            9900999999009999990099999900999999009999990099999900999999009999
            9900999999009999990099999900999999009999990000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00}
          Margin = 2
          NumGlyphs = 2
          Spacing = 0
          ExplicitLeft = 114
        end
        object SpeedButton_USU_First: TSpeedButton
          Left = 0
          Top = 0
          Width = 22
          Height = 22
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = 0
        end
        object SpeedButton_USU_Previous: TSpeedButton
          Tag = 1
          Left = 28
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = 0
        end
        object SpeedButton_USU_Next: TSpeedButton
          Tag = 2
          Left = 57
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = 0
        end
        object SpeedButton_USU_Last: TSpeedButton
          Tag = 3
          Left = 86
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = 0
          ExplicitLeft = 85
        end
        object SpeedButton_USU_Post: TSpeedButton
          Tag = 7
          Left = 201
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = -2
          ExplicitLeft = 199
        end
        object SpeedButton_USU_Cancel: TSpeedButton
          Tag = 8
          Left = 230
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = -2
          ExplicitLeft = 228
        end
      end
      object GroupBox_GDU: TGroupBox
        Left = 490
        Top = 235
        Width = 281
        Height = 294
        Anchors = [akTop, akRight, akBottom]
        Caption = ' Grupos aos quais o usu'#225'rio selecionado pertence '
        TabOrder = 1
        ExplicitLeft = 848
        ExplicitHeight = 346
        DesignSize = (
          281
          294)
        object Panel_GDU_Info: TPanel
          Left = 8
          Top = 15
          Width = 265
          Height = 271
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 323
          object Label_GDU_Info: TLabel
            Left = 0
            Top = 0
            Width = 265
            Height = 271
            Align = alClient
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'N'#227'o ser'#225' poss'#237'vel manipular os grupos do usu'#225'rio at'#233' que este us' +
              'u'#225'rio tenha sido completamente definido (inserido e salvo)'
            Layout = tlCenter
            WordWrap = True
            ExplicitWidth = 263
            ExplicitHeight = 107
          end
        end
        object BitBtn_GDU_Adicionar: TBitBtn
          Left = 27
          Top = 261
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
          ExplicitTop = 313
        end
        object BitBtn_GDU_Remover: TBitBtn
          Left = 141
          Top = 261
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
          ExplicitTop = 313
        end
      end
      object GroupBoxUsuariosCadastrar: TGroupBox
        Left = 490
        Top = 93
        Width = 281
        Height = 139
        Anchors = [akTop, akRight]
        Caption = ' Dados do usu'#225'rio '
        TabOrder = 3
        ExplicitLeft = 848
        DesignSize = (
          281
          139)
        object LabelUsuarioNome: TLabel
          Left = 8
          Top = 13
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object LabelUsuarioLogin: TLabel
          Left = 8
          Top = 54
          Width = 67
          Height = 13
          Caption = 'Nome de login'
        end
        object LabelSenha1: TLabel
          Left = 143
          Top = 54
          Width = 30
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Senha'
          ExplicitLeft = 142
        end
        object Label_USU_VA_EMAIL: TLabel
          Left = 8
          Top = 95
          Width = 28
          Height = 13
          Caption = 'E-mail'
        end
        object DBEdit_USU_VA_NOME: TDBEdit
          Left = 8
          Top = 27
          Width = 263
          Height = 21
          DataField = 'VA_NOME'
          TabOrder = 0
        end
        object DBEdit_USU_VA_LOGIN: TDBEdit
          Left = 8
          Top = 68
          Width = 129
          Height = 21
          DataField = 'VA_LOGIN'
          TabOrder = 1
        end
        object DBEdit_USU_TB_SENHA: TDBEdit
          Left = 143
          Top = 68
          Width = 129
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'TB_SENHA'
          Enabled = False
          PasswordChar = #248
          TabOrder = 3
        end
        object DBEdit_USU_VA_EMAIL: TDBEdit
          Left = 8
          Top = 109
          Width = 263
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'VA_EMAIL'
          TabOrder = 2
        end
      end
    end
    object TabSheet_GRU: TTabSheet
      Caption = 'Gerenciamento de grupos'
      ImageIndex = 2
      ExplicitWidth = 1134
      ExplicitHeight = 586
      DesignSize = (
        776
        534)
      object GroupBoxGruposConsultar: TGroupBox
        Left = 5
        Top = 2
        Width = 766
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        Caption = ' Localiza'#231#227'o r'#225'pida '
        TabOrder = 0
        ExplicitWidth = 1124
        DesignSize = (
          766
          57)
        object LabeledEdit_GRU_VA_NOME2: TLabeledEdit
          Left = 8
          Top = 27
          Width = 750
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome'
          LabelSpacing = 1
          TabOrder = 0
          ExplicitWidth = 1108
        end
      end
      object Panel_GRU_Layer: TPanel
        Left = 5
        Top = 449
        Width = 765
        Height = 22
        Anchors = [akLeft, akRight, akBottom]
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 2
        ExplicitTop = 501
        ExplicitWidth = 1123
        DesignSize = (
          765
          22)
        object SpeedButton_GRU_Delete: TSpeedButton
          Tag = 15
          Left = 409
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00000000000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF0000000000000000004C4C
            4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C
            4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C0000000000000000000000
            EF000000EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000EF000000EF0000000000000000004747
            470047474700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00474747004747470000000000000000000000
            DF000000DF000000DF000000DF000000DF000000DF000000DF000000DF000000
            DF000000DF000000DF000000DF000000DF000000DF0000000000000000004343
            4300434343004343430043434300434343004343430043434300434343004343
            4300434343004343430043434300434343004343430000000000000000000000
            CF000000CF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000CF000000CF0000000000000000003E3E
            3E003E3E3E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF003E3E3E003E3E3E0000000000000000000000
            C0000000C0000000C0000000C0000000C0000000C0000000C0000000C0000000
            C0000000C0000000C0000000C0000000C0000000C00000000000000000003939
            3900393939003939390039393900393939003939390039393900393939003939
            3900393939003939390039393900393939003939390000000000000000000000
            B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000000
            B0000000B0000000B0000000B0000000B0000000B00000000000000000003535
            3500353535003535350035353500353535003535350035353500353535003535
            3500353535003535350035353500353535003535350000000000000000000000
            A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000000
            A0000000A0000000A0000000A0000000A0000000A00000000000000000003030
            3000303030003030300030303000303030003030300030303000303030003030
            3000303030003030300030303000303030003030300000000000000000000000
            A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000000
            A0000000A0000000A0000000A0000000A0000000A00000000000000000003030
            3000303030003030300030303000303030003030300030303000303030003030
            3000303030003030300030303000303030003030300000000000000000000000
            B0000000B0000000B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000B0000000B0000000B00000000000000000003535
            35003535350035353500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0035353500353535003535350000000000000000000000
            C0000000C0000000C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000C0000000C0000000C00000000000000000003939
            39003939390039393900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0039393900393939003939390000000000000000000000
            CF000000CF000000CF000000CF000000CF000000CF000000CF000000CF000000
            CF000000CF000000CF000000CF000000CF000000CF0000000000000000003E3E
            3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E
            3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E0000000000000000000000
            DF000000DF000000DF000000DF000000DF000000DF000000DF000000DF000000
            DF000000DF000000DF000000DF000000DF000000DF0000000000000000004343
            4300434343004343430043434300434343004343430043434300434343004343
            4300434343004343430043434300434343004343430000000000000000000000
            EF000000EF000000EF000000EF000000EF000000EF000000EF000000EF000000
            EF000000EF000000EF000000EF000000EF000000EF0000000000000000004747
            4700474747004747470047474700474747004747470047474700474747004747
            4700474747004747470047474700474747004747470000000000000000000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF0000000000000000004C4C
            4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C
            4C004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C0000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00}
          Margin = 2
          NumGlyphs = 2
          Spacing = -2
          ExplicitLeft = 376
        end
        object SpeedButton_GRU_Refresh: TSpeedButton
          Tag = 19
          Left = 743
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop, akRight]
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = -2
          ExplicitLeft = 684
        end
        object SpeedButton_GRU_Edit: TSpeedButton
          Tag = 16
          Left = 488
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF0000000000FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF000000FF000000FF000000FF00000000000000000000001919
            1900191919001919190019191900191919001919190019191900191919001919
            190019191900191919001919190019191900191919000000000000000000E700
            0000E7000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00E7000000E700000000000000000000001717
            170017171700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0017171700171717000000000000000000CF00
            0000CF000000CF000000CF000000CF000000CF000000CF000000CF000000CF00
            0000CF000000CF000000CF000000CF000000CF00000000000000000000001414
            1400141414001414140014141400141414001414140014141400141414001414
            140014141400141414001414140014141400141414000000000000000000B800
            0000B8000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00B8000000B800000000000000000000001212
            120012121200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0012121200121212000000000000000000A000
            0000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A000
            0000A0000000A0000000A0000000A0000000A000000000000000000000001010
            1000101010001010100010101000101010001010100010101000101010001010
            1000101010001010100010101000101010001010100000000000000000008900
            0000890000008900000089000000890000008900000089000000890000008900
            0000890000008900000089000000890000008900000000000000000000000D0D
            0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D
            0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D0000000000000000007100
            0000710000007100000071000000710000007100000071000000710000007100
            0000710000007100000071000000710000007100000000000000000000000B0B
            0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
            0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B0000000000000000007100
            00007100000071000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0071000000710000007100000000000000000000000B0B
            0B000B0B0B000B0B0B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000B0B0B000B0B0B000B0B0B0000000000000000008900
            0000890000008900000089000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF008900000089000000890000008900000000000000000000000D0D
            0D000D0D0D000D0D0D000D0D0D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000D0D0D000D0D0D000D0D0D000D0D0D000000000000000000A000
            0000A0000000A0000000A0000000A0000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00A0000000A0000000A0000000A0000000A000000000000000000000001010
            100010101000101010001010100010101000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0010101000101010001010100010101000101010000000000000000000B800
            0000B8000000B8000000B8000000B8000000B8000000FFFFFF00FFFFFF00B800
            0000B8000000B8000000B8000000B8000000B800000000000000000000001212
            12001212120012121200121212001212120012121200FFFFFF00FFFFFF001212
            120012121200121212001212120012121200121212000000000000000000CF00
            0000CF000000CF000000CF000000CF000000CF000000CF000000CF000000CF00
            0000CF000000CF000000CF000000CF000000CF00000000000000000000001414
            1400141414001414140014141400141414001414140014141400141414001414
            140014141400141414001414140014141400141414000000000000000000E700
            0000E7000000E7000000E7000000E7000000E7000000E7000000E7000000E700
            0000E7000000E7000000E7000000E7000000E700000000000000000000001717
            1700171717001717170017171700171717001717170017171700171717001717
            170017171700171717001717170017171700171717000000000000000000FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF000000FF000000FF000000FF00000000000000000000001919
            1900191919001919190019191900191919001919190019191900191919001919
            1900191919001919190019191900191919001919190000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00}
          Margin = 2
          NumGlyphs = 2
          Spacing = -2
          ExplicitLeft = 450
        end
        object SpeedButton_GRU_Insert: TSpeedButton
          Tag = 14
          Left = 332
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF000000000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000000000000000009999
            9900999999009999990099999900999999009999990099999900999999009999
            99009999990099999900999999009999990099999900000000000000000000DF
            070000DF0700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000DF070000DF070000000000000000008888
            880088888800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF008888880088888800000000000000000000C0
            0F0000C00F0000C00F0000C00F0000C00F0000C00F0000C00F0000C00F0000C0
            0F0000C00F0000C00F0000C00F0000C00F0000C00F0000000000000000007878
            7800787878007878780078787800787878007878780078787800787878007878
            78007878780078787800787878007878780078787800000000000000000000A0
            170000A01700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000A0170000A0170000000000000000006767
            670067676700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00676767006767670000000000000000000081
            1F0000811F0000811F0000811F0000811F0000811F0000811F0000811F000081
            1F0000811F0000811F0000811F0000811F0000811F0000000000000000005757
            5700575757005757570057575700575757005757570057575700575757005757
            5700575757005757570057575700575757005757570000000000000000000062
            27000062270000622700006227000062270000622700FFFFFF00FFFFFF000062
            2700006227000062270000622700006227000062270000000000000000004646
            46004646460046464600464646004646460046464600FFFFFF00FFFFFF004646
            4600464646004646460046464600464646004646460000000000000000000042
            2F0000422F0000422F0000422F0000422F0000422F00FFFFFF00FFFFFF000042
            2F0000422F0000422F0000422F0000422F0000422F0000000000000000003535
            35003535350035353500353535003535350035353500FFFFFF00FFFFFF003535
            3500353535003535350035353500353535003535350000000000000000000042
            2F0000422F0000422F0000422F0000422F0000422F00FFFFFF00FFFFFF000042
            2F0000422F0000422F0000422F0000422F0000422F0000000000000000003535
            35003535350035353500353535003535350035353500FFFFFF00FFFFFF003535
            3500353535003535350035353500353535003535350000000000000000000062
            27000062270000622700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000622700006227000062270000000000000000004646
            46004646460046464600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0046464600464646004646460000000000000000000081
            1F0000811F0000811F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000811F0000811F0000811F0000000000000000005757
            57005757570057575700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00575757005757570057575700000000000000000000A0
            170000A0170000A0170000A0170000A0170000A01700FFFFFF00FFFFFF0000A0
            170000A0170000A0170000A0170000A0170000A0170000000000000000006767
            67006767670067676700676767006767670067676700FFFFFF00FFFFFF006767
            67006767670067676700676767006767670067676700000000000000000000C0
            0F0000C00F0000C00F0000C00F0000C00F0000C00F00FFFFFF00FFFFFF0000C0
            0F0000C00F0000C00F0000C00F0000C00F0000C00F0000000000000000007878
            78007878780078787800787878007878780078787800FFFFFF00FFFFFF007878
            78007878780078787800787878007878780078787800000000000000000000DF
            070000DF070000DF070000DF070000DF070000DF0700FFFFFF00FFFFFF0000DF
            070000DF070000DF070000DF070000DF070000DF070000000000000000008888
            88008888880088888800888888008888880088888800FFFFFF00FFFFFF008888
            88008888880088888800888888008888880088888800000000000000000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000000000000000009999
            9900999999009999990099999900999999009999990099999900999999009999
            9900999999009999990099999900999999009999990000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00}
          Margin = 2
          NumGlyphs = 2
          Spacing = 0
          ExplicitLeft = 305
        end
        object SpeedButton_GRU_First: TSpeedButton
          Tag = 10
          Left = 0
          Top = 0
          Width = 22
          Height = 22
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = 0
        end
        object SpeedButton_GRU_Previous: TSpeedButton
          Tag = 11
          Left = 97
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = 0
          ExplicitLeft = 88
        end
        object SpeedButton_GRU_Next: TSpeedButton
          Tag = 12
          Left = 176
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = 0
          ExplicitLeft = 161
        end
        object SpeedButton_GRU_Last: TSpeedButton
          Tag = 13
          Left = 253
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = 0
          ExplicitLeft = 232
        end
        object SpeedButton_GRU_Post: TSpeedButton
          Tag = 17
          Left = 565
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = -2
          ExplicitLeft = 520
        end
        object SpeedButton_GRU_Cancel: TSpeedButton
          Tag = 18
          Left = 645
          Top = 0
          Width = 22
          Height = 22
          Anchors = [akTop]
          Flat = True
          Margin = 2
          NumGlyphs = 2
          Spacing = -2
          ExplicitLeft = 594
        end
      end
      object GroupBoxGruposCadastrar: TGroupBox
        Left = 5
        Top = 474
        Width = 766
        Height = 56
        Anchors = [akLeft, akRight, akBottom]
        Caption = ' Dados do grupo '
        TabOrder = 1
        ExplicitTop = 526
        ExplicitWidth = 1124
        DesignSize = (
          766
          56)
        object LabelGrupoNome: TLabel
          Left = 8
          Top = 13
          Width = 73
          Height = 13
          Caption = 'Nome do grupo'
        end
        object LabelGrupoDescricao: TLabel
          Left = 224
          Top = 13
          Width = 92
          Height = 13
          Caption = 'Descri'#231#227'o do grupo'
        end
        object DBEdit_GRU_VA_NOME: TDBEdit
          Left = 8
          Top = 27
          Width = 210
          Height = 21
          DataField = 'VA_NOME'
          TabOrder = 0
        end
        object DBEdit_GRU_VA_DESCRICAO: TDBEdit
          Left = 224
          Top = 27
          Width = 535
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'VA_DESCRICAO'
          TabOrder = 1
          ExplicitWidth = 893
        end
      end
    end
  end
end

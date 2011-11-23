inherited KRFMSegurancaEPermissoes: TKRFMSegurancaEPermissoes
  Caption = 'Seguran'#231'a e Permiss'#245'es'
  ClientHeight = 562
  ClientWidth = 784
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited TLBRAcoes: TToolBar
    Width = 784
    ExplicitWidth = 784
    inherited ToolButton1: TToolButton
      ImageIndex = 1
    end
    inherited ToolButton2: TToolButton
      ImageIndex = 0
    end
  end
  object PGCTSegurancaEPermissoes: TPageControl [1]
    Left = 0
    Top = 40
    Width = 784
    Height = 522
    ActivePage = TabSheet_Permissions
    Align = alClient
    TabOrder = 1
    ExplicitTop = 0
    object TabSheet_Permissions: TTabSheet
      AlignWithMargins = True
      Caption = 'Permiss'#245'es'
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
          ActivePage = TabSheet_USU_Consultar
          Align = alRight
          TabOrder = 0
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
              EditLabel.Width = 137
              EditLabel.Height = 13
              EditLabel.Caption = 'Nome / Identifica'#231#227'o cont'#233'm'
              LabelSpacing = 1
              TabOrder = 0
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
          ActivePage = TBSHGRU
          Align = alClient
          MultiLine = True
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          object TBSHGRU: TTabSheet
            Caption = 'Entidades e permiss'#245'es do grupo selecionado'
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
      DesignSize = (
        776
        494)
      object GroupBoxUsuariosConsultar2: TGroupBox
        Left = 5
        Top = 2
        Width = 766
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        Caption = ' Localiza'#231#227'o r'#225'pida '
        TabOrder = 0
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
        Height = 258
        Anchors = [akTop, akRight, akBottom]
        Caption = ' Grupos aos quais o usu'#225'rio selecionado pertence '
        TabOrder = 1
        DesignSize = (
          281
          258)
        object Panel_GDU_Info: TPanel
          Left = 8
          Top = 15
          Width = 265
          Height = 235
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 0
          object Label_GDU_Info: TLabel
            Left = 0
            Top = 0
            Width = 265
            Height = 235
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
          Top = 225
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
          Left = 141
          Top = 225
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
      object GroupBoxUsuariosCadastrar: TGroupBox
        Left = 490
        Top = 93
        Width = 281
        Height = 139
        Anchors = [akTop, akRight]
        Caption = ' Dados do usu'#225'rio '
        TabOrder = 3
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
      DesignSize = (
        776
        494)
      object GroupBoxGruposConsultar: TGroupBox
        Left = 5
        Top = 2
        Width = 766
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        Caption = ' Localiza'#231#227'o r'#225'pida '
        TabOrder = 0
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
        end
      end
      object Panel_GRU_Layer: TPanel
        Left = 5
        Top = 413
        Width = 765
        Height = 22
        Anchors = [akLeft, akRight, akBottom]
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 2
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
        Top = 438
        Width = 766
        Height = 56
        Anchors = [akLeft, akRight, akBottom]
        Caption = ' Dados do grupo '
        TabOrder = 1
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
        end
      end
    end
  end
  inherited IMLIToolBar: TImageList
    Bitmap = {
      494C010102000800240020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
end

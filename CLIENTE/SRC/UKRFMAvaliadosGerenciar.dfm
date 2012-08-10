inherited KRFMAvaliadosGerenciar: TKRFMAvaliadosGerenciar
  Caption = 'Gerenciar Avaliados'
  ClientHeight = 477
  ClientWidth = 784
  ExplicitWidth = 800
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  object PGCTAvaliados: TPageControl [0]
    Left = 0
    Top = 40
    Width = 784
    Height = 437
    ActivePage = TBSHConsultar
    Align = alClient
    TabOrder = 2
    OnChanging = PGCTAvaliadosChanging
    object TBSHConsultar: TTabSheet
      AlignWithMargins = True
      Caption = 'Consultar'
      object KRDGAvaliados: TKRKDBGrid
        AlignWithMargins = True
        Left = 0
        Top = 179
        Width = 770
        Height = 174
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEx = [dgAutomaticColumSizes]
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
        VariableWidthColumns = '<va_nome>'
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'in_avaliados_id'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'va_nome'
            Width = 405
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'da_datanascimento'
            Title.Alignment = taCenter
            Title.Caption = 'Nascimento'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'foneresidencial'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fonecelular'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end>
      end
      object DBNAConsultarAvaliados: TDBNavigator
        AlignWithMargins = True
        Left = 0
        Top = 148
        Width = 770
        Height = 25
        Margins.Left = 0
        Margins.Right = 0
        DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        Align = alTop
        TabOrder = 1
      end
      object GRBXFiltroAvaliados: TGroupBox
        Left = 0
        Top = 353
        Width = 770
        Height = 50
        Align = alBottom
        Caption = ' Filtros definidos '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object LABLFiltroAvaliados: TLabel
          AlignWithMargins = True
          Left = 8
          Top = 15
          Width = 754
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
          ExplicitLeft = 10
          ExplicitTop = 17
          ExplicitWidth = 592
        end
      end
      object PANLLayerFiltros: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 770
        Height = 143
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alTop
        BevelOuter = bvNone
        Locked = True
        TabOrder = 3
        DesignSize = (
          770
          143)
        object GRBXPorDadosUnicos: TGroupBox
          Left = 0
          Top = -2
          Width = 164
          Height = 55
          Caption = ' Por dados '#250'nicos (ou) '
          TabOrder = 0
          object KRLECodigo: TKRKLabeledEdit
            Left = 6
            Top = 27
            Width = 64
            Height = 21
            EditFormat.FinalMask = '###.###.###.###.###.###.###'
            EditFormat.Format = foInteger
            EditLabel.Width = 33
            EditLabel.Height = 13
            EditLabel.Caption = 'C'#243'digo'
            LabelSpacing = 1
            MaxLength = 27
            TabOrder = 0
            OnKeyPress = KRLECodigoKeyPress
          end
          object KRLEIdentidade: TKRKLabeledEdit
            Left = 76
            Top = 27
            Width = 82
            Height = 21
            EditFormat.FinalMask = '###.###.###.###.###.###.###'
            EditFormat.Format = foInteger
            EditLabel.Width = 52
            EditLabel.Height = 13
            EditLabel.Caption = 'Identidade'
            LabelSpacing = 1
            MaxLength = 27
            TabOrder = 1
            OnKeyPress = KRLEIdentidadeKeyPress
          end
        end
        object GRBXPorDadosCompletos: TGroupBox
          Left = 170
          Top = -2
          Width = 315
          Height = 55
          Caption = ' Por dados completos (ou) '
          TabOrder = 1
          object KRLENascimento: TKRKLabeledEdit
            Left = 6
            Top = 27
            Width = 82
            Height = 21
            EditFormat.FinalMask = '##/##/####'
            EditFormat.Format = foDate
            EditLabel.Width = 55
            EditLabel.Height = 13
            EditLabel.Caption = 'Nascimento'
            LabelSpacing = 1
            MaxLength = 10
            TabOrder = 0
            OnKeyPress = KRLENascimentoKeyPress
          end
          object KRLEFoneResidencial: TKRKLabeledEdit
            Left = 94
            Top = 27
            Width = 105
            Height = 21
            EditFormat.FinalMask = '(##) ####-####'
            EditFormat.Format = foCustom
            EditFormat.FormatScript.Strings = (
              '\D'#170
              '^(\d\d)(\d)'#170'($1) $2'
              '(\d{4})(\d)'#186'$1-$2')
            EditLabel.Width = 77
            EditLabel.Height = 13
            EditLabel.Caption = 'Fone residencial'
            LabelSpacing = 1
            MaxLength = 14
            TabOrder = 1
            OnKeyPress = KRLEFoneResidencialKeyPress
          end
          object KRLEFoneCelular: TKRKLabeledEdit
            Left = 205
            Top = 27
            Width = 105
            Height = 21
            EditFormat.FinalMask = '(##) ####-####'
            EditFormat.Format = foCustom
            EditFormat.FormatScript.Strings = (
              '\D'#170
              '^(\d\d)(\d)'#170'($1) $2'
              '(\d{4})(\d)'#186'$1-$2')
            EditLabel.Width = 58
            EditLabel.Height = 13
            EditLabel.Caption = 'Fone celular'
            LabelSpacing = 1
            MaxLength = 14
            TabOrder = 2
            OnKeyPress = KRLEFoneCelularKeyPress
          end
        end
        object GRBXPorDadosParciais: TGroupBox
          Left = 0
          Top = 52
          Width = 770
          Height = 91
          Anchors = [akLeft, akTop, akRight]
          Caption = ' Por dados parciais (e) '
          TabOrder = 2
          DesignSize = (
            770
            91)
          object LAEDNome: TLabeledEdit
            Left = 6
            Top = 27
            Width = 759
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            EditLabel.Width = 27
            EditLabel.Height = 13
            EditLabel.Caption = 'Nome'
            LabelSpacing = 1
            TabOrder = 0
            OnKeyPress = DoKeyPressPesquisaParcial
          end
          object LAEDBairro: TLabeledEdit
            Left = 610
            Top = 63
            Width = 155
            Height = 21
            Anchors = [akTop, akRight]
            EditLabel.Width = 28
            EditLabel.Height = 13
            EditLabel.Caption = 'Bairro'
            LabelSpacing = 1
            TabOrder = 1
            OnKeyPress = DoKeyPressPesquisaParcial
          end
          object LAEDCidade: TLabeledEdit
            Left = 449
            Top = 63
            Width = 155
            Height = 21
            Anchors = [akTop, akRight]
            EditLabel.Width = 33
            EditLabel.Height = 13
            EditLabel.Caption = 'Cidade'
            LabelSpacing = 1
            TabOrder = 2
            OnKeyPress = DoKeyPressPesquisaParcial
          end
          object LAEDLogradouro: TLabeledEdit
            Left = 6
            Top = 63
            Width = 437
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            EditLabel.Width = 55
            EditLabel.Height = 13
            EditLabel.Caption = 'Logradouro'
            LabelSpacing = 1
            TabOrder = 3
            OnKeyPress = DoKeyPressPesquisaParcial
          end
        end
      end
    end
    object TBSHGerenciar: TTabSheet
      AlignWithMargins = True
      Caption = 'Gerenciar'
      ImageIndex = 1
      DesignSize = (
        770
        403)
      object DBNAGerenciarAvaliados: TDBNavigator
        Left = 0
        Top = 378
        Width = 770
        Height = 25
        DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        Align = alBottom
        TabOrder = 5
      end
      object GRBXContato: TGroupBox
        Left = 289
        Top = 52
        Width = 228
        Height = 55
        Caption = ' Contato '
        TabOrder = 2
        object KLDEFoneCelular: TKRKLabeledDBEdit
          Left = 117
          Top = 27
          Width = 105
          Height = 21
          DataField = 'ch_fonecelular'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          DBEditFormat.FinalMask = '(##) ####-####'
          DBEditFormat.Format = foCustom
          DBEditFormat.FormatScript.Strings = (
            '\D'#170
            '^(\d\d)(\d)'#170'($1) $2'
            '(\d{4})(\d)'#186'$1-$2')
          EditLabel.Width = 58
          EditLabel.Height = 13
          EditLabel.Caption = 'Fone celular'
          LabelSpacing = 1
          MaxLength = 14
          TabOrder = 1
        end
        object KLDEFoneResidencial: TKRKLabeledDBEdit
          Left = 6
          Top = 27
          Width = 105
          Height = 21
          DataField = 'ch_foneresidencial'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          DBEditFormat.FinalMask = '(##) ####-####'
          DBEditFormat.Format = foCustom
          DBEditFormat.FormatScript.Strings = (
            '\D'#170
            '^(\d\d)(\d)'#170'($1) $2'
            '(\d{4})(\d)'#186'$1-$2')
          EditLabel.Width = 77
          EditLabel.Height = 13
          EditLabel.Caption = 'Fone residencial'
          LabelSpacing = 1
          MaxLength = 14
          TabOrder = 0
        end
      end
      object GRBXDocumentos: TGroupBox
        Left = 0
        Top = 52
        Width = 283
        Height = 55
        Caption = ' Documentos '
        TabOrder = 1
        object LABLOrgaoEmissor: TLabel
          Left = 117
          Top = 13
          Width = 69
          Height = 13
          Caption = #211'rg'#227'o Emissor'
          FocusControl = DBCXOrgaoEmissorRg
        end
        object LABLUFEmissaoRG: TLabel
          Left = 232
          Top = 13
          Width = 21
          Height = 13
          Caption = 'U.F.'
          FocusControl = DBCXUFEmissaoRg
        end
        object KLDERg: TKRKLabeledDBEdit
          Left = 6
          Top = 27
          Width = 105
          Height = 21
          DataField = 'va_rg'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          DBEditFormat.FinalMask = '#.###.###.###'
          DBEditFormat.Format = foCustom
          DBEditFormat.FormatScript.Strings = (
            '\D'#170
            '(\d)(\d{3})$'#186'$1.$2'
            '(\d)(\d{3}\.)'#186'$1.$2'
            '(\d)(\d{3}\.)'#186'$1.$2')
          EditLabel.Width = 52
          EditLabel.Height = 13
          EditLabel.Caption = 'Identidade'
          LabelSpacing = 1
          MaxLength = 13
          TabOrder = 0
        end
        object DBCXOrgaoEmissorRg: TDBComboBox
          Left = 117
          Top = 27
          Width = 109
          Height = 21
          Style = csDropDownList
          DataField = 'en_orgaoemissorrg'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          Items.Strings = (
            'ABNC'
            'CGPI/DUREX/DPF'
            'CGPI'
            'CGPMAF'
            'CNIG'
            'CNT'
            'COREN'
            'CRA'
            'CRAS'
            'CRB'
            'CRC'
            'CRE'
            'CREA'
            'CRECI'
            'CREFIT'
            'CRF'
            'CRM'
            'CRN'
            'CRO'
            'CRP'
            'CRPRE'
            'CRQ'
            'CRRC'
            'CRMV'
            'CSC'
            'CTPS'
            'DIC'
            'DIREX'
            'DPMAF'
            'DPT'
            'DST'
            'FGTS'
            'FIPE'
            'FLS'
            'GOVGO'
            'I CLA'
            'IFP'
            'IGP'
            'IICCECF/RO'
            'IIMG'
            'IML'
            'IPC'
            'IPF'
            'MAE'
            'MEX'
            'MMA'
            'OAB'
            'OMB'
            'PCMG'
            'PMMG'
            'POF'
            'DPF'
            'POM'
            'SDS'
            'SNJ'
            'SECC'
            'SEJUSP'
            'SES'
            'EST'
            'SESP'
            'SJS'
            'SJTC'
            'SJTS'
            'SPTC'
            'SSP'
            'ZZZ')
          TabOrder = 1
        end
        object DBCXUFEmissaoRg: TDBComboBox
          Left = 232
          Top = 27
          Width = 46
          Height = 21
          Style = csDropDownList
          DataField = 'en_ufemissaorg'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
          TabOrder = 2
        end
      end
      object GRBXDadosPessoais: TGroupBox
        Left = 0
        Top = -2
        Width = 770
        Height = 55
        Anchors = [akLeft, akTop, akRight]
        Caption = ' Dados pessoais '
        TabOrder = 0
        DesignSize = (
          770
          55)
        object LABLGenero: TLabel
          Left = 606
          Top = 13
          Width = 35
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'G'#234'nero'
          ExplicitLeft = 447
        end
        object DBCXGenero: TDBComboBox
          Left = 606
          Top = 27
          Width = 70
          Height = 21
          Style = csDropDownList
          Anchors = [akTop, akRight]
          DataField = 'en_genero'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          Items.Strings = (
            'Masculino'
            'Feminino')
          TabOrder = 1
        end
        object KLDEDataNascimento: TKRKLabeledDBEdit
          Left = 682
          Top = 27
          Width = 82
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'da_datanascimento'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          DBEditFormat.FinalMask = '##/##/####'
          DBEditFormat.KeepMask = True
          DBEditFormat.Format = foDate
          EditLabel.Width = 55
          EditLabel.Height = 13
          EditLabel.Caption = 'Nascimento'
          LabelSpacing = 1
          MaxLength = 10
          TabOrder = 2
        end
        object KLDENome: TKRKLabeledDBEdit
          Left = 6
          Top = 27
          Width = 594
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'va_nome'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          EditLabel.Width = 73
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome completo'
          LabelSpacing = 1
          TabOrder = 0
        end
      end
      object GRBXEndereco: TGroupBox
        Left = 0
        Top = 106
        Width = 770
        Height = 91
        Anchors = [akLeft, akTop, akRight]
        Caption = ' Endere'#231'o '
        TabOrder = 3
        DesignSize = (
          770
          91)
        object LABLTipoDeLogradouro: TLabel
          Left = 6
          Top = 13
          Width = 90
          Height = 13
          Caption = 'Tipo de logradouro'
          FocusControl = DBCXTipoLogradouro
        end
        object LABLUF: TLabel
          Left = 718
          Top = 49
          Width = 21
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'U.F.'
          FocusControl = DBCXUF
          ExplicitLeft = 559
        end
        object DBCXTipoLogradouro: TDBComboBox
          Left = 6
          Top = 27
          Width = 90
          Height = 21
          Style = csDropDownList
          DataField = 'en_tipologradouro'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          Items.Strings = (
            'Outros'
            'Aeroporto'
            'Alameda'
            #193'rea'
            'Avenida'
            'Campo'
            'Ch'#225'cara'
            'Col'#244'nia'
            'Condom'#237'nio'
            'Conjunto'
            'Distrito'
            'Esplanada'
            'Esta'#231#227'o'
            'Estrada'
            'Favela'
            'Fazenda'
            'Feira'
            'Jardim'
            'Ladeira'
            'Lago'
            'Lagoa'
            'Largo'
            'Loteamento'
            'Morro'
            'N'#250'cleo'
            'Parque'
            'Passarela'
            'P'#225'tio'
            'Pra'#231'a'
            'Quadra'
            'Recanto'
            'Residencial'
            'Rodovia'
            'Rua'
            'Setor'
            'S'#237'tio'
            'Travessa'
            'Trecho'
            'Trevo'
            'Vale'
            'Vereda'
            'Via'
            'Viaduto'
            'Viela'
            'Vila')
          TabOrder = 0
        end
        object KLDEComplemento: TKRKLabeledDBEdit
          Left = 6
          Top = 63
          Width = 155
          Height = 21
          DataField = 'va_complementologradouro'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          EditLabel.Width = 65
          EditLabel.Height = 13
          EditLabel.Caption = 'Complemento'
          EditLabel.Color = clRed
          EditLabel.ParentColor = False
          EditLabel.Transparent = True
          LabelSpacing = 1
          TabOrder = 3
        end
        object KLDEIdLogradouro: TKRKLabeledDBEdit
          Left = 636
          Top = 27
          Width = 128
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'va_idlogradouro'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#250'mero'
          LabelSpacing = 1
          TabOrder = 2
        end
        object KLDELogradouro: TKRKLabeledDBEdit
          Left = 102
          Top = 27
          Width = 528
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'va_nomelogradouro'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          EditLabel.Width = 55
          EditLabel.Height = 13
          EditLabel.Caption = 'Logradouro'
          LabelSpacing = 1
          TabOrder = 1
        end
        object DBCXUF: TDBComboBox
          Left = 718
          Top = 63
          Width = 46
          Height = 21
          Style = csDropDownList
          Anchors = [akTop, akRight]
          DataField = 'en_uf'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
          TabOrder = 6
        end
        object KLDEBairro: TKRKLabeledDBEdit
          Left = 167
          Top = 63
          Width = 155
          Height = 21
          DataField = 'va_bairrologradouro'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'Bairro'
          LabelSpacing = 1
          TabOrder = 4
        end
        object KLDECidade: TKRKLabeledDBEdit
          Left = 328
          Top = 63
          Width = 384
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'va_cidade'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade'
          LabelSpacing = 1
          TabOrder = 5
        end
      end
      object GRBXObservacoes: TGroupBox
        AlignWithMargins = True
        Left = 0
        Top = 200
        Width = 770
        Height = 175
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alBottom
        Caption = ' Observa'#231#245'es '
        TabOrder = 4
        object DBMOObservacoes: TDBMemo
          AlignWithMargins = True
          Left = 6
          Top = 15
          Width = 758
          Height = 153
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 4
          Margins.Bottom = 5
          Align = alClient
          DataField = 'tx_observacoes'
          DataSource = KRDMAvaliadosGerenciar.DTSRAvaliados
          TabOrder = 0
        end
      end
    end
    object TBSHDadosSocioDemograficos: TTabSheet
      AlignWithMargins = True
      Caption = 'Dados s'#243'cio-demogr'#225'ficos'
      ImageIndex = 2
      object SCBXDadosSocioDemograficos: TScrollBox
        Left = 0
        Top = 60
        Width = 770
        Height = 343
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clWindow
        ParentColor = False
        TabOrder = 0
        OnMouseWheelDown = DoScrollBoxMouseWheelDown
        OnMouseWheelUp = DoScrollBoxMouseWheelUp
        object DBRGCorRaca: TDBRadioGroup
          AlignWithMargins = True
          Left = 6
          Top = 0
          Width = 737
          Height = 105
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Align = alTop
          Caption = ' 1.0 - Como voc'#234' auto-define a sua cor ou ra'#231'a? '
          DataField = 'sm_corraca'
          DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
          Items.Strings = (
            'Branca'
            'Preta (de origem ou descend'#234'ncia negra)'
            'Amarela (de origem ou descend'#234'ncia asi'#225'tica)'
            'Ind'#237'gena (de origem ou descend'#234'ncia)'
            'Parda (mulata, mesti'#231'a, cabocla, cafuza, mameluca, etc.)')
          ParentBackground = True
          TabOrder = 0
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5')
        end
        object DBRGEstadoCivil: TDBRadioGroup
          AlignWithMargins = True
          Left = 6
          Top = 108
          Width = 737
          Height = 88
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Align = alTop
          Caption = ' 2.0 - Qual seu estado civil? '
          DataField = 'sm_estadocivil'
          DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
          Items.Strings = (
            'Solteiro(a)'
            'Casado(a) ou em uni'#227'o est'#225'vel'
            'Separado(a) ou divorciado(a)'
            'Vi'#250'vo(a)')
          ParentBackground = True
          TabOrder = 1
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBRGGrauInstrucao: TDBRadioGroup
          AlignWithMargins = True
          Left = 6
          Top = 199
          Width = 737
          Height = 105
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Align = alTop
          Caption = ' 3.0 - Qual seu grau de instru'#231#227'o? '
          DataField = 'sm_graudeinstrucao'
          DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
          Items.Strings = (
            
              'Analfabeto ou cursou at'#233' a 3'#170' s'#233'rie do ensino fundamental (prim'#225 +
              'rio incompleto)'
            'Concluiu a 4'#170' s'#233'rie do ensino fundamental (prim'#225'rio completo)'
            'Fundamental completo (ginasial completo)'
            
              'M'#233'dio completo (colegial, cl'#225'ssico, cient'#237'fico ou magist'#233'rio com' +
              'pleto)'
            'Superior completo')
          ParentBackground = True
          TabOrder = 2
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5')
        end
        object GRBXProfissao: TGroupBox
          AlignWithMargins = True
          Left = 6
          Top = 307
          Width = 737
          Height = 65
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Align = alTop
          BiDiMode = bdLeftToRight
          Caption = ' 4.0 - Qual sua profiss'#227'o e status ocupacional? '
          ParentBiDiMode = False
          TabOrder = 3
          DesignSize = (
            737
            65)
          object PANLCBO: TPanel
            Left = 212
            Top = 29
            Width = 517
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              517
              21)
            object KLDECBO: TKRKLabeledDBEdit
              Left = 47
              Top = 0
              Width = 50
              Height = 21
              Color = clInfoBk
              DataField = 'cbo'
              DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
              DBEditFormat.FinalMask = '####-##'
              DBEditFormat.Format = foCustom
              DBEditFormat.FormatScript.Strings = (
                '\D'#170
                '(\d{4})(\d)'#186'$1-$2')
              EditLabel.Width = 44
              EditLabel.Height = 13
              EditLabel.Caption = 'Profiss'#227'o'
              LabelPosition = lpLeft
              MaxLength = 7
              ReadOnly = True
              TabOrder = 1
            end
            object BUTNPesqisarCBO: TButton
              Left = 496
              Top = 0
              Width = 21
              Height = 21
              Action = KRDMAvaliadosGerenciar.ACTNSelecionarCBO
              Align = alRight
              TabOrder = 0
            end
            object DBEDTituloCBO: TDBEdit
              Left = 100
              Top = 0
              Width = 393
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Color = clInfoBk
              DataField = 'profissao'
              DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
              ReadOnly = True
              TabOrder = 2
            end
          end
          object DBRGProfissao: TDBRadioGroup
            Left = 8
            Top = 14
            Width = 198
            Height = 42
            Caption = ' Status '
            Columns = 2
            DataField = 'bo_aposentado'
            DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
            Items.Strings = (
              'Ativo(a)'
              'Aposentado(a)')
            ParentBackground = True
            TabOrder = 1
            Values.Strings = (
              'False'
              'True')
          end
        end
        object GRBXPatrimonio: TGroupBox
          AlignWithMargins = True
          Left = 6
          Top = 375
          Width = 737
          Height = 425
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Align = alTop
          Caption = ' 5.0 - Quais e quantos dos itens abaixo existem em seu lar? '
          TabOrder = 4
          object DBRGTelevisor: TDBRadioGroup
            AlignWithMargins = True
            Left = 8
            Top = 15
            Width = 721
            Height = 42
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Align = alTop
            Caption = ' 5.1 - Televisor em cores '
            Columns = 5
            DataField = 'sm_televisor'
            DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
            Items.Strings = (
              'N'#227'o tem'
              '1'
              '2'
              '3'
              '4 ou +')
            ParentBackground = True
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4')
          end
          object DBRGRadio: TDBRadioGroup
            AlignWithMargins = True
            Left = 8
            Top = 60
            Width = 721
            Height = 42
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Align = alTop
            Caption = ' 5.2 - R'#225'dio '
            Columns = 5
            DataField = 'sm_radio'
            DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
            Items.Strings = (
              'N'#227'o tem'
              '1'
              '2'
              '3'
              '4 ou +')
            ParentBackground = True
            TabOrder = 1
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4')
          end
          object DBRGBanheiro: TDBRadioGroup
            AlignWithMargins = True
            Left = 8
            Top = 105
            Width = 721
            Height = 42
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Align = alTop
            Caption = ' 5.3 - Banheiro '
            Columns = 5
            DataField = 'sm_banheiro'
            DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
            Items.Strings = (
              'N'#227'o tem'
              '1'
              '2'
              '3'
              '4 ou +')
            ParentBackground = True
            TabOrder = 2
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4')
          end
          object DBRGAutomovel: TDBRadioGroup
            AlignWithMargins = True
            Left = 8
            Top = 150
            Width = 721
            Height = 42
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Align = alTop
            Caption = ' 5.4 - Autom'#243'vel '
            Columns = 5
            DataField = 'sm_automovel'
            DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
            Items.Strings = (
              'N'#227'o tem'
              '1'
              '2'
              '3'
              '4 ou +')
            ParentBackground = True
            TabOrder = 3
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4')
          end
          object DBRGMaquinaDeLavar: TDBRadioGroup
            AlignWithMargins = True
            Left = 8
            Top = 240
            Width = 721
            Height = 42
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Align = alTop
            Caption = ' 5.6 - M'#225'quina de lavar '
            Columns = 5
            DataField = 'sm_maquinalavar'
            DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
            Items.Strings = (
              'N'#227'o tem'
              '1'
              '2'
              '3'
              '4 ou +')
            ParentBackground = True
            TabOrder = 4
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4')
          end
          object DBRGVCRDVD: TDBRadioGroup
            AlignWithMargins = True
            Left = 8
            Top = 285
            Width = 721
            Height = 42
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Align = alTop
            Caption = ' 5.7 - V'#237'deocassete / DVD '
            Columns = 5
            DataField = 'sm_vcrdvd'
            DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
            Items.Strings = (
              'N'#227'o tem'
              '1'
              '2'
              '3'
              '4 ou +')
            ParentBackground = True
            TabOrder = 5
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4')
          end
          object DBRGGeladeira: TDBRadioGroup
            AlignWithMargins = True
            Left = 8
            Top = 330
            Width = 721
            Height = 42
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Align = alTop
            Caption = ' 5.8 - Geladeira (uma porta) '
            Columns = 5
            DataField = 'sm_geladeira'
            DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
            Items.Strings = (
              'N'#227'o tem'
              '1'
              '2'
              '3'
              '4 ou +')
            ParentBackground = True
            TabOrder = 6
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4')
          end
          object DBRGFreezer: TDBRadioGroup
            AlignWithMargins = True
            Left = 8
            Top = 375
            Width = 721
            Height = 42
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Align = alTop
            Caption = ' 5.9 - Freezer (independente ou 2'#170' porta da geladeira) '
            Columns = 5
            DataField = 'sm_freezer'
            DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
            Items.Strings = (
              'N'#227'o tem'
              '1'
              '2'
              '3'
              '4 ou +')
            ParentBackground = True
            TabOrder = 7
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4')
          end
          object DBRGEmpregadaMensalista: TDBRadioGroup
            AlignWithMargins = True
            Left = 8
            Top = 195
            Width = 721
            Height = 42
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Align = alTop
            Caption = ' 5.5 - Empregada mensalista '
            Columns = 5
            DataField = 'sm_mensalista'
            DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
            Items.Strings = (
              'N'#227'o tem'
              '1'
              '2'
              '3'
              '4 ou +')
            ParentBackground = True
            TabOrder = 8
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4')
          end
        end
        object DBRGChefeDaFamilia: TDBRadioGroup
          AlignWithMargins = True
          Left = 6
          Top = 803
          Width = 737
          Height = 42
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Align = alTop
          Caption = ' 6.0 - Voc'#234' '#233' o chefe da fam'#237'lia? '
          Columns = 2
          DataField = 'bo_chefedefamilia'
          DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentBackground = True
          TabOrder = 5
          Values.Strings = (
            'True'
            'False')
          OnChange = DBRGChefeDaFamiliaChange
        end
        object DBRGGrauChefeFamilia: TDBRadioGroup
          AlignWithMargins = True
          Left = 6
          Top = 848
          Width = 737
          Height = 105
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = ' 7.0 - Qual o grau de instru'#231#227'o do chefe da fam'#237'lia? '
          DataField = 'sm_grauinstrchefedefamilia'
          DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
          Items.Strings = (
            
              'Analfabeto ou cursou at'#233' a 3'#170' s'#233'rie do ensino fundamental (prim'#225 +
              'rio incompleto)'
            'Concluiu a 4'#170' s'#233'rie do ensino fundamental (prim'#225'rio completo)'
            'Fundamental completo (ginasial completo)'
            
              'M'#233'dio completo (colegial, cl'#225'ssico, cient'#237'fico ou magist'#233'rio com' +
              'pleto)'
            'Superior completo')
          ParentBackground = True
          TabOrder = 6
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5')
        end
        object PANLPaddingBottom: TPanel
          Left = 0
          Top = 953
          Width = 749
          Height = 6
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 7
        end
      end
      object DBNADadosSocioDemograficos: TDBNavigator
        AlignWithMargins = True
        Left = 0
        Top = 29
        Width = 770
        Height = 25
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 6
        DataSource = KRDMAvaliadosGerenciar.DTSRDadosSocioDemograficos
        VisibleButtons = [nbPost, nbCancel, nbRefresh]
        Align = alTop
        TabOrder = 1
        BeforeAction = DoBeforeAction
      end
      object KRPAAvaliado1: TKRKPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 770
        Height = 23
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alTop
        ParentBackground = False
        TabOrder = 2
        GradientFill = True
        GradientColorA = clYellow
        GradientColorB = 43690
        object LABLAvaliado1: TLabel
          Left = 1
          Top = 1
          Width = 768
          Height = 21
          Align = alClient
          Alignment = taCenter
          Caption = 'Avaliado: ?????'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 119
          ExplicitHeight = 18
        end
      end
    end
    object TBSHSinaisESintomas: TTabSheet
      AlignWithMargins = True
      Caption = 'Checagem de sinais e sintomas'
      ImageIndex = 3
      object KRPAAvaliado2: TKRKPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 770
        Height = 23
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alTop
        ParentBackground = False
        TabOrder = 0
        GradientFill = True
        GradientColorA = clYellow
        GradientColorB = 43690
        object LABLAvaliado2: TLabel
          Left = 1
          Top = 1
          Width = 768
          Height = 21
          Align = alClient
          Alignment = taCenter
          Caption = 'Avaliado: ?????'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 119
          ExplicitHeight = 18
        end
      end
      object DBNAChecagemDeSinaisESintomas: TDBNavigator
        AlignWithMargins = True
        Left = 0
        Top = 29
        Width = 770
        Height = 25
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 6
        DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
        VisibleButtons = [nbPost, nbCancel, nbRefresh]
        Align = alTop
        TabOrder = 1
        BeforeAction = DoBeforeAction
      end
      object SCBXSinaisESintomas: TScrollBox
        Left = 0
        Top = 60
        Width = 770
        Height = 343
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clWindow
        ParentColor = False
        TabOrder = 2
        OnMouseWheelDown = DoScrollBoxMouseWheelDown
        OnMouseWheelUp = DoScrollBoxMouseWheelUp
        object Panel2: TPanel
          Left = 0
          Top = 384
          Width = 749
          Height = 4
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
        end
        object PANLSinaisESintomas: TPanel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Width = 737
          Height = 35
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Align = alTop
          BevelInner = bvLowered
          Color = clInfoBk
          ParentBackground = False
          TabOrder = 1
          object LABLSinaisESintomas: TLabel
            AlignWithMargins = True
            Left = 2
            Top = 2
            Width = 733
            Height = 31
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Alignment = taCenter
            Caption = 
              'O AVALIADO TEM OU TEVE RECENTEMENTE ALGUMA DAS CONDI'#199#213'ES ABAIXO?' +
              #13#10'Assinale o(s) item(ns) respondido(s) positivamente'
            Color = clInfoBk
            ParentColor = False
            Layout = tlCenter
            ExplicitWidth = 387
            ExplicitHeight = 26
          end
        end
        object DBCBDorPeiPesManBra: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 47
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 
            'Dor ou desconforto no peito, pesco'#231'o, mand'#237'bula, bra'#231'o(s) ou '#225're' +
            'a pr'#243'xima'
          DataField = 'bo_dorpeipesmanbra'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBBatCarIrrRapPalRep: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 67
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 
            'Batimentos card'#237'acos irregulares e r'#225'pidos ou palpita'#231#245'es em rep' +
            'ouso'
          DataField = 'bo_batcarirrrappalrep'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBDifResDeiSon: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 87
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Dificuldade na respira'#231#227'o quando se deita ou durante o sono'
          DataField = 'bo_difresdeison'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBGraPerPesSemMotCon: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 107
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Grande perda de peso sem motivo conhecido'
          DataField = 'bo_graperpessemmotcon'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBInfAcoFeb: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 127
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Infec'#231#227'o acompanhada de febre'
          DataField = 'bo_infacofeb'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 6
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBFebDesBatCarAce: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 147
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Febre com desidrata'#231#227'o e batimentos card'#237'acos acelerados'
          DataField = 'bo_febdesbatcarace'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 7
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBDorPerCam: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 167
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Dor na perna ao caminhar'
          DataField = 'bo_dorpercam'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 8
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBHerAbdInco: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 187
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'H'#233'rnia abdominal incomodando'
          DataField = 'bo_herabdinco'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 9
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBLesPesTorNaoSar: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 207
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Les'#245'es nos p'#233's ou tornozelos que n'#227'o saram'
          DataField = 'bo_lespestornaosar'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 10
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBTorInc: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 227
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Tornozelos inchados'
          DataField = 'bo_torinc'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 11
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBQueRecDeiDifCamDorPer: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 247
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 
            'Queda recente deixando dificuldade para caminhar e dor persisten' +
            'te'
          DataField = 'bo_querecdeidifcamdorper'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 12
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBProAlgCirOlh: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 267
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Problemas ou alguma cirurgia nos olhos'
          DataField = 'bo_proalgcirolh'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 13
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBJunInc: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 287
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Juntas inchadas'
          DataField = 'bo_juninc'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 14
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBCanIncFalArAtiHab: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 307
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Cansa'#231'o incomum ou falta de ar em atividades habituais'
          DataField = 'bo_canincfalaratihab'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 15
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBDifResRep: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 327
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Dificuldade na respira'#231#227'o em repouso'
          DataField = 'bo_difresrep'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 16
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBTonDes: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 347
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Tontura ou desmaio'
          DataField = 'bo_tondes'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 17
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCBAlgCirMen90Dia: TDBCheckBox
          AlignWithMargins = True
          Left = 6
          Top = 367
          Width = 737
          Height = 17
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Alguma cirurgia a menos de 90 dias'
          DataField = 'bo_algcirmen90dia'
          DataSource = KRDMAvaliadosGerenciar.DTSRSinaisESintomas
          TabOrder = 18
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object TBSHParQ: TTabSheet
      AlignWithMargins = True
      Caption = 'PAR-Q+'
      ImageIndex = 5
      object KRPAAvaliado4: TKRKPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 770
        Height = 23
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alTop
        ParentBackground = False
        TabOrder = 0
        GradientFill = True
        GradientColorA = clYellow
        GradientColorB = 43690
        object LABLAvaliado4: TLabel
          Left = 1
          Top = 1
          Width = 768
          Height = 21
          Align = alClient
          Alignment = taCenter
          Caption = 'Avaliado: ?????'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 119
          ExplicitHeight = 18
        end
      end
      object DBNAParQ: TDBNavigator
        AlignWithMargins = True
        Left = 0
        Top = 29
        Width = 770
        Height = 25
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 6
        DataSource = KRDMAvaliadosGerenciar.DTSRParQ
        VisibleButtons = [nbPost, nbCancel, nbRefresh]
        Align = alTop
        TabOrder = 1
        BeforeAction = DoBeforeAction
      end
      object SCBXParQ: TScrollBox
        Left = 0
        Top = 60
        Width = 770
        Height = 343
        VertScrollBar.Position = 248
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        OnMouseWheelDown = DoScrollBoxMouseWheelDown
        OnMouseWheelUp = DoScrollBoxMouseWheelUp
        object PANLParQBottom: TPanel
          Left = 0
          Top = 1658
          Width = 749
          Height = 6
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
        end
        object PANLPGTitulo: TPanel
          AlignWithMargins = True
          Left = 6
          Top = -242
          Width = 737
          Height = 35
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Align = alTop
          BevelInner = bvLowered
          Color = clInfoBk
          ParentBackground = False
          TabOrder = 1
          object LABLParQ1: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 729
            Height = 27
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            Alignment = taCenter
            Caption = 
              'PERGUNTAS GERAIS SOBRE A SA'#218'DE DO AVALIADO'#13#10'Estas quest'#245'es s'#227'o s' +
              'empre obrigat'#243'rias'
            Color = clInfoBk
            ParentColor = False
            Layout = tlCenter
            ExplicitWidth = 253
            ExplicitHeight = 26
          end
        end
        object PANLPG: TPanel
          AlignWithMargins = True
          Left = 6
          Top = -201
          Width = 737
          Height = 309
          Margins.Left = 6
          Margins.Right = 6
          Align = alTop
          AutoSize = True
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object PANLPGInfo: TPanel
            Left = 2
            Top = 2
            Width = 733
            Height = 35
            Align = alTop
            Color = clBlack
            Constraints.MinHeight = 35
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object LABLPG: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 625
              Height = 27
              Align = alClient
              Caption = 
                'Por favor, fa'#231'a as sete perguntas abaixo ao avaliado e pe'#231'a-o pa' +
                'ra que as responda honestamente. Marque na coluna correspondente' +
                ' SIM ou N'#195'O de acordo com as respostas'
              Layout = tlCenter
              WordWrap = True
              ExplicitWidth = 576
              ExplicitHeight = 26
            end
            object GRBXSNPG: TGroupBox
              Left = 632
              Top = 1
              Width = 100
              Height = 33
              Align = alRight
              Color = clInfoBk
              ParentBackground = False
              ParentColor = False
              TabOrder = 0
              DesignSize = (
                100
                33)
              object LABLSPG: TLabel
                Left = 14
                Top = 10
                Width = 22
                Height = 13
                Caption = 'SIM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LABLNPG: TLabel
                Left = 64
                Top = 10
                Width = 23
                Height = 13
                Caption = 'N'#195'O'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BVELSN1: TBevel
                Left = 49
                Top = 4
                Width = 2
                Height = 25
                Anchors = [akTop, akRight]
                Shape = bsLeftLine
                Style = bsRaised
              end
            end
          end
          object PANLPG1: TPanel
            Left = 2
            Top = 37
            Width = 733
            Height = 35
            Align = alTop
            AutoSize = True
            Color = clWhite
            Constraints.MinHeight = 35
            ParentBackground = False
            TabOrder = 1
            DesignSize = (
              733
              35)
            object LABLPG1: TRtfLabel
              AlignWithMargins = True
              Left = 53
              Top = 4
              Width = 575
              Height = 26
              Margins.Left = 52
              Margins.Right = 104
              Align = alTop
              Caption = 
                '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Seu m\'#39'e9dico j\'#39'e1 lhe' +
                ' disse que voc\'#39'ea tem alguma doen\'#39'e7a cardiovascular OU hipert' +
                'ens\'#39'e3o?\par'#13#10'}'#13#10
              Constraints.MinHeight = 26
              Transparent = True
              WordWrap = True
              OnResize = DoRTFLabelResize
            end
            object DBRGPG1: TDBRadioGroup
              Left = 632
              Top = 1
              Width = 100
              Height = 33
              Anchors = [akTop, akRight]
              Color = clInfoBk
              Columns = 2
              Constraints.MinHeight = 33
              DataField = 'bo_pg1'
              DataSource = KRDMAvaliadosGerenciar.DTSRParQ
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'S'
                'N')
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              Values.Strings = (
                'True'
                'False')
              OnChange = DoPGChange
            end
            object PANLPGP1: TPanel
              Left = 0
              Top = 1
              Width = 50
              Height = 33
              Caption = '1'
              Color = clBlack
              Constraints.MinHeight = 33
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object PANLPG2: TPanel
            Left = 2
            Top = 72
            Width = 733
            Height = 35
            Align = alTop
            AutoSize = True
            Color = 15724527
            Constraints.MinHeight = 35
            ParentBackground = False
            TabOrder = 2
            DesignSize = (
              733
              35)
            object LABLPG2: TRtfLabel
              AlignWithMargins = True
              Left = 53
              Top = 4
              Width = 575
              Height = 26
              Margins.Left = 52
              Margins.Right = 104
              Align = alTop
              Caption = 
                '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea sente dor no pe' +
                'ito em repouso, durante suas atividades cotidianas OU quando voc' +
                '\'#39'ea faz atividades f\'#39'edsicas?\par'#13#10'}'#13#10
              Constraints.MinHeight = 26
              Transparent = True
              WordWrap = True
              OnResize = DoRTFLabelResize
            end
            object DBRGPG2: TDBRadioGroup
              Left = 632
              Top = 1
              Width = 100
              Height = 33
              Anchors = [akTop, akRight]
              Color = clInfoBk
              Columns = 2
              Constraints.MinHeight = 33
              DataField = 'bo_pg2'
              DataSource = KRDMAvaliadosGerenciar.DTSRParQ
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'S'
                'N')
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              Values.Strings = (
                'True'
                'False')
              OnChange = DoPGChange
            end
            object PANLPGP2: TPanel
              Left = 0
              Top = 1
              Width = 50
              Height = 33
              Caption = '2'
              Color = clBlack
              Constraints.MinHeight = 33
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object PANLPG3: TPanel
            Left = 2
            Top = 107
            Width = 733
            Height = 35
            Align = alTop
            AutoSize = True
            Color = clWhite
            Constraints.MinHeight = 35
            ParentBackground = False
            TabOrder = 3
            DesignSize = (
              733
              35)
            object LABLPG3: TRtfLabel
              AlignWithMargins = True
              Left = 53
              Top = 4
              Width = 575
              Height = 26
              Margins.Left = 52
              Margins.Right = 104
              Align = alTop
              Caption = 
                '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea perde o equil\' +
                #39'edbrio por causa de tontura OU voc\'#39'ea perdeu a consci\'#39'eancia ' +
                'nos \'#39'faltimos 12 meses?\b0 \par'#13#10'\i Responda \b N\'#39'c3O\b0  caso' +
                ' sua tontura tenha sido associada \'#39'e0 hiperventila\'#39'e7\'#39'e3o, in' +
                'clusive durante exerc\'#39'edcio f\'#39'edsico intenso\i0\par}'
              Constraints.MinHeight = 26
              WordWrap = True
              OnResize = DoRTFLabelResize
              ExplicitWidth = 547
            end
            object DBRGPG3: TDBRadioGroup
              Left = 632
              Top = 1
              Width = 100
              Height = 33
              Anchors = [akTop, akRight]
              Color = clInfoBk
              Columns = 2
              Constraints.MinHeight = 33
              DataField = 'bo_pg3'
              DataSource = KRDMAvaliadosGerenciar.DTSRParQ
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'S'
                'N')
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              Values.Strings = (
                'True'
                'False')
              OnChange = DoPGChange
            end
            object PANLPGP3: TPanel
              Left = 0
              Top = 1
              Width = 50
              Height = 33
              Caption = '3'
              Color = clBlack
              Constraints.MinHeight = 33
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object PANLPG4: TPanel
            Left = 2
            Top = 142
            Width = 733
            Height = 35
            Align = alTop
            AutoSize = True
            Color = 15724527
            Constraints.MinHeight = 35
            ParentBackground = False
            TabOrder = 4
            DesignSize = (
              733
              35)
            object LABLPG4: TRtfLabel
              AlignWithMargins = True
              Left = 53
              Top = 4
              Width = 575
              Height = 26
              Margins.Left = 52
              Margins.Right = 104
              Align = alTop
              Caption = 
                '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea j\'#39'e1 foi diagn' +
                'osticado com alguma outra doen\'#39'e7a cr\'#39'f4nica (que n\'#39'e3o seja ' +
                'doen\'#39'e7a card\'#39'edaca ou hipertens\'#39'e3o)?\par'#13#10'}'#13#10
              Color = 15724527
              Constraints.MinHeight = 26
              ParentColor = False
              Transparent = True
              WordWrap = True
              OnResize = DoRTFLabelResize
            end
            object DBRGPG4: TDBRadioGroup
              Left = 632
              Top = 1
              Width = 100
              Height = 33
              Anchors = [akTop, akRight]
              Color = clInfoBk
              Columns = 2
              Constraints.MinHeight = 33
              DataField = 'bo_pg4'
              DataSource = KRDMAvaliadosGerenciar.DTSRParQ
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'S'
                'N')
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              Values.Strings = (
                'True'
                'False')
              OnChange = DoPGChange
            end
            object PANLPGP4: TPanel
              Left = 0
              Top = 1
              Width = 50
              Height = 33
              Caption = '4'
              Color = clBlack
              Constraints.MinHeight = 33
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object PANLPG5: TPanel
            Left = 2
            Top = 177
            Width = 733
            Height = 35
            Align = alTop
            AutoSize = True
            Color = clWhite
            Constraints.MinHeight = 35
            ParentBackground = False
            TabOrder = 5
            DesignSize = (
              733
              35)
            object LABLPG5: TRtfLabel
              AlignWithMargins = True
              Left = 53
              Top = 4
              Width = 575
              Height = 26
              Margins.Left = 52
              Margins.Right = 104
              Align = alTop
              Caption = 
                '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea est\'#39'e1 atualme' +
                'nte tomando rem\'#39'e9dios prescritos para alguma doen\'#39'e7a cr\'#39'f4n' +
                'ica?\par'#13#10'}'#13#10
              Constraints.MinHeight = 26
              Transparent = True
              WordWrap = True
              OnResize = DoRTFLabelResize
            end
            object DBRGPG5: TDBRadioGroup
              Left = 632
              Top = 1
              Width = 100
              Height = 33
              Anchors = [akTop, akRight]
              Color = clInfoBk
              Columns = 2
              Constraints.MinHeight = 33
              DataField = 'bo_pg5'
              DataSource = KRDMAvaliadosGerenciar.DTSRParQ
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'S'
                'N')
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              Values.Strings = (
                'True'
                'False')
              OnChange = DoPGChange
            end
            object PANLPGP5: TPanel
              Left = 0
              Top = 1
              Width = 50
              Height = 33
              Caption = '5'
              Color = clBlack
              Constraints.MinHeight = 33
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object PANLPG6: TPanel
            Left = 2
            Top = 212
            Width = 733
            Height = 60
            Align = alTop
            AutoSize = True
            Color = 15724527
            Constraints.MinHeight = 35
            ParentBackground = False
            TabOrder = 6
            DesignSize = (
              733
              60)
            object LABLPG6: TRtfLabel
              AlignWithMargins = True
              Left = 53
              Top = 4
              Width = 575
              Height = 52
              Margins.Left = 52
              Margins.Right = 104
              Align = alTop
              Caption = 
                '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem algum prob' +
                'lema nos ossos ou articula\'#39'e7\'#39'f5es que poderia se agravar em v' +
                'oc\'#39'ea se tornando mais ativo fisicamente?\b0 \par'#13#10'\i Responda ' +
                '\b N\'#39'c3O\b0  se voc\'#39'ea teve um problema de articula\'#39'e7\'#39'e3o n' +
                'o passado, mas que atualmente n\'#39'e3o limita sua capacidade de se' +
                'r fisicamente ativo. Por exemplo: joelho, tornozelo, ombro ou ou' +
                'tros\i0\par'#13#10'}'#13#10
              Color = 15724527
              Constraints.MinHeight = 26
              ParentColor = False
              Transparent = True
              WordWrap = True
              OnResize = DoRTFLabelResize
            end
            object DBRGPG6: TDBRadioGroup
              Left = 632
              Top = 1
              Width = 100
              Height = 58
              Anchors = [akTop, akRight]
              Color = clInfoBk
              Columns = 2
              Constraints.MinHeight = 33
              DataField = 'bo_pg6'
              DataSource = KRDMAvaliadosGerenciar.DTSRParQ
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'S'
                'N')
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              Values.Strings = (
                'True'
                'False')
              OnChange = DoPGChange
            end
            object PANLPGP6: TPanel
              Left = 0
              Top = 1
              Width = 50
              Height = 58
              Caption = '6'
              Color = clBlack
              Constraints.MinHeight = 33
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object PANLPG7: TPanel
            Left = 2
            Top = 272
            Width = 733
            Height = 35
            Align = alTop
            AutoSize = True
            Color = clWhite
            Constraints.MinHeight = 35
            ParentBackground = False
            TabOrder = 7
            DesignSize = (
              733
              35)
            object LABLPG7: TRtfLabel
              AlignWithMargins = True
              Left = 53
              Top = 4
              Width = 575
              Height = 26
              Margins.Left = 52
              Margins.Right = 104
              Align = alTop
              Caption = 
                '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Seu m\'#39'e9dico j\'#39'e1 lhe' +
                ' falou que voc\'#39'ea s\'#39'f3 devia fazer atividades f\'#39'edsicas sob s' +
                'upervis\'#39'e3o m\'#39'e9dica?\par'#13#10'}'#13#10
              Constraints.MinHeight = 26
              Transparent = True
              WordWrap = True
              OnResize = DoRTFLabelResize
            end
            object DBRGPG7: TDBRadioGroup
              Left = 632
              Top = 1
              Width = 100
              Height = 33
              Anchors = [akTop, akRight]
              Color = clInfoBk
              Columns = 2
              Constraints.MinHeight = 33
              DataField = 'bo_pg7'
              DataSource = KRDMAvaliadosGerenciar.DTSRParQ
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'S'
                'N')
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              Values.Strings = (
                'True'
                'False')
              OnChange = DoPGChange
            end
            object PANLPGP7: TPanel
              Left = 0
              Top = 1
              Width = 50
              Height = 33
              Caption = '7'
              Color = clBlack
              Constraints.MinHeight = 33
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object PANLPCLayer: TPanel
          AlignWithMargins = True
          Left = 6
          Top = 114
          Width = 737
          Height = 1544
          Margins.Left = 6
          Margins.Right = 6
          Margins.Bottom = 0
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 3
          object PANLPCTitulo: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 737
            Height = 35
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Align = alTop
            BevelInner = bvLowered
            Color = clInfoBk
            ParentBackground = False
            TabOrder = 0
            object LABLParQ2: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 729
              Height = 27
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alClient
              Alignment = taCenter
              Caption = 
                'QUEST'#213'ES COMPLEMENTARES SOBRE A CONDI'#199#195'O DE SA'#218'DE DO AVALIADO'#13#10'E' +
                'stas quest'#245'es somente s'#227'o obrigat'#243'rias caso uma ou mais das resp' +
                'ostas acima tenha sido SIM '
              Color = clInfoBk
              ParentColor = False
              Layout = tlCenter
              ExplicitWidth = 461
              ExplicitHeight = 26
            end
          end
          object PANLPC: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 41
            Width = 737
            Height = 1503
            Margins.Left = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            AutoSize = True
            BevelInner = bvLowered
            Color = clBlack
            ParentBackground = False
            TabOrder = 1
            object PANLPC1: TPanel
              Left = 2
              Top = 37
              Width = 733
              Height = 35
              Align = alTop
              AutoSize = True
              Color = clWhite
              Constraints.MinHeight = 35
              ParentBackground = False
              TabOrder = 0
              DesignSize = (
                733
                35)
              object LABLPC1: TRtfLabel
                AlignWithMargins = True
                Left = 53
                Top = 4
                Width = 575
                Height = 26
                Margins.Left = 52
                Margins.Right = 104
                Align = alTop
                Caption = 
                  '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                  'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                  '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea tem artrite, os' +
                  'teoporose ou problemas de coluna?\par'#13#10'}'#13#10
                Constraints.MinHeight = 26
                Transparent = True
                WordWrap = True
                OnResize = DoRTFLabelResize
              end
              object DBRGPC1: TDBRadioGroup
                Left = 632
                Top = 1
                Width = 100
                Height = 33
                Anchors = [akTop, akRight]
                Color = clInfoBk
                Columns = 2
                Constraints.MinHeight = 33
                DataField = 'bo_pc1'
                DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'S'
                  'N')
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  'True'
                  'False')
                OnChange = DoRespostaMestreChange
              end
              object PANLPCP1: TPanel
                Left = 0
                Top = 1
                Width = 50
                Height = 33
                Caption = '1'
                Color = clBlack
                Constraints.MinHeight = 33
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
            end
            object PANLPC2: TPanel
              Left = 2
              Top = 204
              Width = 733
              Height = 35
              Align = alTop
              AutoSize = True
              Color = 15724527
              Constraints.MinHeight = 35
              ParentBackground = False
              TabOrder = 1
              DesignSize = (
                733
                35)
              object LABLPC2: TRtfLabel
                AlignWithMargins = True
                Left = 53
                Top = 4
                Width = 575
                Height = 26
                Margins.Left = 52
                Margins.Right = 104
                Align = alTop
                Caption = 
                  '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                  'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                  '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea tem algum tipo ' +
                  'de c\'#39'e2ncer?\par'#13#10'}'#13#10
                Constraints.MinHeight = 26
                Transparent = True
                WordWrap = True
                OnResize = DoRTFLabelResize
              end
              object DBRGPC2: TDBRadioGroup
                Left = 632
                Top = 1
                Width = 100
                Height = 33
                Anchors = [akTop, akRight]
                Color = clInfoBk
                Columns = 2
                Constraints.MinHeight = 33
                DataField = 'bo_pc2'
                DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'S'
                  'N')
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  'True'
                  'False')
                OnChange = DoRespostaMestreChange
              end
              object PANLPCP2: TPanel
                Left = 0
                Top = 1
                Width = 50
                Height = 33
                Caption = '2'
                Color = clBlack
                Constraints.MinHeight = 33
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
            end
            object PANLPC3: TPanel
              Left = 2
              Top = 312
              Width = 733
              Height = 47
              Align = alTop
              AutoSize = True
              Color = clWhite
              Constraints.MinHeight = 35
              ParentBackground = False
              TabOrder = 2
              DesignSize = (
                733
                47)
              object LABLPC3: TRtfLabel
                AlignWithMargins = True
                Left = 53
                Top = 4
                Width = 575
                Height = 39
                Margins.Left = 52
                Margins.Right = 104
                Align = alTop
                Caption = 
                  '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                  'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                  '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem alguma doe' +
                  'n\'#39'e7a card\'#39'edaca ou cardiovascular?\b0 \par'#13#10'\i Isto inclui do' +
                  'en\'#39'e7a da art\'#39'e9ria coron\'#39'e1ria, hipertens\'#39'e3o, insufici\'#39'ea' +
                  'ncia card\'#39'edaca, anormalidade diagnosticada do ritmo card\'#39'edac' +
                  'o\i0\par'#13#10'}'#13#10
                Constraints.MinHeight = 26
                WordWrap = True
                OnResize = DoRTFLabelResize
                ExplicitWidth = 537
              end
              object DBRGPC3: TDBRadioGroup
                Left = 632
                Top = 1
                Width = 100
                Height = 45
                Anchors = [akTop, akRight]
                Color = clInfoBk
                Columns = 2
                Constraints.MinHeight = 33
                DataField = 'bo_pc3'
                DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'S'
                  'N')
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  'True'
                  'False')
                OnChange = DoRespostaMestreChange
              end
              object PANLPCP3: TPanel
                Left = 0
                Top = 1
                Width = 50
                Height = 45
                Caption = '3'
                Color = clBlack
                Constraints.MinHeight = 33
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
            end
            object PANLPCInfo: TPanel
              Left = 2
              Top = 2
              Width = 733
              Height = 35
              Align = alTop
              Color = clBlack
              Constraints.MinHeight = 35
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 3
              object LABLPC: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 625
                Height = 27
                Align = alClient
                Caption = 
                  'Cada uma das quest'#245'es abaixo possui subquest'#245'es que precisam ser' +
                  ' obrigatoriamente preenchidas caso a quest'#227'o principal correspon' +
                  'dente tenha sido respondida positivamente'
                Layout = tlCenter
                WordWrap = True
                ExplicitWidth = 598
                ExplicitHeight = 26
              end
              object GRBXSNPC: TGroupBox
                Left = 632
                Top = 1
                Width = 100
                Height = 33
                Align = alRight
                Color = clInfoBk
                ParentBackground = False
                ParentColor = False
                TabOrder = 0
                DesignSize = (
                  100
                  33)
                object LABLSPC: TLabel
                  Left = 14
                  Top = 10
                  Width = 22
                  Height = 13
                  Caption = 'SIM'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object LABLNPC: TLabel
                  Left = 64
                  Top = 10
                  Width = 23
                  Height = 13
                  Caption = 'N'#195'O'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Bevel1: TBevel
                  Left = 49
                  Top = 4
                  Width = 2
                  Height = 25
                  Anchors = [akTop, akRight]
                  Shape = bsLeftLine
                  Style = bsRaised
                end
              end
            end
            object PANLPC4: TPanel
              Left = 2
              Top = 549
              Width = 733
              Height = 35
              Align = alTop
              AutoSize = True
              Color = 15724527
              Constraints.MinHeight = 35
              ParentBackground = False
              TabOrder = 4
              DesignSize = (
                733
                35)
              object LABLPC4: TRtfLabel
                AlignWithMargins = True
                Left = 53
                Top = 4
                Width = 575
                Height = 26
                Margins.Left = 52
                Margins.Right = 104
                Align = alTop
                Caption = 
                  '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                  'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                  '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem alguma doe' +
                  'n\'#39'e7a metab\'#39'f3lica?\b0 \par'#13#10'\i Isto inclui diabetes tipo 1, d' +
                  'iabetes tipo 2 e pr\'#39'e9-diabetes\i0\par'#13#10'}'#13#10
                Constraints.MinHeight = 26
                WordWrap = True
                OnResize = DoRTFLabelResize
                ExplicitWidth = 274
              end
              object DBRGPC4: TDBRadioGroup
                Left = 632
                Top = 1
                Width = 100
                Height = 33
                Anchors = [akTop, akRight]
                Color = clInfoBk
                Columns = 2
                Constraints.MinHeight = 33
                DataField = 'bo_pc4'
                DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'S'
                  'N')
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  'True'
                  'False')
                OnChange = DoRespostaMestreChange
              end
              object PANLPCP4: TPanel
                Left = 0
                Top = 1
                Width = 50
                Height = 33
                Caption = '4'
                Color = clBlack
                Constraints.MinHeight = 33
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
            end
            object PANLPC5: TPanel
              Left = 2
              Top = 692
              Width = 733
              Height = 47
              Align = alTop
              AutoSize = True
              Color = clWhite
              Constraints.MinHeight = 35
              ParentBackground = False
              TabOrder = 5
              DesignSize = (
                733
                47)
              object LABLPC5: TRtfLabel
                AlignWithMargins = True
                Left = 53
                Top = 4
                Width = 575
                Height = 39
                Margins.Left = 52
                Margins.Right = 104
                Align = alTop
                Caption = 
                  '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                  'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                  '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem algum prob' +
                  'lema de sa\'#39'fade mental ou problemas de aprendizagem?\b0 \par'#13#10'\' +
                  'i Isto inclui doen\'#39'e7a de Alzheimer, dem\'#39'eancia, depress\'#39'e3o,' +
                  ' transtornos de ansiedade, transtornos alimentares, transtorno p' +
                  'sic\'#39'f3tico, defici\'#39'eancia intelectual, S\'#39'edndrome de Down\i0\' +
                  'par'#13#10'}'#13#10
                Constraints.MinHeight = 26
                WordWrap = True
                OnResize = DoRTFLabelResize
              end
              object DBRGPC5: TDBRadioGroup
                Left = 632
                Top = 1
                Width = 100
                Height = 45
                Anchors = [akTop, akRight]
                Color = clInfoBk
                Columns = 2
                Constraints.MinHeight = 33
                DataField = 'bo_pc5'
                DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'S'
                  'N')
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  'True'
                  'False')
                OnChange = DoRespostaMestreChange
              end
              object PANLPCP5: TPanel
                Left = 0
                Top = 1
                Width = 50
                Height = 45
                Caption = '5'
                Color = clBlack
                Constraints.MinHeight = 33
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
            end
            object PANLPC6: TPanel
              Left = 2
              Top = 824
              Width = 733
              Height = 35
              Align = alTop
              AutoSize = True
              Color = 15724527
              Constraints.MinHeight = 35
              ParentBackground = False
              TabOrder = 6
              DesignSize = (
                733
                35)
              object LABLPC6: TRtfLabel
                AlignWithMargins = True
                Left = 53
                Top = 4
                Width = 575
                Height = 26
                Margins.Left = 52
                Margins.Right = 104
                Align = alTop
                Caption = 
                  '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                  'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                  '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem uma doen\'#39 +
                  'e7a respirat\'#39'f3ria?\b0 \par'#13#10'\i Isto inclui doen\'#39'e7a pulmonar ' +
                  'obstrutiva cr\'#39'f4nica, asma, hipertens\'#39'e3o pulmonar\i0\par'#13#10'}'#13#10
                Constraints.MinHeight = 26
                WordWrap = True
                OnResize = DoRTFLabelResize
                ExplicitWidth = 362
              end
              object DBRGPC6: TDBRadioGroup
                Left = 632
                Top = 1
                Width = 100
                Height = 33
                Anchors = [akTop, akRight]
                Color = clInfoBk
                Columns = 2
                Constraints.MinHeight = 33
                DataField = 'bo_pc6'
                DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'S'
                  'N')
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  'True'
                  'False')
                OnChange = DoRespostaMestreChange
              end
              object PANLPCP6: TPanel
                Left = 0
                Top = 1
                Width = 50
                Height = 33
                Caption = '6'
                Color = clBlack
                Constraints.MinHeight = 33
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
            end
            object PANLPC7: TPanel
              Left = 2
              Top = 1026
              Width = 733
              Height = 35
              Align = alTop
              AutoSize = True
              Color = clWhite
              Constraints.MinHeight = 35
              ParentBackground = False
              TabOrder = 7
              DesignSize = (
                733
                35)
              object LABLPC7: TRtfLabel
                AlignWithMargins = True
                Left = 53
                Top = 4
                Width = 575
                Height = 26
                Margins.Left = 52
                Margins.Right = 104
                Align = alTop
                Caption = 
                  '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                  'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                  '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem alguma les' +
                  '\'#39'e3o da medula espinhal?\b0 \par'#13#10'\i Isto inclui tetraplegia e ' +
                  'paraplegia\i0\par'#13#10'}'#13#10
                Constraints.MinHeight = 26
                WordWrap = True
                OnResize = DoRTFLabelResize
                ExplicitWidth = 211
              end
              object DBRGPC7: TDBRadioGroup
                Left = 632
                Top = 1
                Width = 100
                Height = 33
                Anchors = [akTop, akRight]
                Color = clInfoBk
                Columns = 2
                Constraints.MinHeight = 33
                DataField = 'bo_pc7'
                DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'S'
                  'N')
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  'True'
                  'False')
                OnChange = DoRespostaMestreChange
              end
              object PANLPCP7: TPanel
                Left = 0
                Top = 1
                Width = 50
                Height = 33
                Caption = '7'
                Color = clBlack
                Constraints.MinHeight = 33
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
            end
            object PANLPC8: TPanel
              Left = 2
              Top = 1181
              Width = 733
              Height = 35
              Align = alTop
              AutoSize = True
              Color = 15724527
              Constraints.MinHeight = 35
              ParentBackground = False
              TabOrder = 8
              DesignSize = (
                733
                35)
              object LABLPC8: TRtfLabel
                AlignWithMargins = True
                Left = 53
                Top = 4
                Width = 575
                Height = 26
                Margins.Left = 52
                Margins.Right = 104
                Align = alTop
                Caption = 
                  '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                  'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                  '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea j\'#39'e1 sofreu u' +
                  'm derrame?\b0 \par'#13#10'\i Isto inclui ataque isqu\'#39'eamico transit\'#39 +
                  'f3rio (AIT) ou evento cerebrovascular\i0\par'#13#10'}'#13#10
                Constraints.MinHeight = 26
                WordWrap = True
                OnResize = DoRTFLabelResize
                ExplicitWidth = 343
              end
              object DBRGPC8: TDBRadioGroup
                Left = 632
                Top = 1
                Width = 100
                Height = 33
                Anchors = [akTop, akRight]
                Color = clInfoBk
                Columns = 2
                Constraints.MinHeight = 33
                DataField = 'bo_pc8'
                DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'S'
                  'N')
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  'True'
                  'False')
                OnChange = DoRespostaMestreChange
              end
              object PANLPCP8: TPanel
                Left = 0
                Top = 1
                Width = 50
                Height = 33
                Caption = '8'
                Color = clBlack
                Constraints.MinHeight = 33
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
            end
            object PANLPC9: TPanel
              Left = 2
              Top = 1336
              Width = 733
              Height = 60
              Align = alTop
              AutoSize = True
              Color = clWhite
              Constraints.MinHeight = 35
              ParentBackground = False
              TabOrder = 9
              DesignSize = (
                733
                60)
              object LABLPC9: TRtfLabel
                AlignWithMargins = True
                Left = 53
                Top = 4
                Width = 575
                Height = 52
                Margins.Left = 52
                Margins.Right = 104
                Align = alTop
                Caption = 
                  '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                  'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                  '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem alguma out' +
                  'ra condi\'#39'e7\'#39'e3o de sa\'#39'fade ou doen\'#39'e7a n\'#39'e3o mencionada nas' +
                  ' quest\'#39'f5es anteriores ou voc\'#39'ea tem duas ou mais condi\'#39'e7\'#39'f' +
                  '5es de sa\'#39'fade ou doen\'#39'e7as associadas?\b0 \par'#13#10'\i Responda \' +
                  'b SIM\b0  se, por exemplo, voc\'#39'ea tem uma doen\'#39'e7a card\'#39'edaca' +
                  ' e diabetes, ou j\'#39'e1 teve c\'#39'e2ncer e agora tem uma doen\'#39'e7a c' +
                  'ard\'#39'edaca\i0\par'#13#10'}'#13#10
                Constraints.MinHeight = 26
                WordWrap = True
                OnResize = DoRTFLabelResize
                ExplicitWidth = 573
              end
              object DBRGPC9: TDBRadioGroup
                Left = 632
                Top = 1
                Width = 100
                Height = 58
                Anchors = [akTop, akRight]
                Color = clInfoBk
                Columns = 2
                Constraints.MinHeight = 33
                DataField = 'bo_pc9'
                DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'S'
                  'N')
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  'True'
                  'False')
                OnChange = DoRespostaMestreChange
              end
              object PANLPCP9: TPanel
                Left = 0
                Top = 1
                Width = 50
                Height = 58
                Caption = '9'
                Color = clBlack
                Constraints.MinHeight = 33
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
            end
            object PANLPC1Sub: TPanel
              AlignWithMargins = True
              Left = 2
              Top = 72
              Width = 733
              Height = 129
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 10
              Visible = False
              object PANLPC1A: TPanel
                Left = 0
                Top = 0
                Width = 733
                Height = 47
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 0
                DesignSize = (
                  733
                  47)
                object LABLPC1A: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 39
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem dificuldad' +
                    'e de controlar sua condi\'#39'e7\'#39'e3o com medicamentos ou outras ter' +
                    'apias prescritas por um profissional?\b0 \par'#13#10'\i Responda \b N\' +
                    #39'c3O\b0  se voc\'#39'ea n\'#39'e3o est\'#39'e1 tomando medicamentos ou receb' +
                    'endo outros tratamentos\i0\par}'
                  Constraints.MinHeight = 26
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC1A: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 45
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc1a'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP1A: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 45
                  Caption = '1A'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC1B: TPanel
                Left = 0
                Top = 47
                Width = 733
                Height = 47
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 1
                DesignSize = (
                  733
                  47)
                object LABLPC1B: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 39
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea tem problemas d' +
                    'e articula\'#39'e7\'#39'e3o que causam dor, uma fratura recente ou uma f' +
                    'ratura causada por osteoporose ou c\'#39'e2ncer, alguma v\'#39'e9rtebra ' +
                    'deslocada (espondilolistese) e/ou rachadura no anel \'#39'f3sseo da ' +
                    'v\'#39'e9rtebra (espondil\'#39'f3lise)?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC1B: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 45
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc1b'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP1B: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 45
                  Caption = '1B'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC1C: TPanel
                Left = 0
                Top = 94
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 2
                DesignSize = (
                  733
                  35)
                object LABLPC1C: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea j\'#39'e1 tomou inj' +
                    'e\'#39'e7\'#39'f5es de ester\'#39'f3ides ou tabletes de ester\'#39'f3ides regula' +
                    'rmente por mais de tr\'#39'eas meses?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC1C: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc1c'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP1C: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '1C'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
            object PANLPC2Sub: TPanel
              AlignWithMargins = True
              Left = 2
              Top = 239
              Width = 733
              Height = 70
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 11
              Visible = False
              object PANLPC2A: TPanel
                Left = 0
                Top = 0
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = 15724527
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 0
                DesignSize = (
                  733
                  35)
                object LABLPC2A: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Seu diagn\'#39'f3stico de c' +
                    '\'#39'e2ncer inclui um dos seguintes tipos: pulm\'#39'f5es/broncog\'#39'eani' +
                    'co, mieloma m\'#39'faltiplo (c\'#39'e2ncer das c\'#39'e9lulas plasm\'#39'e1ticas' +
                    '), cabe\'#39'e7a e/ou pesco\'#39'e7o?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC2A: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc2a'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP2A: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '2A'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC2B: TPanel
                Left = 0
                Top = 35
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = 15724527
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 1
                DesignSize = (
                  733
                  35)
                object LABLPC2B: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea est\'#39'e1 atualme' +
                    'nte fazendo terapia contra c\'#39'e2ncer (como quimioterapia ou radi' +
                    'oterapia)?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC2B: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc2b'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP2B: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '2B'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
            object PANLPC3Sub: TPanel
              AlignWithMargins = True
              Left = 2
              Top = 359
              Width = 733
              Height = 187
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 12
              Visible = False
              object PANLPC3A: TPanel
                Left = 0
                Top = 0
                Width = 733
                Height = 47
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 0
                DesignSize = (
                  733
                  47)
                object LABLPC3A: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 39
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem dificuldad' +
                    'e de controlar a condi\'#39'e7\'#39'e3o (ou alguma das condi\'#39'e7\'#39'f5es) ' +
                    'citada(s) com medicamentos ou outras terapias prescritas por um ' +
                    'profissional?\b0 \par'#13#10'\i Responda \b N\'#39'c3O\b0  se voc\'#39'ea n\'#39'e' +
                    '3o est\'#39'e1 tomando medicamentos ou recebendo outros tratamentos\' +
                    'i0\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC3A: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 45
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc3a'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP3A: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 45
                  Caption = '3A'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC3B: TPanel
                Left = 0
                Top = 47
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 1
                DesignSize = (
                  733
                  35)
                object LABLPC3B: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea tem batimento c' +
                    'ard\'#39'edaco irregular (ex.: fibrila\'#39'e7\'#39'e3o atrial, contra\'#39'e7\'#39 +
                    'e3o ventricular prematura) que precisa de acompanhamento m\'#39'e9di' +
                    'co?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC3B: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc3b'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP3B: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '3B'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC3C: TPanel
                Left = 0
                Top = 82
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 2
                DesignSize = (
                  733
                  35)
                object LABLPC3C: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea tem insufici\'#39'e' +
                    'ancia card\'#39'edaca cr\'#39'f4nica?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC3C: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc3c'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP3C: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '3C'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC3D: TPanel
                Left = 0
                Top = 117
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 3
                DesignSize = (
                  733
                  35)
                object LABLPC3D: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem press\'#39'e3o' +
                    ' arterial em repouso igual ou maior que 160/90 mmHg com ou sem m' +
                    'edica\'#39'e7\'#39'e3o?\b0 \par'#13#10'\i Responda \b SIM\b0  se voc\'#39'ea n\'#39'e3' +
                    'o sabe sua press\'#39'e3o arterial durante repouso\i0\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                  ExplicitWidth = 457
                end
                object DBRGPC3D: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc3d'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP3D: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '3D'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC3E: TPanel
                Left = 0
                Top = 152
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 4
                DesignSize = (
                  733
                  35)
                object LABLPC3E: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea tem doen\'#39'e7a a' +
                    'rterial coron\'#39'e1ria (cardiovascular) diagnosticada e n\'#39'e3o par' +
                    'ticipou de atividade f\'#39'edsica regular nos \'#39'faltimos 2 meses?\p' +
                    'ar'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC3E: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc3e'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP3E: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '3E'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
            object PANLPC4Sub: TPanel
              AlignWithMargins = True
              Left = 2
              Top = 584
              Width = 733
              Height = 105
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 13
              Visible = False
              object PANLPC4A: TPanel
                Left = 0
                Top = 0
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = 15724527
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 0
                DesignSize = (
                  733
                  35)
                object LABLPC4A: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b O n\'#39'edvel de a\'#39'e7\'#39'f' +
                    'acar no seu sangue est\'#39'e1 frequentemente acima de 234 mg/dl (13' +
                    '.0 mmol/l)?\b0 \par'#13#10'\i Responda \b SIM\b0  se voc\'#39'ea n\'#39'e3o te' +
                    'm certeza\i0\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                  ExplicitWidth = 427
                end
                object DBRGPC4A: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc4a'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP4A: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '4A'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC4B: TPanel
                Left = 0
                Top = 35
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = 15724527
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 1
                DesignSize = (
                  733
                  35)
                object LABLPC4B: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea tem algum sinal' +
                    ' ou sintoma de complica\'#39'e7\'#39'f5es do diabetes, como doen\'#39'e7a ca' +
                    'rd\'#39'edaca ou vascular e/ou complica\'#39'e7\'#39'f5es que afetem seus ol' +
                    'hos, rins e a sensibilidade nos seus p\'#39'e9s e dedos dos p\'#39'e9s?\' +
                    'par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC4B: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc4b'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP4B: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '4B'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC4C: TPanel
                Left = 0
                Top = 70
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = 15724527
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 2
                DesignSize = (
                  733
                  35)
                object LABLPC4C: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea tem outra condi' +
                    '\'#39'e7\'#39'e3o metab\'#39'f3lica, tais como doen\'#39'e7as na tire\'#39'f3ide, di' +
                    'abetes relacionada \'#39'e0 gravidez, doen\'#39'e7a cr\'#39'f4nica do rim, p' +
                    'roblemas de f\'#39'edgado?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC4C: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc4c'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP4C: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '4C'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
            object PANLPC5Sub: TPanel
              AlignWithMargins = True
              Left = 2
              Top = 739
              Width = 733
              Height = 82
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 14
              Visible = False
              object PANLPC5A: TPanel
                Left = 0
                Top = 0
                Width = 733
                Height = 47
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 0
                DesignSize = (
                  733
                  47)
                object LABLPC5A: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 39
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem dificuldad' +
                    'e de controlar sua condi\'#39'e7\'#39'e3o com medicamentos ou outras ter' +
                    'apias prescritas por um profissional?\b0 \par'#13#10'\i Responda \b N\' +
                    #39'c3O\b0  se voc\'#39'ea n\'#39'e3o est\'#39'e1 atualmente tomando medicament' +
                    'os ou recebendo outros tratamentos\i0\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC5A: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 45
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc5a'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP5A: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 45
                  Caption = '5A'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC5B: TPanel
                Left = 0
                Top = 47
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 1
                DesignSize = (
                  733
                  35)
                object LABLPC5B: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea tem problemas n' +
                    'as costas que afetem nervos ou m\'#39'fasculos?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC5B: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc5b'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP5B: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '5B'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
            object PANLPC6Sub: TPanel
              AlignWithMargins = True
              Left = 2
              Top = 859
              Width = 733
              Height = 164
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 15
              Visible = False
              object PANLPC6A: TPanel
                Left = 0
                Top = 0
                Width = 733
                Height = 47
                Align = alTop
                AutoSize = True
                Color = 15724527
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 0
                DesignSize = (
                  733
                  47)
                object LABLPC6A: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 39
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem dificuldad' +
                    'e de controlar sua condi\'#39'e7\'#39'e3o com medicamentos ou outras ter' +
                    'apias prescritas por um profissional?\b0 \par'#13#10'\i Responda \b N\' +
                    #39'c3O\b0  se voc\'#39'ea n\'#39'e3o est\'#39'e1 atualmente tomando medicament' +
                    'os ou recebendo outros tratamentos\i0\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC6A: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 45
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc6a'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP6A: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 45
                  Caption = '6A'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC6B: TPanel
                Left = 0
                Top = 47
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = 15724527
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 1
                DesignSize = (
                  733
                  35)
                object LABLPC6B: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Seu m\'#39'e9dico j\'#39'e1 men' +
                    'cionou que seu n\'#39'edvel de oxig\'#39'eanio no sangue \'#39'e9 baixo dura' +
                    'nte repouso ou exerc\'#39'edcio e/ou que voc\'#39'ea precisa de terapia ' +
                    'de oxig\'#39'eanio suplementar?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC6B: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc6b'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP6B: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '6B'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC6C: TPanel
                Left = 0
                Top = 82
                Width = 733
                Height = 47
                Align = alTop
                AutoSize = True
                Color = 15724527
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 2
                DesignSize = (
                  733
                  47)
                object LABLPC6C: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 39
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Se asm\'#39'e1tico, voc\'#39'ea' +
                    ' tem sintomas de aperto no peito, respira\'#39'e7\'#39'e3o ofegante, dif' +
                    'iculdade de respirar, tosse persistente (mais de 2 dias por sema' +
                    'na) ou voc\'#39'ea j\'#39'e1 usou medicamentos de emerg\'#39'eancia mais que' +
                    ' duas vezes na \'#39'faltima semana?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC6C: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 45
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc6c'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP6C: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 45
                  Caption = '6C'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC6D: TPanel
                Left = 0
                Top = 129
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = 15724527
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 3
                DesignSize = (
                  733
                  35)
                object LABLPC6D: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Seu m\'#39'e9dico j\'#39'e1 lhe' +
                    ' disse que voc\'#39'ea tem hipertens\'#39'e3o nos vasos sangu\'#39'edneos do' +
                    's pulm\'#39'f5es?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC6D: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc6d'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP6D: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '6D'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
            object PANLPC7Sub: TPanel
              AlignWithMargins = True
              Left = 2
              Top = 1061
              Width = 733
              Height = 117
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 16
              Visible = False
              object PANLPC7A: TPanel
                Left = 0
                Top = 0
                Width = 733
                Height = 47
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 0
                DesignSize = (
                  733
                  47)
                object LABLPC7A: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 39
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem dificuldad' +
                    'e de controlar essa condi\'#39'e7\'#39'e3o com medicamentos ou outras te' +
                    'rapias prescritas por um profissional?\b0 \par'#13#10'\i Responda \b N' +
                    '\'#39'c3O\b0  se voc\'#39'ea n\'#39'e3o est\'#39'e1 atualmente tomando medicamen' +
                    'tos ou recebendo outros tratamentos\i0\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC7A: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 45
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc7a'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP7A: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 45
                  Caption = '7A'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC7B: TPanel
                Left = 0
                Top = 47
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 1
                DesignSize = (
                  733
                  35)
                object LABLPC7B: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea comumente tem p' +
                    'ress\'#39'e3o sangu\'#39'ednea baixa durante repouso, o suficiente para ' +
                    'causar tontura, sensa\'#39'e7\'#39'e3o de leveza na cabe\'#39'e7a e/ou desma' +
                    'io?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC7B: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc7b'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP7B: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '7B'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC7C: TPanel
                Left = 0
                Top = 82
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 2
                DesignSize = (
                  733
                  35)
                object LABLPC7C: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Seu m\'#39'e9dico j\'#39'e1 lhe' +
                    ' disse que voc\'#39'ea tem eleva\'#39'e7\'#39'f5es s\'#39'fabitas de press\'#39'e3o ' +
                    'sangu\'#39'ednea (disreflexia auton\'#39'f4mica)?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC7C: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc7c'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP7C: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '7C'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
            object PANLPC8Sub: TPanel
              AlignWithMargins = True
              Left = 2
              Top = 1216
              Width = 733
              Height = 117
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 17
              Visible = False
              object PANLPC8A: TPanel
                Left = 0
                Top = 0
                Width = 733
                Height = 47
                Align = alTop
                AutoSize = True
                Color = 15724527
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 0
                DesignSize = (
                  733
                  47)
                object LABLPC8A: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 39
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\f0\fs16 \b Voc\'#39'ea tem dificuldad' +
                    'e de controlar sua condi\'#39'e7\'#39'e3o de sa\'#39'fade ou doen\'#39'e7a com m' +
                    'edicamentos ou outras terapias prescritas por um profissional?\b' +
                    '0 \par'#13#10'\i Responda \b N\'#39'c3O\b0  se voc\'#39'ea n\'#39'e3o est\'#39'e1 atua' +
                    'lmente tomando medicamentos ou recebendo outros tratamentos\i0\p' +
                    'ar'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                  ExplicitWidth = 561
                end
                object DBRGPC8A: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 45
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc8a'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP8A: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 45
                  Caption = '8A'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC8B: TPanel
                Left = 0
                Top = 47
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = 15724527
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 1
                DesignSize = (
                  733
                  35)
                object LABLPC8B: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea tem alguma difi' +
                    'culdade para caminhar ou de mobilidade?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC8B: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc8b'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP8B: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '8B'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC8C: TPanel
                Left = 0
                Top = 82
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = 15724527
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 2
                DesignSize = (
                  733
                  35)
                object LABLPC8C: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea teve um derrame' +
                    ', ou comprometimento nos nervos ou m\'#39'fasculos nos \'#39'faltimos 6 ' +
                    'meses?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC8C: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc8c'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP8C: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '8C'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
            object PANLPC9Sub: TPanel
              Left = 2
              Top = 1396
              Width = 733
              Height = 105
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 18
              Visible = False
              object PANLPC9A: TPanel
                Left = 0
                Top = 0
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 0
                DesignSize = (
                  733
                  35)
                object LABLPC9A: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea teve uma s\'#39'edn' +
                    'cope, desmaio ou perda de consci\'#39'eancia resultante de uma les\'#39 +
                    'e3o na cabe\'#39'e7a nos \'#39'faltimos 12 meses OU voc\'#39'ea foi diagnost' +
                    'icado com concuss\'#39'e3o nos \'#39'faltimos 12 meses?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC9A: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc9a'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP9A: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '9A'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC9B: TPanel
                Left = 0
                Top = 35
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 1
                DesignSize = (
                  733
                  35)
                object LABLPC9B: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea tem alguma outr' +
                    'a condi\'#39'e7\'#39'e3o de sa\'#39'fade ou doen\'#39'e7a que n\'#39'e3o foi mencion' +
                    'ada nas quest\'#39'f5es anteriores, tais como epilepsia, condi\'#39'e7\'#39 +
                    'f5es neurol\'#39'f3gicas, problemas de rim?\par'#13#10'}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC9B: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc9b'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP9B: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '9B'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PANLPC9C: TPanel
                Left = 0
                Top = 70
                Width = 733
                Height = 35
                Align = alTop
                AutoSize = True
                Color = clWhite
                Constraints.MinHeight = 35
                ParentBackground = False
                TabOrder = 2
                DesignSize = (
                  733
                  35)
                object LABLPC9C: TRtfLabel
                  AlignWithMargins = True
                  Left = 53
                  Top = 4
                  Width = 575
                  Height = 26
                  Margins.Left = 52
                  Margins.Right = 104
                  Align = alTop
                  Caption = 
                    '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
                    'rset0 Tahoma;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4' +
                    '\uc1\pard\sl240\slmult1\lang22\b\f0\fs16 Voc\'#39'ea atualmente vive' +
                    ' com duas ou mais condi\'#39'e7\'#39'e3o de sa\'#39'fade ou doen\'#39'e7a?\par'#13#10 +
                    '}'#13#10
                  Constraints.MinHeight = 26
                  Transparent = True
                  WordWrap = True
                  OnResize = DoRTFLabelResize
                end
                object DBRGPC9C: TDBRadioGroup
                  Left = 632
                  Top = 1
                  Width = 100
                  Height = 33
                  Anchors = [akTop, akRight]
                  Color = clInfoBk
                  Columns = 2
                  Constraints.MinHeight = 33
                  DataField = 'bo_pc9c'
                  DataSource = KRDMAvaliadosGerenciar.DTSRParQ
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Items.Strings = (
                    'S'
                    'N')
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'True'
                    'False')
                end
                object PANLPCP9C: TPanel
                  Left = 0
                  Top = 1
                  Width = 50
                  Height = 33
                  Caption = '9C'
                  Color = clBlack
                  Constraints.MinHeight = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
          end
        end
      end
    end
    object TBSHParametrosFisiologicos: TTabSheet
      AlignWithMargins = True
      Caption = 'Par'#226'metros fisiol'#243'gicos'
      ImageIndex = 4
      DesignSize = (
        770
        403)
      object KRPAAvaliado3: TKRKPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 770
        Height = 23
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alTop
        ParentBackground = False
        TabOrder = 0
        GradientFill = True
        GradientColorA = clYellow
        GradientColorB = 43690
        object LABLAvaliado3: TLabel
          Left = 1
          Top = 1
          Width = 768
          Height = 21
          Align = alClient
          Alignment = taCenter
          Caption = 'Avaliado: ?????'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 119
          ExplicitHeight = 18
        end
      end
      object KRDGParametrosFisiologicos: TKRKDBGrid
        AlignWithMargins = True
        Left = 0
        Top = 29
        Width = 770
        Height = 201
        Margins.Left = 0
        Margins.Right = 0
        Align = alTop
        DataSource = KRDMAvaliadosGerenciar.DTSRParametrosFisiologicos
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
        VariableWidthColumns = '<ts_momafe><sm_frepul><bo_pulrit><sm_presis><sm_predia>'
        Columns = <
          item
            Expanded = False
            FieldName = 'ts_momafe'
            Title.Alignment = taCenter
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sm_frepul'
            Title.Alignment = taCenter
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bo_pulrit'
            Title.Alignment = taCenter
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sm_presis'
            Title.Alignment = taCenter
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sm_predia'
            Title.Alignment = taCenter
            Width = 145
            Visible = True
          end>
      end
      object DBNAParametrosFisiologicos2: TDBNavigator
        AlignWithMargins = True
        Left = 0
        Top = 236
        Width = 770
        Height = 25
        Margins.Left = 0
        Margins.Right = 0
        DataSource = KRDMAvaliadosGerenciar.DTSRParametrosFisiologicos
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbPost, nbCancel, nbRefresh]
        Align = alTop
        TabOrder = 2
        BeforeAction = DoBeforeAction
      end
      object GRBXPulso: TGroupBox
        Left = 0
        Top = 262
        Width = 290
        Height = 55
        Caption = ' Pulso '
        TabOrder = 3
        object KLDEFrequenciaPulso: TKRKLabeledDBEdit
          Left = 91
          Top = 21
          Width = 51
          Height = 21
          DataField = 'sm_frepul'
          DataSource = KRDMAvaliadosGerenciar.DTSRParametrosFisiologicos
          DBEditFormat.FinalMask = '#.###'
          DBEditFormat.Format = foCustom
          DBEditFormat.FormatScript.Strings = (
            '\D'#170
            '(\d)(\d{3})$'#186'$1.$2')
          EditLabel.Width = 84
          EditLabel.Height = 13
          EditLabel.Caption = 'Frequ'#234'ncia (bpm)'
          LabelPosition = lpLeft
          LabelSpacing = 1
          MaxLength = 5
          TabOrder = 0
        end
        object DBRGRitmoPulso: TDBRadioGroup
          Left = 148
          Top = 7
          Width = 136
          Height = 41
          BiDiMode = bdRightToLeftReadingOnly
          Caption = ' Ritmo '
          Columns = 2
          DataField = 'bo_pulrit'
          DataSource = KRDMAvaliadosGerenciar.DTSRParametrosFisiologicos
          Items.Strings = (
            'r'#237'tmico'
            'arr'#237'tmico')
          ParentBackground = True
          ParentBiDiMode = False
          TabOrder = 1
          Values.Strings = (
            'True'
            'False')
        end
      end
      object GRBXPressaoArterial: TGroupBox
        Left = 480
        Top = 262
        Width = 290
        Height = 55
        Anchors = [akTop, akRight]
        Caption = ' Press'#227'o arterial'
        TabOrder = 4
        object KLDEPressaoSistolica: TKRKLabeledDBEdit
          Left = 85
          Top = 21
          Width = 53
          Height = 21
          DataField = 'sm_presis'
          DataSource = KRDMAvaliadosGerenciar.DTSRParametrosFisiologicos
          DBEditFormat.FinalMask = '#.###'
          DBEditFormat.Format = foCustom
          DBEditFormat.FormatScript.Strings = (
            '\D'#170
            '(\d)(\d{3})$'#186'$1.$2')
          EditLabel.Width = 78
          EditLabel.Height = 13
          EditLabel.Caption = 'Sist'#243'lica (mmHg)'
          LabelPosition = lpLeft
          LabelSpacing = 1
          MaxLength = 5
          TabOrder = 0
        end
        object KLDEPressaoDiastolica: TKRKLabeledDBEdit
          Left = 230
          Top = 21
          Width = 53
          Height = 21
          DataField = 'sm_predia'
          DataSource = KRDMAvaliadosGerenciar.DTSRParametrosFisiologicos
          DBEditFormat.FinalMask = '#.###'
          DBEditFormat.Format = foCustom
          DBEditFormat.FormatScript.Strings = (
            '\D'#170
            '(\d)(\d{3})$'#186'$1.$2')
          EditLabel.Width = 85
          EditLabel.Height = 13
          EditLabel.Caption = 'Diast'#243'lica (mmHg)'
          LabelPosition = lpLeft
          LabelSpacing = 1
          MaxLength = 5
          TabOrder = 1
        end
      end
    end
    object TBSHRastreioDeSarcopenia: TTabSheet
      AlignWithMargins = True
      Caption = 'Rastreio de Sarcopenia'
      ImageIndex = 6
      object KRPAAvaliado5: TKRKPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 770
        Height = 23
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alTop
        ParentBackground = False
        TabOrder = 0
        GradientFill = True
        GradientColorA = clYellow
        GradientColorB = 43690
        object LABLAvaliado5: TLabel
          Left = 1
          Top = 1
          Width = 768
          Height = 21
          Align = alClient
          Alignment = taCenter
          Caption = 'Avaliado: ?????'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 119
          ExplicitHeight = 18
        end
      end
    end
  end
  inherited TLBRAcoes: TToolBar
    Width = 784
    ExplicitWidth = 784
    inherited LABLCaption: TLabel
      Height = 38
      ExplicitHeight = 38
    end
  end
  inherited IMLIToolBarAtivo: TImageList
    Bitmap = {
      494C0101020008001C0220002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      494C0101020008002C0220002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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

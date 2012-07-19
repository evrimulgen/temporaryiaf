inherited KRFMSelecionarCBO: TKRFMSelecionarCBO
  Caption = 'Selecionar C.B.O.'
  ClientHeight = 292
  ClientWidth = 497
  Position = poOwnerFormCenter
  ExplicitWidth = 503
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  object GRBXFiltro: TGroupBox [0]
    AlignWithMargins = True
    Left = 3
    Top = 0
    Width = 491
    Height = 55
    Margins.Top = 0
    Align = alTop
    Caption = ' Filtro (ou) '
    TabOrder = 2
    DesignSize = (
      491
      55)
    object LAEDTitulo: TLabeledEdit
      Left = 6
      Top = 27
      Width = 409
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 26
      EditLabel.Height = 13
      EditLabel.Caption = 'T'#237'tulo'
      LabelSpacing = 1
      TabOrder = 0
      OnKeyPress = LAEDTituloKeyPress
    end
    object KRLECBO: TKRKLabeledEdit
      Left = 421
      Top = 27
      Width = 64
      Height = 21
      Anchors = [akTop, akRight]
      EditFormat.FinalMask = '####-##'
      EditFormat.Format = foCustom
      EditFormat.FormatScript.Strings = (
        '\D'#170
        '(\d{4})(\d)'#186'$1-$2')
      EditLabel.Width = 21
      EditLabel.Height = 13
      EditLabel.Caption = 'CBO'
      LabelSpacing = 1
      MaxLength = 7
      TabOrder = 1
      OnKeyPress = KRLECBOKeyPress
    end
  end
  inherited KRDGSelecao: TKRKDBGrid
    Top = 58
    Width = 497
    Height = 195
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEx = [dgAutomaticColumSizes]
    RowColors = <
      item
        BackgroundColor = clBtnFace
        ForegroundColor = clNone
      end>
    VariableWidthColumns = '<va_titulo>'
    Columns = <
      item
        Expanded = False
        FieldName = 'cbo'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'va_titulo'
        Width = 333
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'en_tipo'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end>
  end
  inherited DTSR: TDataSource
    OnDataChange = DTSRDataChange
    Top = 162
  end
  inherited CLDS: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'IN_CBO_ID'
        ParamType = ptInput
        Value = -1
      end
      item
        DataType = ftString
        Name = 'CH_CODIGO'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'VA_TITULO'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'EN_TIPO'
        ParamType = ptInput
        Value = Null
      end>
    OnCalcFields = CLDSCalcFields
    Top = 162
    object CLDSin_cbo_id: TIntegerField
      FieldName = 'in_cbo_id'
    end
    object CLDSch_codigo: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'CBO'
      FieldName = 'ch_codigo'
      Required = True
      FixedChar = True
      Size = 6
    end
    object CLDSva_titulo: TWideStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'va_titulo'
      Required = True
      Size = 128
    end
    object CLDSen_tipo: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldName = 'en_tipo'
      Required = True
      Size = 8
    end
    object CLDScbo: TStringField
      Alignment = taCenter
      DisplayLabel = 'CBO'
      FieldKind = fkCalculated
      FieldName = 'cbo'
      Size = 7
      Calculated = True
    end
  end
end

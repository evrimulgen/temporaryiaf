inherited KRFMRelatorio: TKRFMRelatorio
  Caption = 'KRFMRelatorio'
  ClientHeight = 270
  ClientWidth = 533
  ExplicitWidth = 549
  ExplicitHeight = 308
  PixelsPerInch = 96
  TextHeight = 13
  inherited TLBRAcoes: TToolBar
    Width = 533
    ExplicitWidth = 533
  end
  object ACMB: TActionMainMenuBar [1]
    Left = 0
    Top = 40
    Width = 533
    Height = 25
    UseSystemFont = False
    ActionManager = KRDMRelatorio.ACMA
    Caption = 'ACMB'
    Color = clMenuBar
    ColorMap.HighlightColor = clWhite
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object BUTN1: TButton [2]
    Left = 8
    Top = 71
    Width = 75
    Height = 25
    Action = KRDMRelatorio.ACTN_1
    TabOrder = 2
  end
  object BUTN2: TButton [3]
    Left = 8
    Top = 102
    Width = 75
    Height = 25
    Action = KRDMRelatorio.ACTN_2
    TabOrder = 3
  end
  object BUTN3: TButton [4]
    Left = 8
    Top = 133
    Width = 75
    Height = 25
    Action = KRDMRelatorio.ACTN_3
    TabOrder = 4
  end
  object BUTN4: TButton [5]
    Left = 8
    Top = 164
    Width = 75
    Height = 25
    Action = KRDMRelatorio.ACTN_4
    TabOrder = 5
  end
  object BUTN5: TButton [6]
    Left = 8
    Top = 195
    Width = 75
    Height = 25
    Action = KRDMRelatorio.ACTN_5
    TabOrder = 6
  end
  object BUTN6: TButton [7]
    Left = 8
    Top = 226
    Width = 75
    Height = 25
    Action = KRDMRelatorio.ACTN_6
    TabOrder = 7
  end
  object BUTN7: TButton [8]
    Left = 89
    Top = 71
    Width = 75
    Height = 25
    Caption = 'BUTN7'
    TabOrder = 8
    OnClick = BUTN7Click
  end
end

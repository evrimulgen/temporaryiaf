object FORMPrincipal: TFORMPrincipal
  Left = 0
  Top = 0
  Caption = 'IAF - Indicadores de Aptid'#227'o F'#237'sica'
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    784
    562)
  PixelsPerInch = 96
  TextHeight = 13
  object ACMMPrincipal: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 784
    Height = 25
    UseSystemFont = False
    ActionManager = DAMOPrincipal.ACMAPrincipal
    Caption = 'ACMMPrincipal'
    Color = clMenuBar
    ColorMap.HighlightColor = clWhite
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
    OnPaint = ACMMPrincipalPaint
  end
  object ACTBPrincipal: TActionToolBar
    Left = 0
    Top = 25
    Width = 784
    Height = 41
    ActionManager = DAMOPrincipal.ACMAPrincipal
    BiDiMode = bdLeftToRight
    Caption = 'ACTBPrincipal'
    Color = clMenuBar
    ColorMap.HighlightColor = clWhite
    ColorMap.UnusedColor = clWhite
    EdgeBorders = [ebTop]
    EdgeInner = esLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    HorzMargin = 0
    ParentBiDiMode = False
    ParentFont = False
    Spacing = 0
    VertMargin = 0
  end
  object STTBPrincipal: TStatusBar
    Left = 0
    Top = 543
    Width = 784
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Alignment = taCenter
        Text = 'usuario'
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object PRBAAndamento: TProgressBar
    Left = 1
    Top = 545
    Width = 196
    Height = 16
    Anchors = [akLeft, akBottom]
    TabOrder = 3
  end
end

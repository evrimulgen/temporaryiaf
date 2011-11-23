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
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 784
    Height = 25
    UseSystemFont = False
    ActionManager = DAMOPrincipal.ACMAPrincipal
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.HighlightColor = clWhite
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
    OnPaint = ActionMainMenuBar1Paint
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 25
    Width = 784
    Height = 26
    ActionManager = DAMOPrincipal.ACMAPrincipal
    BiDiMode = bdRightToLeft
    Caption = 'ActionToolBar1'
    Color = clMenuBar
    ColorMap.HighlightColor = clWhite
    ColorMap.UnusedColor = clWhite
    EdgeOuter = esLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Orientation = boRightToLeft
    ParentBiDiMode = False
    ParentFont = False
    Spacing = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 543
    Width = 784
    Height = 19
    Panels = <>
  end
end

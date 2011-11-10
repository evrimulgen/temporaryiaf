object FORMPrincipal: TFORMPrincipal
  Left = 0
  Top = 0
  Caption = 'IAF - Indicadores de Aptid'#227'o F'#237'sica'
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 784
    Height = 25
    ActionManager = DAMOPrincipal.ACMAPrincipal
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.HighlightColor = clWhite
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
    ExplicitHeight = 29
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 25
    Width = 784
    Height = 27
    ActionManager = DAMOPrincipal.ACMAPrincipal
    Caption = 'ActionToolBar1'
    Color = clMenuBar
    ColorMap.HighlightColor = clWhite
    ColorMap.UnusedColor = clWhite
    EdgeBorders = [ebTop, ebBottom]
    EdgeOuter = esLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Spacing = 0
  end
end

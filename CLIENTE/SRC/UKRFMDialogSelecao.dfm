inherited KRFMDialogSelecao: TKRFMDialogSelecao
  Caption = 'KRFMDialogSelecao'
  KRKFormProperties.ButtonsPanel.Visible = True
  KRKFormProperties.ButtonsPanel.VisibleButtons = [vbOk, vbCancel]
  PixelsPerInch = 96
  TextHeight = 13
  object KRDGSelecao: TKRKDBGrid
    Left = 0
    Top = 0
    Width = 314
    Height = 173
    Align = alClient
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    RowColors = <>
  end
end

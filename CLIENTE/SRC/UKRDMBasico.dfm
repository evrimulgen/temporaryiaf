object KRDMBasico: TKRDMBasico
  OldCreateOrder = False
  SQLs = <>
  OnBeforeCreateMyForm = KRKDataModuleBeforeCreateMyForm
  Height = 150
  Width = 215
  object ACLI: TActionList
    Images = KPIM
    Left = 18
    Top = 6
  end
  object KRBH: TKRKBalloonHint
    TipTitle = 'Bal'#227'o sem t'#237'tulo'
    TipText = 
      'Voc'#234' esqueceu de por um texto. Configure a propriedade TipText c' +
      'orretamente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 90
    Top = 6
  end
  object KPIM: TKRKPngImageList
    PngImages = <>
    Left = 54
    Top = 6
  end
end

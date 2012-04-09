object KRDMBasico: TKRDMBasico
  OldCreateOrder = False
  SQLs = <>
  Height = 150
  Width = 215
  object UNQY: TUniQuery
    Connection = SODMPrincipal.UNCN
    ReadOnly = True
    Left = 6
    Top = 6
  end
  object UNSP: TUniStoredProc
    Connection = SODMPrincipal.UNCN
    Left = 42
    Top = 6
  end
end

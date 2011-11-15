object DAMOPrincipal: TDAMOPrincipal
  OldCreateOrder = False
  Height = 162
  Width = 215
  object ACMAPrincipal: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = ACTNAlterarSenha
                Caption = '&Alterar senha'
              end>
            Caption = '&Usu'#225'rio'
          end>
        ActionBar = FORMPrincipal.ActionMainMenuBar1
      end
      item
        Items = <
          item
            Action = ACTNSair
            Caption = '&Sair'
          end>
        ActionBar = FORMPrincipal.ActionToolBar1
      end>
    Images = IMLIPrincipal
    Left = 24
    Top = 12
    StyleName = 'Platform Default'
    object ACTNAlterarSenha: TAction
      Category = 'Usu'#225'rio'
      Caption = 'Alterar senha'
    end
    object ACTNAjuda: TAction
      Category = 'Ajuda'
      Caption = 'Ajuda'
    end
    object ACTNSobre: TAction
      Category = 'Ajuda'
      Caption = 'Sobre o IAF'
    end
    object ACTNSair: TAction
      Caption = 'Sair'
    end
  end
  object SOCNPrincipal: TSoapConnection
    SOAPServerIID = 'IAppServerSOAP - {C99F4735-D6D2-495C-8CA2-E53E5A439E61}'
    UseSOAPAdapter = True
    Left = 24
    Top = 60
  end
  object IMLIPrincipal: TImageList
    Left = 90
    Top = 12
  end
end

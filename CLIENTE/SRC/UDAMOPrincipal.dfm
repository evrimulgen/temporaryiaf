object DAMOPrincipal: TDAMOPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
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
      end>
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
    object Action5: TAction
      Caption = 'Action5'
    end
  end
  object SoapConnection1: TSoapConnection
    SOAPServerIID = 'IAppServerSOAP - {C99F4735-D6D2-495C-8CA2-E53E5A439E61}'
    UseSOAPAdapter = True
    Left = 36
    Top = 60
  end
end

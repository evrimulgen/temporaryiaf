object DAMOPrincipal: TDAMOPrincipal
  OldCreateOrder = False
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
            Caption = '&Op'#231#245'es'
          end>
        ActionBar = FORMPrincipal.ActionMainMenuBar1
      end>
    Left = 24
    Top = 12
    StyleName = 'Platform Default'
    object ACTNAlterarSenha: TAction
      Category = 'Op'#231#245'es'
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
end

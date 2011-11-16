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
          end
          item
            Items = <
              item
                Action = ACTNConfiguracoes
                Caption = '&Configura'#231#245'es'
              end
              item
                Action = ACTNSegurancaEPermissoes
              end>
            Caption = '&Ferramentas administrativas'
          end
          item
            Items = <
              item
                Action = ACTNAjuda
                Caption = '&Ajuda'
              end
              item
                Action = ACTNSobre
                Caption = '&Sobre o IAF'
              end>
            Caption = '&Ajuda'
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
    object ACTNConfiguracoes: TAction
      Category = 'Ferramentas administrativas'
      Caption = 'Configura'#231#245'es'
    end
    object ACTNSegurancaEPermissoes: TAction
      Category = 'Ferramentas administrativas'
      Caption = 'Seguran'#231'a e permiss'#245'es'
      OnExecute = ACTNSegurancaEPermissoesExecute
    end
  end
  object SOCNPrincipal: TSoapConnection
    Agent = 'CodeGear SOAP 1.3'
    Connected = True
    URL = 'http://127.0.0.1/iaf/IAFServer.dll/soap/ISODMPrincipal'
    SOAPServerIID = 'IAppServerSOAP - {C99F4735-D6D2-495C-8CA2-E53E5A439E61}'
    UseSOAPAdapter = True
    Left = 24
    Top = 60
  end
  object IMLIPrincipal: TImageList
    Left = 90
    Top = 12
  end
  object CNBRPrincipal: TConnectionBroker
    Connected = True
    Connection = SOCNPrincipal
    Left = 24
    Top = 108
  end
end

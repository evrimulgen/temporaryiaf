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
                Action = ACTNAlterarMinhasPreferencias
                ImageIndex = 2
              end>
            Caption = '&Usu'#225'rio'
          end
          item
            Items = <
              item
                Action = ACTNConfiguracoes
                Caption = '&Configura'#231#245'es'
                ImageIndex = 3
              end
              item
                Action = ACTNSegurancaEPermissoes
                Caption = '&Seguran'#231'a e permiss'#245'es'
                ImageIndex = 4
              end>
            Caption = '&Ferramentas administrativas'
          end
          item
            Items = <
              item
                Action = ACTNAjuda
                Caption = '&Ajuda'
                ImageIndex = 1
              end
              item
                Action = ACTNSobre
                Caption = '&Sobre o IAF'
                ImageIndex = 0
              end>
            Caption = '&Ajuda'
          end>
        ActionBar = FORMPrincipal.ActionMainMenuBar1
      end
      item
        ActionBar = FORMPrincipal.ActionToolBar1
      end>
    Images = IMLIPrincipal
    Left = 24
    Top = 12
    StyleName = 'Platform Default'
    object ACTNAlterarMinhasPreferencias: TAction
      Category = 'Usu'#225'rio'
      Caption = 'Alterar minhas prefer'#234'ncias'
      ImageIndex = 5
    end
    object ACTNAjuda: TAction
      Category = 'Ajuda'
      Caption = 'Ajuda'
      ImageIndex = 1
      OnExecute = ACTNAjudaExecute
    end
    object ACTNSobre: TAction
      Category = 'Ajuda'
      Caption = 'Sobre o IAF'
      ImageIndex = 0
      OnExecute = ACTNSobreExecute
    end
    object ACTNSair: TAction
      Caption = 'Sair'
    end
    object ACTNConfiguracoes: TAction
      Category = 'Ferramentas administrativas'
      Caption = 'Configura'#231#245'es'
      ImageIndex = 3
    end
    object ACTNSegurancaEPermissoes: TAction
      Category = 'Ferramentas administrativas'
      Caption = 'Seguran'#231'a e permiss'#245'es'
      ImageIndex = 4
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
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 90
    Top = 12
    Bitmap = {
      494C0101060008007C0010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000000000030000000C0000
      00170000001F0000002400000025000000250000002600000027000000270000
      0027000000270000001F0000000C0000000100000000000000030000000C0000
      00170000001F0000002400000026000000270000002700000027000000270000
      00260000001B0000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000060000001E000000420000
      00630000007A000000870000008B0000008C0000008C0000008F000000900000
      00900000008F0000007B0000003F0000000C000000060000001E000000420000
      00630000007A000000870000008C0000008E0000008F00000090000000900000
      008B000000660000001A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001700000D76010331AF0512
      64D30A1D8DEB0A1F9DF428379FF15381B9F22795BBFA0C94BAFD0B88B5FE0B7B
      A8FA0C739DF6000508A30000007C0000001F0000001700000D76010331AF0512
      64D30A1D8DEB0A1F9DF4959BCFF876788DF8757576FD965632FD79726FFF4E4E
      4ED50000008B0000002500000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030850B10E2DB7FE2169E0FF1F61
      DAFF1C5BD7FF1B52D2FF7E9AE3FF1E92BBFF82FFFFFF00FFFFFF00E1FFFF00C9
      FDFF00B7EAFF0779A6F60000008F00000027030850B10E2DB7FE2169E0FF1F61
      DAFF1C5BD7FF1B52D2FFAABCECFF828385FFF1DCCFFFA84204FFC67139FF7575
      75F9000000930000002F00000004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B2692E42471E5FF236EE3FF226B
      E0FF1F64DDFF1C5BD7FF82A1E5FF1E92BCFF7BFFFFFF00FBFFFF00DDFFFF00C5
      F9FF00B3E6FF097FAEFC00000090000000270B2692E42471E5FF236EE3FF226B
      E0FF1F64DDFF1C5BD7FFB9CAF1FF8F8D8EFFB6642DFFA94302FFB24B00FFAC6A
      39FD000000A1000000570000001E000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000071565C22A84F1FF297EEDFF2778
      EAFF2470E4FF1F65DBFF84A5E8FF1E94BCFF7CFFFFFF00FFFFFF00DFFFFF00C6
      FAFF00B4E7FF097FAFFC0000008F00000027071565C22A84F1FF297EEDFF2778
      EAFF2470E4FF1F65DBFFB9CCF2FFAD7149FFAB4500FFB96D3AFFBB6420FFC05B
      03FF1A0C00A3000000940000005A000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000237E2F8EF8FF2E8EF8FF2A87
      F5FF1A62E0FF1B61E0FF87ABECFF1693BDFF3EE8FDFF15D9F3FF17CFF6FF09BD
      EDFF00A9DDFF0980B0FC0000007F000000200000237E2F8EF8FF2E8EF8FF2A87
      F5FF1A62E0FF1B61E0FFBBCFF4FFAE602FFFB17037FFC0C0C4FFBE9673FFC360
      09FFC16100F9472800B100000083000000220000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000141034A2E735A6FFFF1B3E
      BFFF7C6D91FF625790FF7284D4FF1CB6E1FF6E6268FF54DAF0FF5AECFFFF36E6
      FFFF5D6E71FF006690F10000005600000012000000141034A2E735A6FFFF1B3E
      BFFF7C6D91FF625790FFB5BEE8FFC1B6C1FFB4BFE5FFB9C3EBFF9696AEE19F6D
      42DDCF6900FECA6E00F400000083000000240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000052E091A7DD41F2D
      AAFF86B4D5FF71ABDBFF657BB6FF8195D4FF94756EFF36A9B7E5359FA8D70660
      6EB17B655DF9060C0F8E0000003D00000009000000000000052E091A7DD41F2D
      AAFF86B4D5FF71ABDBFF7B8FC0FF4F63CAFF091D9BF1000022890808093B5858
      589AAE6D2AE3D17000FA0000005F0000001B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000011B2F7B
      CAE85EB7FFFF60B7FFFF5CB9FFFF788CABE4988A85FF0101019F000000780000
      005874625BF30505057F0000002A0000000400000000000000000000011B2F7B
      CAE85EB7FFFF60B7FFFF53B5FFFF12376EC9000001910000003A000000091010
      10424C4C4C8F9B5100D80000001D000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000091D2D746FC0
      FFFF79C5FFFF76C3FFFF6EBEFFFF9BCCF9FDAAA39FF73C3532CB09090990352E
      2CB97A6963FB0101014D00000012000000010000000000000000091D2D746FC0
      FFFF79C5FFFF76C3FFFF6DBEFFFF4BA6F4FB010305A100000064000000180000
      0001121212460000000700000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A4363A583CC
      FFFF8ED2FFFF8AD0FFFF7AC6FFFF75C1FFFF718692DB78706CE0968C88FA766C
      67E9111111630000000F000000030000000000000000000000001A4363A583CC
      FFFF8ED2FFFF8AD0FFFF7AC6FFFF63B9FFFF012235B500000088000000270000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000012679AE38CD1
      FFFF96D6FFFF91D3FFFF78C3FCFF096FA6FF1C7CAAFD282A2A9C000000320000
      000700000001000000000000000000000000000000000000000012679AE38CD1
      FFFF96D6FFFF91D3FFFF78C3FCFF096FA6FF006DA1FD0001028C0000002A0000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004B74D971BF
      FCFF88CFFFFF89D0FFFF459AD3FF0087BAFF007EB0FE000102710000001D0000
      0001000000000000000000000000000000000000000000000000004B74D971BF
      FCFF88CFFFFF89D0FFFF459AD3FF0087BAFF007EB0FE000102710000001C0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000002536940170
      A4FF2C8DC5FF268BC2FF007DB2FF0099CCFF004869CE000000350000000A0000
      0000000000000000000000000000000000000000000000000000002536940170
      A4FF2C8DC5FF268BC2FF007DB2FF0099CCFF004869CE000000350000000A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000F002C
      41A600618DEC005983E3005B82E000415EC30003053A0000000A000000010000
      00000000000000000000000000000000000000000000000000000000000F002C
      41A600618DEC005983E3005B82E000415EC30003053A0000000A000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000020000000E0000001C000000190000000B0000
      0002000000000000000000000000000000000000000000000000000000000000
      000100000007000000130000001E00000023000000230000001D000000120000
      0006000000010000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000030000000F0000001C0000
      0014000000040000000000000000000000000000000000000000000000000000
      0001000000090000001A0000001A000000170000002000000026000000270000
      00260000001B0000000700000000000000000000000000000000000000000000
      00000000000000000000000000070000002A0000005D000000630000003D0000
      0015000000030000000000000000000000000000000000000000000000030000
      0012000000310000005800000078000000860000008500000075000000550000
      002C0000000F0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000020000001400000047000000700000
      0054000000180000000200000000000000000000000000000004000000100000
      001B0000002F000000670000006A000000620000007B0000008D000000900000
      008B000000660000001A00000000000000000000000000000000000000000000
      000000000000000000000D0C0C4E5E5A5AE4312E2EB6060606910000008A0000
      004D000000150000000100000000000000000000000000000003000000170202
      02531717179F3A393AD1575657ED504E50EC2B2B2BCD0E0E0EA80101019C0000
      007F000000450000001400000002000000000000000000000000000000000000
      00000000000000000000000000070000001D000B1271005F8AEB001B29AD0000
      008E000000430000001800000006000000000000000000000012000000480100
      006E583333E12B1717B82F2F2FA5656464DF737373FA955531FC79726FFF4E4E
      4ED50000008B0000002500000001000000000000000000000000000000000000
      0001000000040000000C0000001319181879D9BDBDFF948888F90F0E0EA40000
      008A0000003D0000000A00000000000000000000000100000012111111737372
      73EFB0A6AFFFD5C2D3FFC8C6C7FFC8C3C9FFC7B5C5FF898188FF444344E80606
      06A10000008A000000430000000F000000000000000000000000000000000000
      000000000000000000010000001D0006086E007EB1F900C2F3FE00689CFA0005
      06A2000000860000005A000000240000000500000002190E0E76512F2FD2130B
      0BA3B48989FF956464FD8E8787D9848484FFF1DCCFFFA84204FFC67139FF7575
      75F9000000930000002F00000004000000000000000000000000000000040000
      00120000002700000043000000590302026DB2A1A1FFFFE4E4FF908484F80606
      06A00000006D0000001C00000001000000000000000712121268A19DA0FCDDCE
      DAFF7AC785FF11B027FF00A20EFF00A00BFF1DB32BFF95D099FFBBAAB9FF5D5A
      5CF7060606A10000007D0000002A000000040000000000000000000000000000
      0000000000000000000C003D51B3007EAEFE0076AAFF00CFFFFF00A4D9FE0035
      54D3001F2FB10000019600000058000000140000000D926868F1D7B6B6FFC89C
      9CFFE7C6C6FFD6B5B5FFF2E6E6FF938F8EFFB6642DFFA94302FFB24B00FFAC6A
      39FD000000A0000000570000001E000000050000000000000006000000200000
      0052100E0E89242020A52E2929B32E2A2ABBC2A8A8FFFFCFCFFFFCDDDDFF3431
      31C40000009000000037000000070000000002020225908E90EEE5D6E3FF36B8
      4BFF06AF21FF12AA2BFF129B28FF119924FF0CA620FF00A50BFF5CC765FFBDAC
      BAFF424142E40000009B00000050000000100000000100000007000000120000
      001400000009000000100083AFEA00CBFAFD01D1FCFE0FD5FFFF25DEFCFE008D
      C1FE0084B8FE001926AD0000006E0000001B07040445543333D3DBC1C1FFE5CC
      CCFFE5CDCDFFE3CBCBFFF4E9E9FFB07349FFAB4500FFB96D3AFFBB6420FFC05B
      03FF190B00A1000000940000005A000000150000000400000022221C1C89907E
      7EE7DDC4C7FFF8E0EAFFFFECFBFFFFE6F4FFFFDCE5FFFFD0D2FFFFDBDBFFA698
      98FD030303A0000000620000001C0000000327272787DDD2DBFF6DBE7CFF0CB4
      2DFF1CB63AFF1AB139FFFFFFFFFFFFFFFFFF14AB2BFF12AC26FF00A40BFF9CCF
      A0FF8F878EFF0C0C0CA40000006E0000001A000000080000002A000000550000
      00590000003700000018001520771AD2FCFF31E0FFFF42E3FFFF19C1ECFF00BE
      F5FF4DEFFCFE085B81E6000000410000000E8B6363E9CDAAAAFFE5CCCCFFE6D1
      D1FF9B7777EC7F6161D2F2E3E3FFB5652FFFB27137FFC4C2C2FFBE9673FFC060
      08FEC16100F9472900B20000008300000022000000144F4040ACEBD7D7FFFFF9
      F9FFFFF4FBFFFAB04EFFF89A18FFF79A17FFF9AA4AFFFFD7DDFFFFD9D9FFDEC9
      C9FF1D1B1BAF00000093000000470000000E6E6D6ECDECDBE8FF11B634FF1EBA
      40FF20BA43FF1FB540FF1BA439FF179E33FF16A630FF15AC2BFF0BAA1EFF2DB7
      3BFFCABAC9FF242424C30000007D0000002000010127002A3BA3002638AE0006
      089B000000880000005D000305651486AEF948E2FDFF00B8ECFF2EE1FFFF84F6
      FFFF25718BDD00090F5E0000000F00000002A47979F8E3CECEFFE8D1D1FFCFB3
      B3FF170D0DA9010101A2DECECEFAECCEBDFFEADAD7FF998C8CE3515151B39B6B
      40DECE6900FECA6D00F40000008500000025281F1F7AF0DBDBFFFFF9F9FFFFF2
      F2FFFFF2F7FFFEF1EBFFE27800FFE27900FFFEE7DFFFFFDCDFFFFFD4D4FFFFE6
      E6FFB8A5A5FE0C0B0BA2000000750000001DABAAABF1CAD1CCFF0CBA36FF25BE
      4CFF24B84AFF22B447FFE5F6E9FFE6F5EAFF2DA644FF15A22DFF13AA28FF00A7
      0CFFE2CFDFFF444444DC0000007D00000020003F57B500B7EAFF01C8F6FF0B9A
      C3F7001019A00010179E006A95ED00AAE3FF16D5FFFF7DFDFFFF3E99B1ED001A
      2A8A000000190000000500000000000000000101011E845959E6E9D3D3FFF1E3
      E3FFA67E7EFEA57B7BF9E5CFCFFFECD9D9FFD5B2B2FF5E3D3DDE1A1515A6645E
      5EC1A66828E4D07000FA0000007A00000022AA9090E4FFFEFEFFFFF2F2FFFFF1
      F1FFFFF3F4FFFFFFFFFFD16800FFD06900FFFFF4FFFFFFDDDEFFFFD7D7FFFFD1
      D1FFFFE7E7FF4C4545D60000008B00000025AFADAFEFCBD1CCFF11BF3FFF28BE
      52FF25AD4EFF24A748FF37B257FFBEE5C8FFC8E6CFFF53B566FF14A92BFF00A8
      0FFFE6D3E3FF474747DB0000006C0000001A0B9CC9F637E8FFFF26C9F0FE00BF
      F4FF069CCDFE009BD0FF0AD1FFFF70FFFFFF56C1D5FA033042A4000101280000
      0007000000010000000000000000000000000B080844DCC1C1FFEFE2E2FFE6CB
      CBFFECD7D7FFEED9D9FFE4CACAFFC39D9DFFB78D8DFF704242F59D7272FEAF99
      99F44A4949B6944D00DD000000790000001FE8CACAFFFFFFFFFFFFF9F9FFFFF3
      F3FFFFF6F8FFDA955CFFC96916FFCA701EFFFFF6FFFFFFE1E1FFFFDBDBFFFFD4
      D4FFFFDEDEFFA99797FE0000008800000024787778C9F2E1EDFF1CBE49FF2BC5
      5BFFE7F7ECFFECF8F0FF5DBE78FF48B263FFF9FCFAFFF7FCF8FF10AC29FF2BB5
      3EFFE1D2DFFF2C2C2CBE0000004D0000000F149BC3F02ED5F9FD0208098F137F
      99D500C4F7FF5AF4FFFF7BE7F1FE0C4B62C2000406460000000B000000010000
      000000000000000000000000000000000000000000064632329834242488BC99
      99F5E8D5D5FFC79F9FFFEAD7D7FFA67474FFCCAAAAFFDBB5B5FFE8CECEFFB78D
      8DFFD3BABAFF857A7AD90000006C0000001ADCBCBCF9FFFFFFFFFFFDFDFFFFF8
      F8FFFFF7F9FFFAF1ECFFF2DFD2FFDFB28EFFFFF6FCFFFFE4E4FFFFDEDEFFFFD7
      D7FFFFE4E4FF9B8989F800000068000000192A2A2A7AFBF1F8FF6CBA84FF22C9
      57FF5FD588FFE3F7E9FFFFFFFFFFFFFFFFFFF2FAF4FF78D28BFF00AC1BFF9BCA
      A1FFBFB6BDFF1010108E00000027000000040D627BC334CBEDFF020A0D8C0310
      107C44DDF9FE38C6E6FF00283AB3000000700000001C00000001000000000000
      000000000000000000000000000000000000000000000000000000000001916D
      6DD2927171DF07040441865F5FE2945D5DFFE8D1D1FFE1C5C5FFDFB5B5FFE9CD
      CDFFCEA8A8FF2E1A1ABD0000005E00000014675252AEFFFCFCFFFFFFFFFFFFFC
      FCFFFFFCFCFFFFFFFFFFE9CAB9FFE9CAB9FFFFFBFFFFFFE8E8FFFFE2E2FFFFDC
      DCFFFFDFDFFF383232B8000000350000000900000011B6B3B5E8FBEBF6FF3CBA
      62FF1FC856FF29C75BFF28C253FF24BE4AFF1BB93EFF06B326FF57B968FFEFDE
      EDFF615F61DC000000430000000D000000000012195F46D7F2FF1A5B6AB90000
      00921C97A4D821CEF7FF003951C00000006F0000001B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00020000000C000000013E2929A1F3DFDFFFECD9D9FFA17777F5312323B1E0BA
      BAFFBD9696FF130B0B9D0000005B0000001403030321C6A6A6E9FFFFFFFFFFFF
      FFFFFFFEFEFFFDF8F7FF9F3800FF9F3700FFFFEEEEFFFFECECFFFFE6E6FFFFE5
      E5FF8D7C7CE90404044B0000000F000000010000000011111145D9D7D9F8FFEE
      F9FF74BB8AFF21BB4CFF0EBC3BFF08B931FF21B33FFF8FC397FFF5E5F2FF9592
      95F20808085B000000120000000100000000000000031B7C92CC48CCE9FE174E
      5CB434ADBEE53EE1FFFF004461C7000000580000001300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000150E0E568B6666DFE6CDCDFFDBC1C1FFD8B7B7FFE0C2
      C2FFD7B5B5FF402626BF0000002C0000000900000000060505299E8282D1F6E4
      E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4FFE6CCCCFF7262
      62D3060505410000000B000000010000000000000000000000000F0F0F42ACAB
      ACE4FEF5FBFFFEECFAFFE4DCE1FFE7DDE5FFFCEAF8FFE2D9E0FF7A797ADC0909
      094C0000000D00000002000000000000000000000000000304253CB2C6E964E6
      F9FF62F3FFFF4AE0FAFF002838A0000000290000000600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003C2A2A90E8D6D6FFCFAAAAFFE1C3C3FFA17B
      7BF3241616960402023F00000008000000010000000000000000000000041D17
      175D6E5757B7C2A5A5EEDFC3C3FEDABEBEFEB49B9BEE5C4C4CB8171212650000
      0012000000040000000000000000000000000000000000000000000000000000
      000C2222226D646464B7939393DB8D8D8DDA525252B41919196B000000160000
      0004000000010000000000000000000000000000000000000000000204241862
      76BC3DB6CFF4095A74C500000124000000080000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000050303293929298D0705053A795959D33F2B
      2B9D00000014000000050000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object CNBRPrincipal: TConnectionBroker
    Connected = True
    Connection = SOCNPrincipal
    Left = 24
    Top = 108
  end
end

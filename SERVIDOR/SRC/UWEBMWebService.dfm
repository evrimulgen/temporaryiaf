object WEBMWebService: TWEBMWebService
  OldCreateOrder = False
  Actions = <
    item
      Default = True
      Name = 'DefaultHandler'
      PathInfo = '/'
      OnAction = WebModule2DefaultHandlerAction
    end
    item
      Name = 'AboutHandler'
      PathInfo = '/sobre'
      ProducerContent = PAPRSobre
    end>
  Height = 229
  Width = 121
  object HTSDWebService: THTTPSoapDispatcher
    Dispatcher = HSPIWebService
    WebDispatch.PathInfo = 'soap*'
    Left = 45
    Top = 11
  end
  object HSPIWebService: THTTPSoapPascalInvoker
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soUTF8InHeader]
    Left = 45
    Top = 67
  end
  object WSHPWebService: TWSDLHTMLPublish
    WebDispatch.MethodType = mtAny
    WebDispatch.PathInfo = 'wsdl*'
    TargetNamespace = 'http://www.zettaomnis.com.br/'
    PublishOptions = [poUTF8ContentType]
    Left = 45
    Top = 123
  end
  object PAPRSobre: TPageProducer
    HTMLDoc.Strings = (
      
        '<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3' +
        '.org/TR/xhtml11/DTD/xhtml11.dtd">'
      
        '<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt" lang="p' +
        't">'
      '  <head>'
      '    <title>:: IAF :: Vers&atilde;o 1.0 ::</title>'
      
        '    <meta http-equiv="content-type" content="text/html; charset=' +
        'utf-8" />'
      '    <style type="text/css">'
      '    /* <![CDATA[ */'
      '      body {'
      '        margin: 0px;'
      '        font: normal normal normal 12pt Arial;'
      '      }'
      '      '
      '      h1.titulo {'
      '          background-color: green;'
      '          color: white;'
      '          padding-left: 5px;'
      '          margin: 0px;'
      '      }'
      '    /* ]]> */'
      '    </style>'
      '  </head>'
      '  <body>'
      
        '    <h1 class="titulo">IAF - Indicadores de Aptid&atilde;o F&iac' +
        'ute;sca, vers&atilde;o <#versao></h1>'
      '    Desenvolvedores:<br/>'
      '    <ul>'
      '      <li>Carlos Barreto Feitoza Filho</li>'
      '      <li>Rodrigo C&eacute;sar Pimentel Rulino de Souza</li>'
      '    </ul>'
      '  </body>'
      '</html>')
    OnHTMLTag = PAPRSobreHTMLTag
    Left = 45
    Top = 174
  end
end

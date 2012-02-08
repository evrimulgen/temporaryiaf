unit UWEBMWebService;

interface

uses
  SysUtils, Classes, HTTPApp, InvokeRegistry, WSDLIntf, TypInfo, WebServExp,
  WSDLBind, XMLSchema, WSDLPub, SOAPPasInv, SOAPHTTPPasInv, SOAPHTTPDisp,
  WebBrokerSOAP, HTTPProd;

type
  TWEBMWebService = class(TWebModule)
    HTSDWebService: THTTPSoapDispatcher;
    HSPIWebService: THTTPSoapPascalInvoker;
    WSHPWebService: TWSDLHTMLPublish;
    PAPRSobre: TPageProducer;
    procedure WebModule2DefaultHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure PAPRSobreHTMLTag(Sender: TObject; Tag: TTag; const TagString: string; TagParams: TStrings; var ReplaceText: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWEBMWebService;

implementation

{$R *.dfm}

uses UExtraUtilities;

procedure TWEBMWebService.PAPRSobreHTMLTag(Sender: TObject; Tag: TTag; const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'versao' then
    ReplaceText := '1.0.0.0';
end;

procedure TWEBMWebService.WebModule2DefaultHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  Conteudo: String;
begin
  WSHPWebService.ServiceInfo(Sender, Request, Response, Handled);

  Conteudo := Response.Content;
  try
    HideInterfaces(Conteudo,['IAppServer','IAppServerSOAP']);
    AddDefaultFooter(Conteudo);
  finally
    Response.Content := Conteudo;
  end;
end;

end.

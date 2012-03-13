// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost/iaf/IAFServer.dll/wsdl/IExtraMethods
// Version  : 1.0
// (03/12/2011 16:13:39 - - $Rev: 34800 $)
// ************************************************************************ //

unit UExtraMethods;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : urn:UExtraMethodsIntf-IExtraMethods
  // soapAction: urn:UExtraMethodsIntf-IExtraMethods#GetConstraintsFor
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : IExtraMethodsbinding
  // service   : IExtraMethodsservice
  // port      : IExtraMethodsPort
  // URL       : http://localhost/iaf/IAFServer.dll/soap/IExtraMethods
  // ************************************************************************ //
  IExtraMethods = interface(IInvokable)
  ['{C6037FCA-3DC8-4F09-EC59-87ADF44E2873}']
    function GetConstraintsFor(const aProviderName: String; aDataSetName: String; const aSessionID: String): String; stdcall;
    function GetPermissions(const aSessionID: String): OleVariant; stdcall;
  end;

function GetConstraintsFor(const aProviderName: String; aDataSetName: String; const aSessionID: String): String;
function GetPermissions(const aSessionID: String): OleVariant;

implementation

uses SysUtils
   , UConfiguracoes;

function GetIExtraMethods(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IExtraMethods;
const
  defSvc  = 'IExtraMethodsservice';
  defPrt  = 'IExtraMethodsPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;

  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := Configuracoes.ServicoWeb + '/wsdl/IExtraMethods'
    else
      Addr := Configuracoes.ServicoWeb + '/soap/IExtraMethods';
  end;

  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;

  { Autenticação proxy }
  if Configuracoes.EnderecoProxy <> '' then
  begin
    RIO.HTTPWebNode.Proxy := Configuracoes.EnderecoProxy;
    RIO.HTTPWebNode.UserName := Configuracoes.UsuarioProxy;
    RIO.HTTPWebNode.Password := Configuracoes.SenhaProxy;
  end;

  try
    Result := (RIO as IExtraMethods);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;

function GetConstraintsFor(const aProviderName: String; aDataSetName: String; const aSessionID: String): String;
begin
  Result := GetIExtraMethods.GetConstraintsFor(aProviderName,aDataSetName,aSessionID);
end;

function GetPermissions(const aSessionID: String): OleVariant;
begin
  Result := GetIExtraMethods.GetPermissions(aSessionID);
end;

initialization
  { IExtraMethods }
  InvRegistry.RegisterInterface(TypeInfo(IExtraMethods), 'urn:UExtraMethodsIntf-IExtraMethods', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IExtraMethods), 'urn:UExtraMethodsIntf-IExtraMethods#GetConstraintsFor');

end.
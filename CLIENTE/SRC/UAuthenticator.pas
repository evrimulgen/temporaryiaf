// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://127.0.0.1/iaf/IAFServer.dll/wsdl/IAuthenticator
// Version  : 1.0
// (17/11/2011 01:28:39 - - $Rev: 34800 $)
// ************************************************************************ //

unit UAuthenticator;

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
  // !:unsignedByte    - "http://www.w3.org/2001/XMLSchema"[]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : urn:UAuthenticatorIntf-IAuthenticator
  // soapAction: urn:UAuthenticatorIntf-IAuthenticator#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : IAuthenticatorbinding
  // service   : IAuthenticatorservice
  // port      : IAuthenticatorPort
  // URL       : http://127.0.0.1/iaf/IAFServer.dll/soap/IAuthenticator
  // ************************************************************************ //
  IAuthenticator = interface(IInvokable)
  ['{46E5A3A5-C89B-3FB9-B769-8A3547582AA0}']
    function  Login(const aUser: string; const aPassword: string; out aSessionID: string): Boolean; stdcall;
    function  SetSessionData(const aSessionID: string; const aData: string): Boolean; stdcall;
    function  GetSessionData(const aSessionID: string): string; stdcall;
    function  SessionExists(const aSessionID: string): Boolean; stdcall;
    function  Logout(const aSessionID: string): Boolean; stdcall;
    function  ChangePassword(const aSessionID: string; const aOldPassword: string; const aNewPassword: string): Byte; stdcall;
  end;

function Login(const aUser: string; const aPassword: string; out aSessionID: string): Boolean;
function SetSessionData(const aSessionID: string; const aData: string): Boolean;
function GetSessionData(const aSessionID: string): string;
function SessionExists(const aSessionID: string): Boolean;
function Logout(const aSessionID: string): Boolean;
function ChangePassword(const aSessionID: string; const aOldPassword: string; const aNewPassword: string): Byte;

function GetIAuthenticator(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IAuthenticator;

implementation

uses SysUtils;

function GetIAuthenticator(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IAuthenticator;
const
  defWSDL = 'http://127.0.0.1/iaf/IAFServer.dll/wsdl/IAuthenticator';
  defURL  = 'http://127.0.0.1/iaf/IAFServer.dll/soap/IAuthenticator';
  defSvc  = 'IAuthenticatorservice';
  defPrt  = 'IAuthenticatorPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IAuthenticator);
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

function GetSessionData(const aSessionID: string): string;
begin
  Result := GetIAuthenticator.GetSessionData(aSessionID);
end;

function Login(const aUser, aPassword: string; out aSessionID: string): Boolean;
begin
  Result := GetIAuthenticator.Login(aUser,aPassword,aSessionID);
end;

function Logout(const aSessionID: string): Boolean;
begin
  Result := GetIAuthenticator.Logout(aSessionID);
end;

function SessionExists(const aSessionID: string): Boolean;
begin
  Result := GetIAuthenticator.SessionExists(aSessionID);
end;

function SetSessionData(const aSessionID, aData: string): Boolean;
begin
  Result := GetIAuthenticator.SetSessionData(aSessionID, aData);
end;

function ChangePassword(const aSessionID: string; const aOldPassword: string; const aNewPassword: string): Byte;
begin
  Result := GetIAuthenticator.ChangePassword(aSessionID, aOldPassword, aNewPassword);
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(IAuthenticator), 'urn:UAuthenticatorIntf-IAuthenticator', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IAuthenticator), 'urn:UAuthenticatorIntf-IAuthenticator#%operationName%');

end.
// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://127.0.0.1/iaf/IAFServer.dll/wsdl/IServerManager
// Version  : 1.0
// (21/11/2011 01:22:53 - - $Rev: 34800 $)
// ************************************************************************ //

unit UServerManager;

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
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : urn:UServerManagerIntf-IServerManager
  // soapAction: urn:UServerManagerIntf-IServerManager#CheckSessions
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : IServerManagerbinding
  // service   : IServerManagerservice
  // port      : IServerManagerPort
  // URL       : http://127.0.0.1/iaf/IAFServer.dll/soap/IServerManager
  // ************************************************************************ //
  IServerManager = interface(IInvokable)
  ['{973E0E37-AEC0-3C5B-40B2-349D60D7574B}']
    procedure SetCheckSessions(const aPassword: string; const aValue: Boolean); stdcall;
    function GetCheckSessions: Boolean; stdcall;
  end;

procedure SetCheckSessions(const aPassword: string; const aValue: Boolean);

function GetIServerManager(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IServerManager;

implementation

uses SysUtils;

function GetIServerManager(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IServerManager;
const
  defWSDL = 'http://127.0.0.1/iaf/IAFServer.dll/wsdl/IServerManager';
  defURL  = 'http://127.0.0.1/iaf/IAFServer.dll/soap/IServerManager';
  defSvc  = 'IServerManagerservice';
  defPrt  = 'IServerManagerPort';
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
    Result := (RIO as IServerManager);
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

procedure SetCheckSessions(const aPassword: string; const aValue: Boolean);
begin
  GetIServerManager.SetCheckSessions(aPassword,aValue);
end;


initialization
  { IServerManager }
  InvRegistry.RegisterInterface(TypeInfo(IServerManager), 'urn:UServerManagerIntf-IServerManager', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IServerManager), 'urn:UServerManagerIntf-IServerManager#CheckSessions');

end.
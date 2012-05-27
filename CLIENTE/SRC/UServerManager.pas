// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://127.0.0.1/iaf/IAFServer.dll/wsdl/IServerManager
// Version  : 1.0
// (21/11/2011 01:22:53 - - $Rev: 34800 $)
// ************************************************************************ //

unit UServerManager;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns, CRAccess;

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
    procedure SetUseCompression(const aPassword: string; const aValue: Boolean); stdcall;
    function GetUseCompression: Boolean; stdcall;
    procedure SetUseDBMonitor(const aPassword: string; const aValue: Boolean); stdcall;
    function GetUseDBMonitor: Boolean; stdcall;
    procedure SetDBHostName(const aPassword: string; const aValue: string); stdcall;
    procedure SetDBPortNumb(const aPassword: string; const aValue: Word); stdcall;
    procedure SetDBDatabase(const aPassword: string; const aValue: string); stdcall;
    procedure SetDBUser(const aPassword: string; const aValue: string); stdcall;
    procedure SetDBPassword(const aPassword: string; const aValue: string); stdcall;
    procedure SetDBProtocol(const aPassword: string; const aValue: string); stdcall;
    procedure SetDBTransactIsolationLevel(const aPassword: string; const aValue: TCRIsolationLevel); stdcall;
  end;

procedure SetCheckSessions(const aPassword: string; const aValue: Boolean);
function GetCheckSessions: Boolean;
procedure SetUseCompression(const aPassword: string; const aValue: Boolean);
function GetUseCompression: Boolean;
procedure SetUseDBMonitor(const aPassword: string; const aValue: Boolean);
function GetUseDBMonitor: Boolean;
procedure SetDBHostName(const aPassword: string; const aValue: string);
procedure SetDBPortNumb(const aPassword: string; const aValue: Word);
procedure SetDBDatabase(const aPassword: string; const aValue: string);
procedure SetDBUser(const aPassword: string; const aValue: string);
procedure SetDBPassword(const aPassword: string; const aValue: string);
procedure SetDBProtocol(const aPassword: string; const aValue: string);
procedure SetDBTransactIsolationLevel(const aPassword: string; const aValue: TCRIsolationLevel);


function GetIServerManager(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IServerManager;

implementation

uses SysUtils, UConfiguracoes;

function GetIServerManager(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IServerManager;
const
  defSvc  = 'IServerManagerservice';
  defPrt  = 'IServerManagerPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := Configuracoes.ServicoWeb + '/wsdl/IServerManager'
    else
      Addr := Configuracoes.ServicoWeb + '/soap/IServerManager';
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

function GetCheckSessions: Boolean;
begin
  Result := GetIServerManager.GetCheckSessions;
end;

procedure SetUseCompression(const aPassword: string; const aValue: Boolean);
begin
  GetIServerManager.SetUseCompression(aPassword,aValue);
end;

function GetUseCompression: Boolean;
begin
  Result := GetIServerManager.GetUseCompression;
end;

procedure SetUseDBMonitor(const aPassword: string; const aValue: Boolean);
begin
  GetIServerManager.SetUseDBMonitor(aPassword,aValue);
end;

function GetUseDBMonitor: Boolean;
begin
  Result := GetIServerManager.GetUseDBMonitor;
end;

procedure SetDBHostName(const aPassword: string; const aValue: string);
begin
  GetIServerManager.SetDBHostName(aPassword,aValue);
end;

procedure SetDBPortNumb(const aPassword: string; const aValue: Word);
begin
  GetIServerManager.SetDBPortNumb(aPassword,aValue);
end;

procedure SetDBDatabase(const aPassword: string; const aValue: string);
begin
  GetIServerManager.SetDBDatabase(aPassword,aValue);
end;

procedure SetDBUser(const aPassword: string; const aValue: string);
begin
  GetIServerManager.SetDBUser(aPassword,aValue);
end;

procedure SetDBPassword(const aPassword: string; const aValue: string);
begin
  GetIServerManager.SetDBPassword(aPassword,aValue);
end;

procedure SetDBProtocol(const aPassword: string; const aValue: string);
begin
  GetIServerManager.SetDBProtocol(aPassword,aValue);
end;

procedure SetDBTransactIsolationLevel(const aPassword: string; const aValue: TCRIsolationLevel);
begin
  GetIServerManager.SetDBTransactIsolationLevel(aPassword,aValue);
end;

initialization
  { IServerManager }
  InvRegistry.RegisterInterface(TypeInfo(IServerManager), 'urn:UServerManagerIntf-IServerManager', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IServerManager), 'urn:UServerManagerIntf-IServerManager#CheckSessions');

end.
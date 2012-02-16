unit UAuthenticatorIntf;

interface

uses InvokeRegistry
   , Types
   , XSBuiltIns
   , USessionsManager
   , UCommonTypes;

type
  IAuthenticator = interface(IInvokable)
  ['{AC90F9A4-69F6-48E0-86E3-AD226F7EB099}']
    function Login(const aUser, aPassword: String; out aSessionID: String): Boolean; stdcall;
    function SetSessionData(const aSessionID, aData: String): Boolean; stdcall;
    function GetSessionData(const aSessionID: String): String; stdcall;
    function SessionExists(const aSessionID: String): Boolean; stdcall;
    function Logout(const aSessionID: String): Boolean; stdcall;
    function ChangePassword(const aSessionID, aOldPassword, aNewPassword: String): Byte; stdcall;
  end;

implementation

initialization
  InvRegistry.RegisterInterface(TypeInfo(IAuthenticator),'','','Interface que expõe métodos relacionados a autenticação de usuários');

end.

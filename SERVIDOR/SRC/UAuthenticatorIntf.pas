unit UAuthenticatorIntf;

interface

uses
  InvokeRegistry, Types, XSBuiltIns;

type
  IAuthenticator = interface(IInvokable)
  ['{C3239BEC-621F-40F8-9F75-305604DD525E}']
    function Login(const aUser, aPassword: String; out aSessionID: String): Boolean; stdcall;
//    function SetSessionData(const aSessionID: String; const aData: String): Boolean; stdcall;
//    function GetSessionData(const aSessionID: String): String; stdcall;
//    function SessionExists(const aSessionID: String): Boolean; stdcall;
    function Logout(const aSessionID: String): Boolean; stdcall;
  end;

implementation

initialization
  InvRegistry.RegisterInterface(TypeInfo(IAuthenticator));

end.

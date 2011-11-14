unit UAuthenticatorImpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, UAuthenticatorIntf, USessionsManager;

type
  TAuthenticator = class(TInvokableClass, IAuthenticator)
  private
    function GetSessionByID(const aSessionID: String; out aSession: TSessionItem): Boolean;
    function CreateSessionID: String;
  public
    function SetSessionData(const aSessionID: String; const aData: String): Boolean; stdcall;
    function GetSessionData(const aSessionID: String): String; stdcall;
    function SessionExists(const aSessionID: String): Boolean; stdcall;
    function Login(const aUser: string; const aPassword: string; out aSessionID: string): Boolean; stdcall;
    function Logout(const aSessionID: string): Boolean; stdcall;
  end;

implementation

uses SysUtils
   , KRK.Win32.Rtl.Common.StringUtils;

{ TAuthenticator }

function TAuthenticator.CreateSessionID: String;
begin
  { Poderia ser qualquer identificador único, mas optei por usar um simples GUID }
  Result := GetStringGUID;
end;

function TAuthenticator.GetSessionByID(const aSessionID: String; out aSession: TSessionItem): Boolean;
begin
  CS.Enter;
  try
    aSession := SessionsFile.Sessions[aSessionID];
    Result := Assigned(aSession);
  finally
    CS.Leave;
  end;
end;

function TAuthenticator.GetSessionData(const aSessionID: String): String;
var
  SessionItem: TSessionItem;
begin
  CS.Enter;
  try
    Result := '';

    { Obtém uma sessão a partir de seu ID e se esta sessão existir, retorna seus
    dados. O formato dos dados pode ser qualquer um. Até mesmo um objeto DFM em
    forma textual. XML e JSON podem ser usados também }
    if GetSessionByID(aSessionID,SessionItem) then
      Result := SessionItem.SessionData;
  finally
    CS.Leave;
  end;
end;

function TAuthenticator.Login(const aUser, aPassword: string; out aSessionID: string): Boolean;
begin
  CS.Enter;
  try
    { Here you would check for the validity of the User/Password pair
    The implementation below is just a simple substitute of a better
    mechanism }
    Result := (CompareText(aUser,'sarcopenia') = 0) and (aPassword = '123');

    if Result then
    begin
//      if Assigned(SessionsFile.Sessions.ItemByUser[aUser]) then
//        raise Exception.Create('O usuário "' + aUser + '" já está logado no sistema. Logins múltiplos para o mesmo usuário não são permitidos');

      { Caso cheque neste ponto o login é permitido e já foi realizado. Devemos
      criar a sessão }
      aSessionID := CreateSessionID;
      with SessionsFile.Sessions.Add do
      begin
        SessionID   := aSessionID;
        SessionData := '{"User":"' + aUser + '","Password":"' + aPassword + '"}';
        SessionLastModified := Now;
      end;
      SessionsFile.Save;
    end;
  finally
    CS.Leave;
  end;
end;

function TAuthenticator.Logout(const aSessionID: string): Boolean;
var
  SessionItem: TSessionItem;
begin
  CS.Enter;
  try
    { Localizando a sessão pelo seu ID }
    Result := GetSessionByID(aSessionID,SessionItem);

    { Se encontrou, então remove }
    if Result then
    begin
      SessionsFile.Sessions.Delete(SessionItem.Index);
      SessionsFile.Save;
    end;
  finally
    CS.Leave;
  end;
end;

function TAuthenticator.SessionExists(const aSessionID: String): Boolean;
begin
  CS.Enter;
  try
    Result := Assigned(SessionsFile.Sessions[aSessionID]);
  finally
    CS.Leave;
  end;
end;

function TAuthenticator.SetSessionData(const aSessionID, aData: String): Boolean;
var
  SessionItem: TSessionItem;
begin
  CS.Enter;
  try
    { Obtém uma sessão a partir de seu ID }
    Result := GetSessionByID(aSessionID,SessionItem);

    { Se a sessão existir, altera seus dados e salva os arquivos }
    if Result then
    begin
      SessionItem.SessionData := aData;
      SessionItem.SessionLastModified := Now;
      SessionsFile.Save;
    end;
  finally
    CS.Leave;
  end;
end;

initialization
  InvRegistry.RegisterInvokableClass(TAuthenticator);

end.


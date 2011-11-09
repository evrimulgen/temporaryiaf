unit UAuthenticatorImpl;

interface

uses InvokeRegistry
   , Types
   , XSBuiltIns
   , UAuthenticatorIntf
   , Classes
   , SyncObjs
   , KRK.Win32.Rtl.Common.Classes;

type
  TSessionItem = class(TCollectionItem)
  private
    FSessionID: String;
    FSessionData: String;
    FSessionLastModified: TDateTime;
  published
    property SessionID: String read FSessionID write FSessionID;
    property SessionData: String read FSessionData write FSessionData;
    property SessionLastModified: TDateTime read FSessionLastModified write FSessionLastModified;
  end;

  TSessionsCollection = class(TCollection)
  private
    function GetSessionItemByIndex(aIndex: Integer): TSessionItem;
    function GetSessionItemBySessionId(aID: String): TSessionItem;
  public
    function Add: TSessionItem;
    property ItemByIndex[aIndex: Integer]: TSessionItem read GetSessionItemByIndex;
    property ItemBySessionID[aSessionID: String]: TSessionItem read GetSessionItemBySessionId; default;
  end;

  TSessionsFile = class(TOBjectFile)
  private
    FFileName: String;
    FSessions: TSessionsCollection;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    procedure Save;
  published
    property Sessions: TSessionsCollection read FSessions write FSessions;
  end;

  TAuthenticator = class(TInvokableClass, IAuthenticator)
  private
    function GetSessionByID(const aSessionID: String; out aSession: TSessionItem): Boolean;
    function CreateSessionID: String;
  public
    function SetSessionData(const aSessionID: String; const aData: String): Boolean; stdcall;
    function GetSessionData(const aSessionID: String): String; stdcall;
    function SessionExists(const aSessionID: String): Boolean; stdcall;
    function Login(const aUser: String; const aPassword: String; out aSessionID: String): Boolean; stdcall;
    function Logout(const aSessionID: String): Boolean; stdcall;
  end;


var
  SessionsFile: TSessionsFile;
  CS: TCriticalSection;

implementation

uses SysUtils
   , Windows
   , KRK.Win32.Rtl.Common.StringUtils;

{ TAuthenticator }

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

function TAuthenticator.SetSessionData(const aSessionID, aData: String): Boolean;
var
  SessionItem: TSessionItem;
begin
  CS.Enter;
  try
    { Obt�m uma sess�o a partir de seu ID }
    Result := GetSessionByID(aSessionID,SessionItem);

    { Se a sess�o existir, altera seus dados e salva os arquivos }
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

function TAuthenticator.GetSessionData(const aSessionID: String): String;
var
  SessionItem: TSessionItem;
begin
  CS.Enter;
  try
    Result := '';

    { Obt�m uma sess�o a partir de seu ID e se esta sess�o existir, retorna seus
    dados }
    if GetSessionByID(aSessionID,SessionItem) then
      Result := SessionItem.SessionData;
  finally
    CS.Leave;
  end;
end;

{ Verifica se a Sess�o � v�lida procurando na cole��o de sess�es uma cujo ID �
representado por aSessionID }
function TAuthenticator.SessionExists(const aSessionID: String): Boolean;
begin
  CS.Enter;
  try
    Result := Assigned(SessionsFile.Sessions[aSessionID]);
  finally
    CS.Leave;
  end;
end;

function TAuthenticator.CreateSessionID: String;
begin
  Result := GetStringGUID;
//  Result := StringReplace(Result,'{','',[rfReplaceAll]);
//  Result := StringReplace(Result,'-','',[rfReplaceAll]);
//  Result := StringReplace(Result,'}','',[rfReplaceAll]);
end;

function TAuthenticator.Login(const aUser, aPassword: String; out aSessionID: String): Boolean;
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
//        raise Exception.Create('O usu�rio "' + aUser + '" j� est� logado no sistema. Logins m�ltiplos para o mesmo usu�rio n�o s�o permitidos');

      { Caso cheque neste ponto o login � permitido e j� foi realizado. Devemos
      criar a sess�o }
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

function TAuthenticator.Logout(const aSessionID: String): Boolean;
var
  SessionItem: TSessionItem;
begin
  CS.Enter;
  try
    { Localizando a sess�o pelo seu ID }
    Result := GetSessionByID(aSessionID,SessionItem);

    { Se encontrou, ent�o remove }
    if Result then
    begin
      SessionsFile.Sessions.Delete(SessionItem.Index);
      SessionsFile.Save;
    end;
  finally
    CS.Leave;
  end;
end;

{ TSessions }

constructor TSessionsFile.Create(aOwner: TComponent);
var
  ModuleName: PWideChar;
begin
  inherited;

  ModuleName := nil;
  try
    ModuleName := AllocMem(MAX_PATH);
    GetModuleFileName(HInstance, ModuleName, MAX_PATH);
    FFileName := ChangeFileExt(ModuleName,'.Sessions');
  finally
    FreeMem(ModuleName);
  end;

  { Instancia a cole��o de Sess�es }
  FSessions := TSessionsCollection.Create(TSessionItem);

  { Carrega o arquivo, caso ele exista }
  LoadFromBinaryFile(FFileName);
end;

destructor TSessionsFile.Destroy;
begin
  if FFileName <> '' then
    SaveToBinaryFile(FFileName);

  FSessions.Free;
  inherited;
end;

procedure TSessionsFile.Save;
begin
  if FFileName <> '' then
    SaveToBinaryFile(FFileName);
end;

{ TSessionsCollection }

function TSessionsCollection.Add: TSessionItem;
begin
  Result := TSessionItem(inherited Add);
end;

function TSessionsCollection.GetSessionItemBySessionId(aID: String): TSessionItem;
var
	CollectionItem: TCollectionItem;
begin
	Result := nil;

  if Count > 0 then
    for CollectionItem in Self do
      if CompareStr(TSessionItem(CollectionItem).SessionID,aID) = 0 then
      begin
        Result := TSessionItem(CollectionItem);
        Break;
      end;
end;

function TSessionsCollection.GetSessionItemByIndex(aIndex: Integer): TSessionItem;
begin
  Result := TSessionItem(inherited Items[aIndex])
end;

initialization
  CS := TCriticalSection.Create;
  SessionsFile := TSessionsFile.Create(nil);
  InvRegistry.RegisterInvokableClass(TAuthenticator);

finalization
  SessionsFile.Free;
  CS.Free;

end.


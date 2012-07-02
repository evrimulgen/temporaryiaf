unit UAuthenticatorImpl;

interface

uses InvokeRegistry
   , Types
   , XSBuiltIns
   , UAuthenticatorIntf
   , USessionsManager
   , Windows
   , Uni;

type
  TAuthenticator = class(TInvokableClass, IAuthenticator)
  private
    FUniConnection: TUniConnection;
    FUniTransaction: TUniTransaction;
    { m�todos privados n�o precisam ser protegidos dentro de se��es cr�ticas
    porque eles sempre s�o usados por outros m�todos que obrigatoriamente usam
    se��es cr�ticas }
    function GetSessionByID(const aSessionID: String; out aSession: TSessionItem): Boolean;
    function CreateSessionID: String;
  public
    constructor Create; override;
    destructor Destroy; override;
    function SetSessionData(const aSessionID, aData: String): Boolean; stdcall;
    function GetSessionData(const aSessionID: String): String; stdcall;
    function SessionExists(const aSessionID: String): Boolean; stdcall;
    function Login(const aUserName: string; const aPassword: string; out aSessionID: string): Boolean; stdcall;
    function Logout(const aSessionID: string): Boolean; stdcall;
    function ChangePassword(const aSessionID, aOldPassword, aNewPassword: String): Byte; stdcall;
  end;

implementation

uses SysUtils, KRK.Lib.Rtl.Common.StringUtils, KRK.Lib.DCPcrypt.Utilities
   , KRK.Lib.DCPcrypt.Types, UServerConfiguration, UCommonTypes
   , UExtraUtilities;

{ TAuthenticator }

{ 1: A sess�o n�o existe
  2: A senha antiga n�o confere }
function TAuthenticator.ChangePassword(const aSessionID, aOldPassword, aNewPassword: String): Byte;
const
  SQLText = 'UPDATE USUARIOS'#13#10 +
            '   SET CH_SENHA = :CH_SENHA' +
            ' WHERE SM_USUARIOS_ID = :SM_USUARIOS_ID';
var
  SessionData: TSessionData;
  SessDataStr: String;
  NewPassword: String;
begin
  Result := 0;
  SessionData := nil;

  CS.Enter;
  try
    SessionData := TSessionData.Create(nil);

    { Obt�m os dados da sess�o do usu�rio }
    SessDataStr := GetSessionData(aSessionID);

    { Se a sess�o existir, ou melhor, se os dados da sess�o existirem, continua }
    if SessDataStr <> '' then
    begin
      SessionData.FromString(SessDataStr);

      { Compara a senha da sess�o com a senha antiga, supostamente do usu�rio da
      sess�o, se as senhas forem iguais, continua criando uma transa��o e
      atualizando o registro do usu�rio identificado pela sess�o com a nova senha }
      if SessionData.ch_senha = GetStringCheckSum(aOldPassword,[haSha512]) then
        with TUniSQL.Create(nil) do
          try
            FUniConnection.StartTransaction;
            try
              SQL.Text := SQLText;
              ParamByName('SM_USUARIOS_ID').AsInteger := SessionData.sm_usuarios_id;
              NewPassword := GetStringCheckSum(aNewPassword,[haSha512]);
              ParamByName('CH_SENHA').AsString := NewPassword;
              Connection := FUniConnection;

              Execute;

              { Atualizando a senha na sess�o do usu�rio e salvando a sess�o }
              SessionData.ch_senha := NewPassword;
              SetSessionData(aSessionID,SessionData.ToString);

              FUniConnection.Commit;
            except
              FUniConnection.Rollback;
            end;
          finally
            Free;
          end
      else
        Result := 2;
    end
    else
      Result := 1
  finally
    SessionData.Free;
    CS.Leave;
  end;
end;

constructor TAuthenticator.Create;
begin
  inherited;
  FUniConnection := TUniConnection.Create(nil);
  FUniTransaction := TUniTransaction.Create(nil);
  ConfigureConnection(FUniConnection,FUniTransaction);
  FUniConnection.Connect;
end;

destructor TAuthenticator.Destroy;
begin
  FUniTransaction.Free;
  FUniConnection.Free;
  inherited;
end;

function TAuthenticator.CreateSessionID: String;
begin
  { Poderia ser qualquer identificador �nico, mas optei por usar um simples GUID }
  Result := GetStringGUID;
end;

function TAuthenticator.GetSessionByID(const aSessionID: String; out aSession: TSessionItem): Boolean;
begin
  aSession := SessionsFile.Sessions[aSessionID];
  Result := Assigned(aSession);
end;

function TAuthenticator.GetSessionData(const aSessionID: String): String;
var
  SessionItem: TSessionItem;
begin
  CS.Enter;
  try
    Result := '';

    { Obt�m uma sess�o a partir de seu ID e se esta sess�o existir, retorna seus
    dados. O formato dos dados pode ser qualquer um. At� mesmo um objeto DFM em
    forma textual. XML e JSON podem ser usados tamb�m }
    if GetSessionByID(aSessionID,SessionItem) then
      Result := SessionItem.SessionData;
  finally
    CS.Leave;
  end;
end;

function TAuthenticator.Login(const aUserName, aPassword: string; out aSessionID: string): Boolean;
const
  SQLText = 'SELECT *'#13#10 +
            '  FROM USUARIOS'#13#10 +
            ' WHERE VA_LOGIN = :VA_LOGIN'#13#10 +
            '   AND CH_SENHA = :CH_SENHA';
var
  SD: TSessionData;
begin
  aSessionID := '';
  SD := nil;

  CS.Enter;
  try
    SD := TSessionData.Create(nil);
    { Faz uma busca dentro do banco de dados para saber se o par usu�rio/senha
    existe }
    with TUniQuery.Create(nil) do
      try
        Connection := FUniConnection;
        ReadOnly := True;
        SQL.Text := SQLText;
        ParamByName('VA_LOGIN').AsString := aUserName;
        ParamByName('CH_SENHA').AsString := GetStringCheckSum(aPassword,[haSha512]);

        Open;

        Result := RecordCount = 1;

        if Result then
        begin
          SD.sm_usuarios_id  := FieldByName('sm_usuarios_id').AsInteger;
          SD.va_nome         := FieldByName('va_nome').AsString;
          SD.va_login        := FieldByName('va_login').AsString;
          SD.ch_senha        := FieldByName('ch_senha').AsString;
          SD.va_email        := FieldByName('va_email').AsString;
          SD.bo_superusuario := FieldByName('bo_superusuario').AsBoolean;
        end;
      finally
        Free;
      end;

    { Se o usu�rio/senha for v�lido, continua }
    if Result then
    begin
      { TODO -oCBFF : Ao ativar o IF abaixo, seria interessante remover a sess�o do outro usu�rio impedindo-o de realizar qualquer opera��o subsequente }
//      if Assigned(SessionsFile.Sessions.ItemByUser[aUser]) then
//        raise Exception.Create('O usu�rio "' + aUser + '" j� est� logado no sistema. Logins m�ltiplos para o mesmo usu�rio n�o s�o permitidos');

      { Caso chegue neste ponto o login � permitido e j� foi realizado. Devemos
      criar a sess�o }
      aSessionID := CreateSessionID;
      with SessionsFile.Sessions.Add do
      begin
        SessionID   := aSessionID;
        SessionData := SD.ToString;
        SessionLastModified := Now;
      end;
      SessionsFile.SaveBinary;
    end;
  finally
    SD.Free;
    CS.Leave;
  end;
end;

function TAuthenticator.Logout(const aSessionID: string): Boolean;
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
      SessionsFile.SaveBinary;
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
    { Obt�m uma sess�o a partir de seu ID }
    Result := GetSessionByID(aSessionID,SessionItem);

    { Se a sess�o existir, altera seus dados e salva os arquivos }
    if Result then
    begin
      SessionItem.SessionData := aData;
      SessionItem.SessionLastModified := Now;
      SessionsFile.SaveBinary;
    end;
  finally
    CS.Leave;
  end;
end;

initialization
  InvRegistry.RegisterInvokableClass(TAuthenticator);

end.


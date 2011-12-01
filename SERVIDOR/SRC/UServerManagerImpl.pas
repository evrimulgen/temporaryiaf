unit UServerManagerImpl;

interface

uses InvokeRegistry
   , Types
   , XSBuiltIns
   , Classes
   , UServerManagerIntf
   , ZDbcIntfs;

type
  TServerManager = class(TInvokableClass, IServerManager)
  public
    procedure SetCheckSessions(const aPassword: string; const aValue: Boolean); stdcall;
    function GetCheckSessions: Boolean; stdcall;

    procedure SetDBHostName(const aPassword: string; const aValue: String); stdcall;
    procedure SetDBPortNumb(const aPassword: string; const aValue: Word); stdcall;
    procedure SetDBDatabase(const aPassword: string; const aValue: String); stdcall;
    procedure SetDBUser(const aPassword: string; const aValue: String); stdcall;
    procedure SetDBPassword(const aPassword: string; const aValue: String); stdcall;
    procedure SetDBProtocol(const aPassword: string; const aValue: String); stdcall;
    procedure SetDBTransactIsolationLevel(const aPassword: string; const aValue: TZTransactIsolationLevel); stdcall;
  end;

implementation

uses SysUtils
   , UServerConfiguration;

{ TServerManager }

const
  MASTER_PASSWORD = 'sarcopenia';

function TServerManager.GetCheckSessions: Boolean;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.CheckSessions;
  finally
    CS.Leave;
  end;
end;

procedure TServerManager.SetCheckSessions(const aPassword: string; const aValue: Boolean);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.CheckSessions := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;
end;

procedure TServerManager.SetDBDatabase(const aPassword, aValue: String);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBDatabase := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;
end;

procedure TServerManager.SetDBHostName(const aPassword, aValue: String);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBHostName := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;
end;

procedure TServerManager.SetDBPassword(const aPassword, aValue: String);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBPassword := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;
end;

procedure TServerManager.SetDBPortNumb(const aPassword: string; const aValue: Word);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBPortNumb := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;
end;

procedure TServerManager.SetDBProtocol(const aPassword, aValue: String);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBProtocol := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;

end;

procedure TServerManager.SetDBTransactIsolationLevel(const aPassword: string; const aValue: TZTransactIsolationLevel);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBTransactIsolationLevel := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;
end;

procedure TServerManager.SetDBUser(const aPassword, aValue: String);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBUserName := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;
end;

initialization
  InvRegistry.RegisterInvokableClass(TServerManager);

end.

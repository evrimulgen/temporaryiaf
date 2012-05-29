unit UServerManagerImpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, Classes, UServerManagerIntf, CRAccess
   , DASQLMonitor;

type
  TServerManager = class(TInvokableClass, IServerManager)
  public
    procedure SetCheckSessions(const aPassword: string; const aValue: Boolean); stdcall;
    function GetCheckSessions: Boolean; stdcall;

    procedure SetUseCompression(const aPassword: string; const aValue: Boolean); stdcall;
    function GetUseCompression: Boolean; stdcall;

    procedure SetUseDBMonitor(const aPassword: string; const aValue: Boolean); stdcall;
    function GetUseDBMonitor: Boolean; stdcall;

    function GetDBMonitorHost: string; stdcall;
    procedure SetDBMonitorHost(const aPassword: string; const aValue: string); stdcall;

    procedure SetDBMonitorPort(const aPassword: string; const aValue: Word); stdcall;
    function GetDBMonitorPort: Word; stdcall;

    procedure SetDBMonitorReconnectTimeout(const aPassword: string; const aValue: Word); stdcall;
    function GetDBMonitorReconnectTimeout: Word; stdcall;

    procedure SetDBMonitorSendTimeout(const aPassword: string; const aValue: Word); stdcall;
    function GetDBMonitorSendTimeout: Word; stdcall;

    procedure SetDBMonitorTraceFlags(const aPassword: string; const aValue: Word); stdcall;
    function GetDBMonitorTraceFlags: Word; stdcall;

    procedure SetDBHostName(const aPassword: string; const aValue: String); stdcall;
    function GetDBHostName: string; stdcall;

    procedure SetDBPortNumb(const aPassword: string; const aValue: Word); stdcall;
    function GetDBPortNumb: Word; stdcall;

    procedure SetDBDatabase(const aPassword: string; const aValue: String); stdcall;
    function GetDBDatabase: string; stdcall;

    procedure SetDBUser(const aPassword: string; const aValue: String); stdcall;
    procedure SetDBPassword(const aPassword: string; const aValue: String); stdcall;

    procedure SetDBProvider(const aPassword: string; const aValue: String); stdcall;
    function GetDBProvider: string; stdcall;

    procedure SetDBTransactIsolationLevel(const aPassword: string; const aValue: TCRIsolationLevel); stdcall;
    function GetDBTransactIsolationLevel: TCRIsolationLevel; stdcall;
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

function TServerManager.GetDBDatabase: string;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.DBDatabase;
  finally
    CS.Leave;
  end;
end;

function TServerManager.GetDBHostName: string;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.DBHostName;
  finally
    CS.Leave;
  end;
end;

function TServerManager.GetDBMonitorHost: string;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.DBMonitorHost;
  finally
    CS.Leave;
  end;
end;

function TServerManager.GetDBMonitorPort: Word;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.DBMonitorPort;
  finally
    CS.Leave;
  end;
end;

function TServerManager.GetDBMonitorReconnectTimeout: Word;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.DBMonitorReconnectTimeout;
  finally
    CS.Leave;
  end;
end;

function TServerManager.GetDBMonitorSendTimeout: Word;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.DBMonitorSendTimeout;
  finally
    CS.Leave;
  end;
end;

function TServerManager.GetDBMonitorTraceFlags: Word;
begin
  CS.Enter;
  try
    Result := Word(ServerConfiguration.DBMonitorTraceFlags);
  finally
    CS.Leave;
  end;
end;

function TServerManager.GetDBPortNumb: Word;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.DBPortNumb;
  finally
    CS.Leave;
  end;
end;

function TServerManager.GetDBProvider: string;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.DBProvider;
  finally
    CS.Leave;
  end;
end;

function TServerManager.GetDBTransactIsolationLevel: TCRIsolationLevel;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.DBTransactIsolationLevel;
  finally
    CS.Leave;
  end;
end;

function TServerManager.GetUseCompression: Boolean;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.UseCompression;
  finally
    CS.Leave;
  end;
end;

function TServerManager.GetUseDBMonitor: Boolean;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.UseDBMonitor;
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

procedure TServerManager.SetUseCompression(const aPassword: string; const aValue: Boolean);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.UseCompression := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;
end;

procedure TServerManager.SetUseDBMonitor(const aPassword: string; const aValue: Boolean);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.UseDBMonitor := aValue;
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

procedure TServerManager.SetDBMonitorHost(const aPassword, aValue: string);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBMonitorHost := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;
end;

procedure TServerManager.SetDBMonitorPort(const aPassword: string; const aValue: Word);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBMonitorPort := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;
end;

procedure TServerManager.SetDBMonitorReconnectTimeout(const aPassword: string; const aValue: Word);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBMonitorReconnectTimeout := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;
end;

procedure TServerManager.SetDBMonitorSendTimeout(const aPassword: string; const aValue: Word);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBMonitorSendTimeout := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;
end;

procedure TServerManager.SetDBMonitorTraceFlags(const aPassword: string; const aValue: Word);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBMonitorTraceFlags := aValue;
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

procedure TServerManager.SetDBProvider(const aPassword, aValue: String);
begin
  CS.Enter;
  try
    if aPassword = MASTER_PASSWORD then
    begin
      ServerConfiguration.DBProvider := aValue;
      ServerConfiguration.SaveText;
    end
    else
      raise Exception.Create('Senha incorreta!');
  finally
    CS.Leave;
  end;

end;

procedure TServerManager.SetDBTransactIsolationLevel(const aPassword: string; const aValue: TCRIsolationLevel);
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

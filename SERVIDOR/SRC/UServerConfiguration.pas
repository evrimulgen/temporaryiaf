unit UServerConfiguration;


interface

uses Classes, SyncObjs, KRK.Lib.Rtl.Common.Classes, CRAccess, DASQLMonitor;

type
  TServerConfiguration = class(TObjectFile)
  private
    FFileName: String;
    FCheckSessions: Boolean;
    FUseCompression: Boolean;
    FUseDBMonitor: Boolean;
    FDBMonitorSendTimeout: Word;
    FDBMonitorPort: Word;
    FDBMonitorHost: String;
    FDBMonitorReconnectTimeout: Word;
    FDBMonitorTraceFlags: TDATraceFlags;

    FDBDatabase: String;
    FDBHostName: String;
    FDBPassword: String;
    FDBUserName: String;
    FDBPortNumb: Word;
    FDBProvider: String;
    FDBTransactIsolationLevel: TCRIsolationLevel;
  public
    constructor Create(aOwner: TComponent; aAutoSaveMode: TAutoSaveMode = asmNone); override;
    destructor Destroy; override;
  published
    property CheckSessions: Boolean read FCheckSessions write FCheckSessions default True;
    property UseCompression: Boolean read FUseCompression write FUseCompression default True;

    property UseDBMonitor: Boolean read FUseDBMonitor write FUseDBMonitor default False;
    property DBMonitorHost: String read FDBMonitorHost write FDBMonitorHost;
    property DBMonitorPort: Word read FDBMonitorPort write FDBMonitorPort default 1000;
    property DBMonitorReconnectTimeout: Word read FDBMonitorReconnectTimeout write FDBMonitorReconnectTimeout default 5000;
    property DBMonitorSendTimeout: Word read FDBMonitorSendTimeout write FDBMonitorSendTimeout default 1000;
    property DBMonitorTraceFlags: TDATraceFlags read FDBMonitorTraceFlags write FDBMonitorTraceFlags default [tfQPrepare, tfQExecute, tfError, tfConnect, tfTransact, tfParams, tfMisc];

    property DBDatabase: String read FDBDatabase write FDBDatabase;
    property DBHostName: String read FDBHostName write FDBHostName;
    property DBPassword: String read FDBPassword write FDBPassword;
    property DBUserName: String read FDBUserName write FDBUserName;
    property DBPortNumb: Word read FDBPortNumb write FDBPortNumb;
    property DBProvider: String read FDBProvider write FDBProvider;
    property DBTransactIsolationLevel: TCRIsolationLevel read FDBTransactIsolationLevel write FDBTransactIsolationLevel;
  end;

var
  ServerConfiguration: TServerConfiguration;
  CS: TCriticalSection;

implementation

uses Windows, SysUtils, KRK.Lib.Rtl.Common.FileUtils;

{ TServerConfiguration }

constructor TServerConfiguration.Create(aOwner: TComponent; aAutoSaveMode: TAutoSaveMode = asmNone);
var
  ModuleName: PWideChar;
begin
  inherited;

  ModuleName := nil;
  try
    ModuleName := AllocMem(MAX_PATH);
    GetModuleFileName(HInstance, ModuleName, MAX_PATH);
    FFileName := ChangeFileExt(ModuleName,'.Configs');
  finally
    FreeMem(ModuleName);
  end;

  FCheckSessions  := True;
  FUseCompression := True;

  FUseDBMonitor              := False;
  FDBMonitorSendTimeout      := 1000;
  FDBMonitorPort             := 1000;
  FDBMonitorHost             := '';
  FDBMonitorReconnectTimeout := 5000;
  FDBMonitorTraceFlags       := [tfQPrepare, tfQExecute, tfError, tfConnect, tfTransact, tfParams, tfMisc];

  FDBDatabase               := '';
  FDBHostName               := '';
  FDBPassword               := '';
  FDBUserName               := '';
  FDBPortNumb               := 0;
  FDBProvider               := '';
  FDBTransactIsolationLevel := ilReadCommitted;

  { Carrega o arquivo, caso ele exista }
  LoadFromTextFile(FFileName);
end;

destructor TServerConfiguration.Destroy;
begin

  inherited;
end;

initialization
  CS := TCriticalSection.Create;
  ServerConfiguration := TServerConfiguration.Create(nil,asmText);

finalization
  ServerConfiguration.Free;
  CS.Free;

end.

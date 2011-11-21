unit UServerConfiguration;


interface

uses Classes
   , SyncObjs
   , KRK.Win32.Rtl.Common.Classes
   , ZDbcIntfs;

type
  TServerConfiguration = class(TObjectFile)
  private
    FFileName: String;
    FCheckSessions: Boolean;

    FDBDatabase: String;
    FDBHostName: String;
    FDBPassword: String;
    FDBUserName: String;
    FDBPortNumb: Word;
    FDBProtocol: String;
    FDBTransactIsolationLevel: TZTransactIsolationLevel;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    procedure Save;
  published
    property CheckSessions: Boolean read FCheckSessions write FCheckSessions;
    property DBDatabase: String read FDBDatabase write FDBDatabase;
    property DBHostName: String read FDBHostName write FDBHostName;
    property DBPassword: String read FDBPassword write FDBPassword;
    property DBUserName: String read FDBUserName write FDBUserName;
    property DBPortNumb: Word read FDBPortNumb write FDBPortNumb;
    property DBProtocol: String read FDBProtocol write FDBProtocol;
    property DBTransactIsolationLevel: TZTransactIsolationLevel read FDBTransactIsolationLevel write FDBTransactIsolationLevel;
  end;

var
  ServerConfiguration: TServerConfiguration;
  CS: TCriticalSection;

implementation

uses Windows
   , SysUtils;

{ TServerConfiguration }

constructor TServerConfiguration.Create(aOwner: TComponent);
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

  FDBDatabase := '';
  FDBHostName     := '';
  FDBPassword     := '';
  FDBUserName     := '';
  FDBPortNumb     := 0;

  { Carrega o arquivo, caso ele exista }
  LoadFromBinaryFile(FFileName);
end;

destructor TServerConfiguration.Destroy;
begin
  Save;
  inherited;
end;

procedure TServerConfiguration.Save;
begin
  if FFileName <> '' then
    SaveToBinaryFile(FFileName);
end;

initialization
  CS := TCriticalSection.Create;
  ServerConfiguration := TServerConfiguration.Create(nil);

finalization
  ServerConfiguration.Free;
  CS.Free;

end.

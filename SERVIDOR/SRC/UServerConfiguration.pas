unit UServerConfiguration;


interface

uses Classes
   , SyncObjs
   , KRK.Lib.Rtl.Common.Classes
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
    constructor Create(aOwner: TComponent; aAutoSaveMode: TAutoSaveMode = asmNone); override;
    destructor Destroy; override;
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

  FDBDatabase               := '';
  FDBHostName               := '';
  FDBPassword               := '';
  FDBUserName               := '';
  FDBPortNumb               := 0;
  FDBTransactIsolationLevel := tiReadCommitted;

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

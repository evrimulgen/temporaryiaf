unit USessionsManager;

interface

uses Classes
   , KRK.Lib.Rtl.Common.Classes;

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
    constructor Create(aOwner: TComponent; aAutoSaveMode: TAutoSaveMode = asmNone); override;
    destructor Destroy; override;
  published
    property Sessions: TSessionsCollection read FSessions write FSessions;
  end;

var
  SessionsFile: TSessionsFile;

implementation

uses SysUtils
   , Windows;

{ TSessionsCollection }

function TSessionsCollection.Add: TSessionItem;
begin
  Result := TSessionItem(inherited Add);
end;

function TSessionsCollection.GetSessionItemByIndex(aIndex: Integer): TSessionItem;
begin
  Result := TSessionItem(inherited Items[aIndex])
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

{ TSessionsFile }

constructor TSessionsFile.Create(aOwner: TComponent; aAutoSaveMode: TAutoSaveMode = asmNone);
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
  FSessions.Free;
  inherited;
end;

initialization
  SessionsFile := TSessionsFile.Create(nil,asmBinary);

finalization
  SessionsFile.Free;

end.

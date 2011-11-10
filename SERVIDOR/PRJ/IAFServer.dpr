library IAFServer;

uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIApp,
  ISAPIThreadPool,
  UWEBMWebService in '..\SRC\UWEBMWebService.pas' {WEBMWebService: TWebModule},
  UKRSDIAF in '..\SRC\UKRSDIAF.pas' {KRSDIAF: TSoapDataModule},
  URNUsuarios in '..\SRC\URNUsuarios.pas',
  USessionsManager in '..\SRC\USessionsManager.pas';

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  CoInitFlags := COINIT_MULTITHREADED;
  Application.Initialize;
  Application.WebModuleClass := WebModuleClass;
  Application.Run;
end.

//    with TStringList.Create do
//    try
//      Text := FFileName;
//      SaveToFile('C:\carlos.txt');
//    finally
//      Free;
//    end;


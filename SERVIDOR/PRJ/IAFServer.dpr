library IAFServer;

uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIApp,
  ISAPIThreadPool,
  UWEBMWebService in '..\SRC\UWEBMWebService.pas' {WEBMWebService: TWebModule},
  UKRSDPrincipal in '..\SRC\UKRSDPrincipal.pas' {KRSDPrincipal: TSoapDataModule},
  USessionsManager in '..\SRC\USessionsManager.pas',
  UAuthenticatorImpl in '..\SRC\UAuthenticatorImpl.pas',
  UAuthenticatorIntf in '..\SRC\UAuthenticatorIntf.pas',
  UKRDAUsuarios in '..\SRC\UKRDAUsuarios.pas' {KRDAUsuarios: TKRKDataModule};

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


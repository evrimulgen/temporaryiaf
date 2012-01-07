library IAFServer;

uses
  MidasLib in '..\..\COMUM\SRC\MidasLib.pas',
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIApp,
  ISAPIThreadPool,
  UWEBMWebService in '..\SRC\UWEBMWebService.pas' {WEBMWebService: TWebModule},
  USODMPrincipal in '..\SRC\USODMPrincipal.pas' {SODMPrincipal: TSoapDataModule},
  USessionsManager in '..\SRC\USessionsManager.pas',
  UAuthenticatorImpl in '..\SRC\UAuthenticatorImpl.pas',
  UAuthenticatorIntf in '..\SRC\UAuthenticatorIntf.pas',
  UKRDMBasico in '..\SRC\UKRDMBasico.pas' {KRDMBasico: TKRKDataModule},
  UKRDMUsuarios in '..\SRC\UKRDMUsuarios.pas' {KRDMUsuarios: TKRKDataModule},
  UTiposComuns in '..\..\COMUM\SRC\UTiposComuns.pas',
  UServerManagerImpl in '..\SRC\UServerManagerImpl.pas',
  UServerManagerIntf in '..\SRC\UServerManagerIntf.pas',
  UServerConfiguration in '..\SRC\UServerConfiguration.pas',
  UKRDMEntidadesDoSistema in '..\SRC\UKRDMEntidadesDoSistema.pas' {KRDMEntidadesDoSistema: TKRKDataModule},
  UExtraMethodsImpl in '..\SRC\UExtraMethodsImpl.pas',
  UExtraMethodsIntf in '..\SRC\UExtraMethodsIntf.pas',
  UExtraUtilities in '..\SRC\UExtraUtilities.pas',
  UKRDMGrupos in '..\SRC\UKRDMGrupos.pas' {KRDMGrupos: TKRKDataModule};

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


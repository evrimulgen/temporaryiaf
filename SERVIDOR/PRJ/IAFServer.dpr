library IAFServer;

uses
  FastMM4 in '..\..\COMUM\SRC\FastMM4.pas',
  FastMM4Messages in '..\..\COMUM\SRC\FastMM4Messages.pas',
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIApp,
  ISAPIThreadPool,
  KRK.Lib.Db.Midas.MidasLib,
  UServerConfiguration in '..\SRC\UServerConfiguration.pas',
  UWEBMWebService in '..\SRC\UWEBMWebService.pas' {WEBMWebService: TWebModule},
  USODMPrincipal in '..\SRC\USODMPrincipal.pas' {SODMPrincipal: TSoapDataModule},
  USessionsManager in '..\SRC\USessionsManager.pas',
  UAuthenticatorImpl in '..\SRC\UAuthenticatorImpl.pas',
  UAuthenticatorIntf in '..\SRC\UAuthenticatorIntf.pas',
  UKRDMBasico in '..\SRC\UKRDMBasico.pas' {KRDMBasico: TKRKDataModule},
  UKRDMUsuarios in '..\SRC\UKRDMUsuarios.pas' {KRDMUsuarios: TKRKDataModule},
  UCommonTypes in '..\..\COMUM\SRC\UCommonTypes.pas',
  UServerManagerImpl in '..\SRC\UServerManagerImpl.pas',
  UServerManagerIntf in '..\SRC\UServerManagerIntf.pas',
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

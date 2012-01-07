program IAFClient;

uses
  Forms,
  MidasLib in '..\..\COMUM\SRC\MidasLib.pas',
  UFORMPrincipal in '..\SRC\UFORMPrincipal.pas' {FORMPrincipal},
  UDAMOPrincipal in '..\SRC\UDAMOPrincipal.pas' {DAMOPrincipal: TDataModule},
  UFORMLogin in '..\SRC\UFORMLogin.pas' {FORMLogin},
  UFORMSplash in '..\SRC\UFORMSplash.pas' {FORMSplash},
  UReconcileErrorDialog in '..\SRC\UReconcileErrorDialog.pas' {ReconcileErrorForm},
  UAuthenticator in '..\SRC\UAuthenticator.pas',
  UTiposComuns in '..\..\COMUM\SRC\UTiposComuns.pas',
  UServerManager in '..\SRC\UServerManager.pas',
  UKRDMSegurancaEPermissoes in '..\SRC\UKRDMSegurancaEPermissoes.pas' {KRDMSegurancaEPermissoes: TKRKDataModule},
  UKRFMDBAwareBasico in '..\SRC\UKRFMDBAwareBasico.pas' {KRFMDBAwareBasico: TKRKForm},
  UKRFMSegurancaEPermissoes in '..\SRC\UKRFMSegurancaEPermissoes.pas' {KRFMSegurancaEPermissoes: TKRKForm},
  UKRDMBasico in '..\SRC\UKRDMBasico.pas' {KRDMBasico: TKRKDataModule},
  UConfiguracoes in '..\SRC\UConfiguracoes.pas',
  UExtraMethods in '..\SRC\UExtraMethods.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.Title := 'IAF - Indicadores de Aptidão Física';
  Application.CreateForm(TDAMOPrincipal, DAMOPrincipal);
  Application.Run;
end.

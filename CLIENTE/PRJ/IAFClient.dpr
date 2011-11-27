program IAFClient;

uses
  Forms,
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
  UKRDMBasico in '..\SRC\UKRDMBasico.pas' {KRDMBasico: TKRKDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.Title := 'IAF - Indicadores de Aptid�o F�sica';
  Application.CreateForm(TDAMOPrincipal, DAMOPrincipal);
  Application.Run;
end.

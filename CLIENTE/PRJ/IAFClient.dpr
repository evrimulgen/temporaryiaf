program IAFClient;

uses
  Forms,
  UFORMPrincipal in '..\SRC\UFORMPrincipal.pas' {FORMPrincipal},
  UDAMOPrincipal in '..\SRC\UDAMOPrincipal.pas' {DAMOPrincipal: TDataModule},
  UFORMLogin in '..\SRC\UFORMLogin.pas' {FORMLogin},
  UFORMSplash in '..\SRC\UFORMSplash.pas' {FORMSplash},
  UFORMSegurancaEPermissoes in '..\SRC\UFORMSegurancaEPermissoes.pas' {FORMSegurancaEPermissoes},
  UReconcileErrorDialog in '..\SRC\UReconcileErrorDialog.pas' {ReconcileErrorForm},
  UAuthenticator in '..\SRC\UAuthenticator.pas',
  UTiposComuns in '..\..\COMUM\SRC\UTiposComuns.pas',
  UServerManager in '..\SRC\UServerManager.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.Title := 'IAF - Indicadores de Aptidão Física';
  Application.CreateForm(TDAMOPrincipal, DAMOPrincipal);
  Application.Run;
end.

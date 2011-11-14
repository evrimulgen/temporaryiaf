program IAFClient;

uses
  Forms,
  UFORMPrincipal in '..\SRC\UFORMPrincipal.pas' {FORMPrincipal},
  UDAMOPrincipal in '..\SRC\UDAMOPrincipal.pas' {DAMOPrincipal: TDataModule},
  UAuthenticator in '..\SRC\UAuthenticator.pas',
  UFORMLogin in '..\SRC\UFORMLogin.pas' {FORMLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'IAF - Indicadores de Aptidão Física';
  TFORMPrincipal.ShowMe;
  Application.Run;
end.

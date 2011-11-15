program IAFClient;

uses
  Forms,
  UFORMPrincipal in '..\SRC\UFORMPrincipal.pas' {FORMPrincipal},
  UDAMOPrincipal in '..\SRC\UDAMOPrincipal.pas' {DAMOPrincipal: TDataModule},
  UAuthenticator in '..\SRC\UAuthenticator.pas',
  UFORMLogin in '..\SRC\UFORMLogin.pas' {FORMLogin},
  UFORMSplash in '..\SRC\UFORMSplash.pas' {FORMSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.Title := 'IAF - Indicadores de Aptidão Física';
  Application.CreateForm(TDAMOPrincipal,DAMOPrincipal);
  Application.Run;
end.

program IAF;

uses
  Forms,
  UFORMPrincipal in '..\SRC\UFORMPrincipal.pas' {FORMPrincipal},
  UDAMOPrincipal in '..\SRC\UDAMOPrincipal.pas' {DAMOPrincipal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'IAF - Indicadores de Aptidão Física';
  Application.CreateForm(TDAMOPrincipal, DAMOPrincipal);
  Application.Run;
end.

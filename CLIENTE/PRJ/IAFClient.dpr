program IAFClient;

uses
  FastMM4 in '..\..\COMUM\SRC\FastMM4.pas',
  FastMM4Messages in '..\..\COMUM\SRC\FastMM4Messages.pas',
  Forms,
  KRK.Lib.Db.Midas.MidasLib,
  UFORMPrincipal in '..\SRC\UFORMPrincipal.pas' {FORMPrincipal},
  UDAMOPrincipal in '..\SRC\UDAMOPrincipal.pas' {DAMOPrincipal: TDataModule},
  UFORMLogin in '..\SRC\UFORMLogin.pas' {FORMLogin},
  UFORMSplash in '..\SRC\UFORMSplash.pas' {FORMSplash},
  UReconcileErrorDialog in '..\SRC\UReconcileErrorDialog.pas' {ReconcileErrorForm},
  UAuthenticator in '..\SRC\UAuthenticator.pas',
  UCommonTypes in '..\..\COMUM\SRC\UCommonTypes.pas',
  UServerManager in '..\SRC\UServerManager.pas',
  UKRDMSegurancaEPermissoes in '..\SRC\UKRDMSegurancaEPermissoes.pas' {KRDMSegurancaEPermissoes: TKRKDataModule},
  UKRFMDBAwareBasico in '..\SRC\UKRFMDBAwareBasico.pas' {KRFMDBAwareBasico: TKRKForm},
  UKRFMSegurancaEPermissoes in '..\SRC\UKRFMSegurancaEPermissoes.pas' {KRFMSegurancaEPermissoes: TKRKForm},
  UKRDMBasico in '..\SRC\UKRDMBasico.pas' {KRDMBasico: TKRKDataModule},
  UConfiguracoes in '..\SRC\UConfiguracoes.pas',
  UExtraMethods in '..\SRC\UExtraMethods.pas',
  UFORMTrocarSenha in '..\SRC\UFORMTrocarSenha.pas' {FORMTrocarSenha},
  UKRFMConfiguracoes in '..\SRC\UKRFMConfiguracoes.pas' {KRFMConfiguracoes: TKRKForm},
  UKRDMConfiguracoes in '..\SRC\UKRDMConfiguracoes.pas' {KRDMConfiguracoes: TKRKDataModule},
  UKRDMRelatorio in '..\SRC\UKRDMRelatorio.pas' {KRDMRelatorio: TKRKDataModule},
  UKRFMRelatorio in '..\SRC\UKRFMRelatorio.pas' {KRFMRelatorio: TKRKForm},
  UKRFMDialogBasico in '..\SRC\UKRFMDialogBasico.pas' {KRFMDialogBasico: TKRKForm},
  UKRFMDialogSelecao in '..\SRC\UKRFMDialogSelecao.pas' {KRFMDialogSelecao: TKRKForm},
  UKRFMSelecionarGrupo in '..\SRC\UKRFMSelecionarGrupo.pas' {KRFMSelecionarGrupo: TKRKForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.Title := 'IAF - Indicadores de Aptidão Física';
  Application.CreateForm(TDAMOPrincipal, DAMOPrincipal);
  Application.Run;
end.

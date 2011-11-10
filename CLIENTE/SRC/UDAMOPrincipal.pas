unit UDAMOPrincipal;

interface

uses
  SysUtils, Classes, PlatformDefaultStyleActnCtrls, ActnList, ActnMan;

type
  TDAMOPrincipal = class(TDataModule)
    ACMAPrincipal: TActionManager;
    ACTNAlterarSenha: TAction;
    ACTNAjuda: TAction;
    ACTNSobre: TAction;
    Action5: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DAMOPrincipal: TDAMOPrincipal;

implementation

uses UFORMPrincipal;

{$R *.dfm}

end.

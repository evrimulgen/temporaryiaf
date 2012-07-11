unit UKRDMCBO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRDMBasico, Uni, DB, MemDS, DBAccess,
  KRK.Components.DataControls.ValidationChecks;

type
  TKRDMCBO = class(TKRDMBasico)
    UNQYCBO: TUniQuery;
    KRVCCBO: TKRKValidationChecks;
    UNQYCBOin_cbo_id: TIntegerField;
    UNQYCBOch_codigo: TWideStringField;
    UNQYCBOva_titulo: TWideStringField;
    UNQYCBOen_tipo: TWideMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses USODMPrincipal;

{$R *.dfm}

end.

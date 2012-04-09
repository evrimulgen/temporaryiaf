unit UKRDMGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, KRK.Components.DataControls.ValidationChecks, Uni,
  MemDS, DBAccess, UKRDMBasico;

type
  TKRDMGrupos = class(TKRDMBasico)
    KRVCGrupos: TKRKValidationChecks;
    DTSRGrupos: TDataSource;
    KRVCPermissoesDosGrupos: TKRKValidationChecks;
    UNQYGrupos: TUniQuery;
    UNQYGrupossm_grupos_id: TSmallintField;
    UNQYGruposva_nome: TWideStringField;
    UNQYGruposva_descricao: TWideStringField;
    UNQYPermissoesDosGrupos: TUniQuery;
    UNQYPermissoesDosGruposentidade: TWideStringField;
    UNQYPermissoesDosGrupostipo: TSmallintField;
    UNQYPermissoesDosGruposin_permissoesdosgrupos_id: TIntegerField;
    UNQYPermissoesDosGruposin_entidadesdosistema_id: TIntegerField;
    UNQYPermissoesDosGrupossm_grupos_id: TSmallintField;
    UNQYPermissoesDosGrupossm_ler: TSmallintField;
    UNQYPermissoesDosGrupossm_inserir: TSmallintField;
    UNQYPermissoesDosGrupossm_alterar: TSmallintField;
    UNQYPermissoesDosGrupossm_excluir: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses USODMPrincipal;

{$R *.dfm}

end.

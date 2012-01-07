unit UKRDMGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRDMBasico, ZAbstractDataset, ZStoredProcedure, DB,
  ZAbstractRODataset, ZDataset, KRK.Components.DataControls.ValidationChecks,
  ZSqlUpdate;

type
  TKRDMGrupos = class(TKRDMBasico)
    ZQRYGrupos: TZQuery;
    ZUSQGrupos: TZUpdateSQL;
    KRVCGrupos: TKRKValidationChecks;
    ZQRYGrupossm_grupos_id: TSmallintField;
    ZQRYGruposva_nome: TWideStringField;
    ZQRYGruposva_descricao: TWideStringField;
    ZQRYPermissoesDosGrupos: TZQuery;
    ZQRYPermissoesDosGruposentidade: TWideStringField;
    ZQRYPermissoesDosGrupostipo: TSmallintField;
    ZQRYPermissoesDosGruposin_permissoesdosgrupos_id: TIntegerField;
    ZQRYPermissoesDosGruposin_entidadesdosistema_id: TIntegerField;
    ZQRYPermissoesDosGrupossm_grupos_id: TSmallintField;
    ZQRYPermissoesDosGrupossm_ler: TSmallintField;
    ZQRYPermissoesDosGrupossm_inserir: TSmallintField;
    ZQRYPermissoesDosGrupossm_alterar: TSmallintField;
    ZQRYPermissoesDosGrupossm_excluir: TSmallintField;
    DTSRGrupos: TDataSource;
    ZUSQPermissoesDosGrupos: TZUpdateSQL;
    KRVCPermissoesDosGrupos: TKRKValidationChecks;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses USODMPrincipal;

end.

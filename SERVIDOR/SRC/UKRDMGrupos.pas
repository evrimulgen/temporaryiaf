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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses USODMPrincipal;

end.

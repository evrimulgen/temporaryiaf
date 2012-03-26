unit UKRDMUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRDMBasico, ZSqlUpdate, Provider, DB, ZDataset, ZAbstractDataset,
  ZStoredProcedure, ZAbstractRODataset,
  KRK.Components.DataControls.ValidationChecks;

type
  TKRDMUsuarios = class(TKRDMBasico)
    ZQRYUsuarios: TZQuery;
    ZQRYUsuariossm_usuarios_id: TSmallintField;
    ZQRYUsuariosva_nome: TWideStringField;
    ZQRYUsuariosva_login: TWideStringField;
    ZQRYUsuariosch_senha: TWideStringField;
    ZQRYUsuariosva_email: TWideStringField;
    ZUSQUsuarios: TZUpdateSQL;
    ZQRYGruposDosUsuarios: TZQuery;
    DTSRUsuarios: TDataSource;
    ZQRYGruposDosUsuariosin_gruposdosusuarios_id: TIntegerField;
    ZQRYGruposDosUsuariossm_grupos_id: TSmallintField;
    ZQRYGruposDosUsuariossm_usuarios_id: TSmallintField;
    ZQRYGruposDosUsuariosgrupo: TWideStringField;
    KRVCUsuarios: TKRKValidationChecks;
    ZQRYPermissoesDosUsuarios: TZQuery;
    ZQRYPermissoesDosUsuariosentidade: TWideStringField;
    ZQRYPermissoesDosUsuariosin_permissoesdosusuarios_id: TIntegerField;
    ZQRYPermissoesDosUsuariosin_entidadesdosistema_id: TIntegerField;
    ZQRYPermissoesDosUsuariossm_usuarios_id: TSmallintField;
    ZQRYPermissoesDosUsuariossm_ler: TSmallintField;
    ZQRYPermissoesDosUsuariossm_inserir: TSmallintField;
    ZQRYPermissoesDosUsuariossm_alterar: TSmallintField;
    ZQRYPermissoesDosUsuariossm_excluir: TSmallintField;
    ZUSQPermissoesDosUsuarios: TZUpdateSQL;
    KRVCPermissoesDosUsuarios: TKRKValidationChecks;
    ZQRYPermissoesDosUsuariostipo: TSmallintField;
    ZQRYUsuariosbo_superusuario: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses USODMPrincipal;

end.

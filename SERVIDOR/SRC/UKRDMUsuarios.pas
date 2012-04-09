unit UKRDMUsuarios;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms
   , Dialogs, Provider, DB, KRK.Components.DataControls.ValidationChecks
   , Uni, MemDS, DBAccess, UKRDMBasico;

type
  TKRDMUsuarios = class(TKRDMBasico)
    DTSRUsuarios: TDataSource;
    KRVCUsuarios: TKRKValidationChecks;
    KRVCPermissoesDosUsuarios: TKRKValidationChecks;
    UNQYUsuarios: TUniQuery;
    UNQYUsuariossm_usuarios_id: TSmallintField;
    UNQYUsuariosva_nome: TWideStringField;
    UNQYUsuariosva_login: TWideStringField;
    UNQYUsuariosch_senha: TWideStringField;
    UNQYUsuariosva_email: TWideStringField;
    UNQYUsuariosbo_superusuario: TBooleanField;
    UNQYGruposDosUsuarios: TUniQuery;
    UNQYGruposDosUsuariosin_gruposdosusuarios_id: TIntegerField;
    UNQYGruposDosUsuariossm_grupos_id: TSmallintField;
    UNQYGruposDosUsuariossm_usuarios_id: TSmallintField;
    UNQYGruposDosUsuariosgrupo: TWideStringField;
    UNQYPermissoesDosUsuarios: TUniQuery;
    UNQYPermissoesDosUsuariosentidade: TWideStringField;
    UNQYPermissoesDosUsuariostipo: TSmallintField;
    UNQYPermissoesDosUsuariosin_permissoesdosusuarios_id: TIntegerField;
    UNQYPermissoesDosUsuariosin_entidadesdosistema_id: TIntegerField;
    UNQYPermissoesDosUsuariossm_usuarios_id: TSmallintField;
    UNQYPermissoesDosUsuariossm_ler: TSmallintField;
    UNQYPermissoesDosUsuariossm_inserir: TSmallintField;
    UNQYPermissoesDosUsuariossm_alterar: TSmallintField;
    UNQYPermissoesDosUsuariossm_excluir: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses USODMPrincipal;

end.

unit UKRDMUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRDMBasico, ZSqlUpdate, Provider, DB, ZDataset, ZAbstractDataset,
  ZStoredProcedure, ZAbstractRODataset;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses USODMPrincipal;

end.

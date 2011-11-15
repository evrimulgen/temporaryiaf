unit UKRDAUsuarios;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  KRK.Wizards.DataModule, ZSqlUpdate, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TKRDAUsuarios = class(TKRKDataModule)
    ZQRYUsuarios: TZQuery;
    ZQRYUsuariossm_usuarios_id: TSmallintField;
    ZQRYUsuariosva_nome: TWideStringField;
    ZQRYUsuariosva_login: TWideStringField;
    ZQRYUsuariosch_senha: TWideStringField;
    ZQRYUsuariosva_email: TWideStringField;
    DSPRUsuarios: TDataSetProvider;
    ZUSQUsuarios: TZUpdateSQL;
  private
    { Declarações privadas }
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
  end;

implementation

uses UKRSDPrincipal;

{$R *.dfm}

end.
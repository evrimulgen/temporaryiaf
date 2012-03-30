unit UKRDMEntidadesDoSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRDMBasico, ZAbstractDataset, ZStoredProcedure, DB,
  ZAbstractRODataset, ZDataset, ZSqlUpdate,
  KRK.Components.DataControls.ValidationChecks;

type
  TKRDMEntidadesDoSistema = class(TKRDMBasico)
    ZQRYEntidadesDoSistema: TZQuery;
    ZUSQEntidadesDoSistema: TZUpdateSQL;
    ZQRYEntidadesDoSistemain_entidadesdosistema_id: TIntegerField;
    ZQRYEntidadesDoSistemava_nome: TWideStringField;
    ZQRYEntidadesDoSistemasm_tipo: TSmallintField;
    KRVCEntidadesDoSistema: TKRKValidationChecks;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses USODMPrincipal;

end.

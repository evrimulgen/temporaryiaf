unit UKRDMEntidadesDoSistema;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms
   , Dialogs, DB, KRK.Components.DataControls.ValidationChecks, Uni, MemDS
   , DBAccess, UKRDMBasico;

type
  TKRDMEntidadesDoSistema = class(TKRDMBasico)
    KRVCEntidadesDoSistema: TKRKValidationChecks;
    UNQYEntidadesDoSistema: TUniQuery;
    UNQYEntidadesDoSistemain_entidadesdosistema_id: TIntegerField;
    UNQYEntidadesDoSistemava_nome: TWideStringField;
    UNQYEntidadesDoSistemasm_tipo: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses USODMPrincipal;

end.

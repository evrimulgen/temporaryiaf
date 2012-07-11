unit UKRDMPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRDMBasico, Uni, DB, MemDS, DBAccess,
  KRK.Components.DataControls.ValidationChecks;

type
  TKRDMPacientes = class(TKRDMBasico)
    UNQYPacientes: TUniQuery;
    UNQYPacientesin_pacientes_id: TIntegerField;
    UNQYPacientesva_nome: TWideStringField;
    UNQYPacientesda_datanascimento: TDateField;
    UNQYPacientesva_rg: TWideStringField;
    UNQYPacientesen_orgaoemissorrg: TWideMemoField;
    UNQYPacientesen_ufemissaorg: TWideMemoField;
    UNQYPacientesen_tipologradouro: TWideMemoField;
    UNQYPacientesva_nomelogradouro: TWideStringField;
    UNQYPacientesva_idlogradouro: TWideStringField;
    UNQYPacientesva_complementologradouro: TWideStringField;
    UNQYPacientesva_bairrologradouro: TWideStringField;
    UNQYPacientesva_cidade: TWideStringField;
    UNQYPacientesen_uf: TWideMemoField;
    UNQYPacientesch_foneresidencial: TWideStringField;
    UNQYPacientesch_fonecelular: TWideStringField;
    UNQYPacientestx_observacoes: TWideMemoField;
    KRVCPacientes: TKRKValidationChecks;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses USODMPrincipal;

{$R *.dfm}

end.

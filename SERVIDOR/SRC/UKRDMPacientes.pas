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
    UNQYPacientesen_orgaoemissorrg: TWideStringField;
    UNQYPacientesen_ufemissaorg: TWideStringField;
    UNQYPacientesen_tipologradouro: TWideStringField;
    UNQYPacientesva_nomelogradouro: TWideStringField;
    UNQYPacientesva_idlogradouro: TWideStringField;
    UNQYPacientesva_complementologradouro: TWideStringField;
    UNQYPacientesva_bairrologradouro: TWideStringField;
    UNQYPacientesva_cidade: TWideStringField;
    UNQYPacientesen_uf: TWideStringField;
    UNQYPacientesch_foneresidencial: TWideStringField;
    UNQYPacientesch_fonecelular: TWideStringField;
    UNQYPacientestx_observacoes: TWideMemoField;
    KRVCPacientes: TKRKValidationChecks;
    UNQYPacientesen_genero: TWideStringField;
    UNQYDadosSocioDemograficos: TUniQuery;
    KRVCDadosSocioDemograficos: TKRKValidationChecks;
    DTSRPacientes: TDataSource;
    UNQYDadosSocioDemograficosin_dadossociodemograficos_id: TIntegerField;
    UNQYDadosSocioDemograficosin_pacientes_id: TIntegerField;
    UNQYDadosSocioDemograficossm_corraca: TSmallintField;
    UNQYDadosSocioDemograficossm_estadocivil: TSmallintField;
    UNQYDadosSocioDemograficossm_graudeinstrucao: TSmallintField;
    UNQYDadosSocioDemograficosin_cbo_id: TIntegerField;
    UNQYDadosSocioDemograficosbo_aposentado: TBooleanField;
    UNQYDadosSocioDemograficossm_televisor: TSmallintField;
    UNQYDadosSocioDemograficossm_radio: TSmallintField;
    UNQYDadosSocioDemograficossm_banheiro: TSmallintField;
    UNQYDadosSocioDemograficossm_automovel: TSmallintField;
    UNQYDadosSocioDemograficossm_mensalista: TSmallintField;
    UNQYDadosSocioDemograficossm_maquinalavar: TSmallintField;
    UNQYDadosSocioDemograficossm_vcrdvd: TSmallintField;
    UNQYDadosSocioDemograficossm_geladeira: TSmallintField;
    UNQYDadosSocioDemograficossm_freezer: TSmallintField;
    UNQYDadosSocioDemograficosbo_chefedefamilia: TBooleanField;
    UNQYDadosSocioDemograficossm_grauinstrchefedefamilia: TSmallintField;
    UNQYDadosSocioDemograficoscbo: TWideStringField;
    UNQYDadosSocioDemograficosprofissao: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses USODMPrincipal;

{$R *.dfm}

end.

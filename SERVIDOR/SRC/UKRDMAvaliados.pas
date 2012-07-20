unit UKRDMAvaliados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRDMBasico, Uni, DB, MemDS, DBAccess,
  KRK.Components.DataControls.ValidationChecks;

type
  TKRDMAvaliados = class(TKRDMBasico)
    UNQYAvaliados: TUniQuery;
    UNQYAvaliadosin_avaliados_id: TIntegerField;
    UNQYAvaliadosva_nome: TWideStringField;
    UNQYAvaliadosda_datanascimento: TDateField;
    UNQYAvaliadosva_rg: TWideStringField;
    UNQYAvaliadosen_orgaoemissorrg: TWideStringField;
    UNQYAvaliadosen_ufemissaorg: TWideStringField;
    UNQYAvaliadosen_tipologradouro: TWideStringField;
    UNQYAvaliadosva_nomelogradouro: TWideStringField;
    UNQYAvaliadosva_idlogradouro: TWideStringField;
    UNQYAvaliadosva_complementologradouro: TWideStringField;
    UNQYAvaliadosva_bairrologradouro: TWideStringField;
    UNQYAvaliadosva_cidade: TWideStringField;
    UNQYAvaliadosen_uf: TWideStringField;
    UNQYAvaliadosch_foneresidencial: TWideStringField;
    UNQYAvaliadosch_fonecelular: TWideStringField;
    UNQYAvaliadostx_observacoes: TWideMemoField;
    KRVCAvaliados: TKRKValidationChecks;
    UNQYAvaliadosen_genero: TWideStringField;
    UNQYDadosSocioDemograficos: TUniQuery;
    KRVCDadosSocioDemograficos: TKRKValidationChecks;
    DTSRAvaliados: TDataSource;
    UNQYDadosSocioDemograficosin_dadossociodemograficos_id: TIntegerField;
    UNQYDadosSocioDemograficosin_avaliados_id: TIntegerField;
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



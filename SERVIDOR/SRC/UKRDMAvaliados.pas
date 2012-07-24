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
    UNQYSinaisESintomas: TUniQuery;
    UNQYSinaisESintomasin_sinaisesintomas_id: TIntegerField;
    UNQYSinaisESintomasin_avaliados_id: TIntegerField;
    UNQYSinaisESintomasbo_dorpeipesmanbra: TBooleanField;
    UNQYSinaisESintomasbo_batcarirrrappalrep: TBooleanField;
    UNQYSinaisESintomasbo_difresdeison: TBooleanField;
    UNQYSinaisESintomasbo_graperpessemmotcon: TBooleanField;
    UNQYSinaisESintomasbo_infacofeb: TBooleanField;
    UNQYSinaisESintomasbo_febdesbatcarace: TBooleanField;
    UNQYSinaisESintomasbo_dorpercam: TBooleanField;
    UNQYSinaisESintomasbo_herabdinco: TBooleanField;
    UNQYSinaisESintomasbo_lespestornaosar: TBooleanField;
    UNQYSinaisESintomasbo_torinc: TBooleanField;
    UNQYSinaisESintomasbo_querecdeidifcamdorper: TBooleanField;
    UNQYSinaisESintomasbo_proalgcirolh: TBooleanField;
    UNQYSinaisESintomasbo_juninc: TBooleanField;
    UNQYSinaisESintomasbo_canincfalaratihab: TBooleanField;
    UNQYSinaisESintomasbo_difresrep: TBooleanField;
    UNQYSinaisESintomasbo_tondes: TBooleanField;
    UNQYSinaisESintomasbo_algcirmen90dia: TBooleanField;
    UNQYParametrosFisiologicos: TUniQuery;
    KRVCParametrosFisiologicos: TKRKValidationChecks;
    UNQYParametrosFisiologicosin_parametrosfisiologicos_id: TIntegerField;
    UNQYParametrosFisiologicosin_avaliados_id: TIntegerField;
    UNQYParametrosFisiologicosts_momafe: TDateTimeField;
    UNQYParametrosFisiologicossm_frepul: TSmallintField;
    UNQYParametrosFisiologicosbo_pulrit: TBooleanField;
    UNQYParametrosFisiologicossm_presis: TSmallintField;
    UNQYParametrosFisiologicossm_predia: TSmallintField;
    UNQYParQ: TUniQuery;
    KRVCParQ: TKRKValidationChecks;
    UNQYParQin_parq_id: TIntegerField;
    UNQYParQin_avaliados_id: TIntegerField;
    UNQYParQbo_pg1: TBooleanField;
    UNQYParQbo_pg2: TBooleanField;
    UNQYParQbo_pg3: TBooleanField;
    UNQYParQbo_pg4: TBooleanField;
    UNQYParQbo_pg5: TBooleanField;
    UNQYParQbo_pg6: TBooleanField;
    UNQYParQbo_pg7: TBooleanField;
    UNQYParQbo_pc1: TBooleanField;
    UNQYParQbo_pc1a: TBooleanField;
    UNQYParQbo_pc1b: TBooleanField;
    UNQYParQbo_pc1c: TBooleanField;
    UNQYParQbo_pc2: TBooleanField;
    UNQYParQbo_pc2a: TBooleanField;
    UNQYParQbo_pc2b: TBooleanField;
    UNQYParQbo_pc3: TBooleanField;
    UNQYParQbo_pc3a: TBooleanField;
    UNQYParQbo_pc3b: TBooleanField;
    UNQYParQbo_pc3c: TBooleanField;
    UNQYParQbo_pc3d: TBooleanField;
    UNQYParQbo_pc3e: TBooleanField;
    UNQYParQbo_pc4: TBooleanField;
    UNQYParQbo_pc4a: TBooleanField;
    UNQYParQbo_pc4b: TBooleanField;
    UNQYParQbo_pc4c: TBooleanField;
    UNQYParQbo_pc5: TBooleanField;
    UNQYParQbo_pc5a: TBooleanField;
    UNQYParQbo_pc5b: TBooleanField;
    UNQYParQbo_pc6: TBooleanField;
    UNQYParQbo_pc6a: TBooleanField;
    UNQYParQbo_pc6b: TBooleanField;
    UNQYParQbo_pc6c: TBooleanField;
    UNQYParQbo_pc6d: TBooleanField;
    UNQYParQbo_pc7: TBooleanField;
    UNQYParQbo_pc7a: TBooleanField;
    UNQYParQbo_pc7b: TBooleanField;
    UNQYParQbo_pc7c: TBooleanField;
    UNQYParQbo_pc8: TBooleanField;
    UNQYParQbo_pc8a: TBooleanField;
    UNQYParQbo_pc8b: TBooleanField;
    UNQYParQbo_pc8c: TBooleanField;
    UNQYParQbo_pc9: TBooleanField;
    UNQYParQbo_pc9a: TBooleanField;
    UNQYParQbo_pc9b: TBooleanField;
    UNQYParQbo_pc9c: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses USODMPrincipal;

{$R *.dfm}

end.

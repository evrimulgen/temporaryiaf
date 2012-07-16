unit UKRDMGerenciarPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, KRK.Components.AdditionalControls.PngImageList,
  KRK.Components.AdditionalControls.BalloonHint, ActnList, DB, DBClient,
  UKRDMBasico;

type
  TKRDMGerenciarPacientes = class(TKRDMBasico)
    DTSRPacientes: TDataSource;
    CLDSPacientes: TClientDataSet;
    CLDSPacientesin_pacientes_id: TIntegerField;
    CLDSPacientesva_nome: TWideStringField;
    CLDSPacientesda_datanascimento: TDateField;
    CLDSPacientesva_rg: TWideStringField;
    CLDSPacientesen_orgaoemissorrg: TWideMemoField;
    CLDSPacientesen_ufemissaorg: TWideMemoField;
    CLDSPacientesen_tipologradouro: TWideMemoField;
    CLDSPacientesva_nomelogradouro: TWideStringField;
    CLDSPacientesva_idlogradouro: TWideStringField;
    CLDSPacientesva_complementologradouro: TWideStringField;
    CLDSPacientesva_bairrologradouro: TWideStringField;
    CLDSPacientesva_cidade: TWideStringField;
    CLDSPacientesen_uf: TWideMemoField;
    CLDSPacientesch_foneresidencial: TWideStringField;
    CLDSPacientesch_fonecelular: TWideStringField;
    CLDSPacientestx_observacoes: TWideMemoField;
    CLDSPacientesen_genero: TWideMemoField;
    CLDSDadosSocioDemograficos: TClientDataSet;
    DTSRDadosSocioDemograficos: TDataSource;
    CLDSPacientesUNQYDadosSocioDemograficos: TDataSetField;
    CLDSDadosSocioDemograficosin_dadossociodemograficos_id: TIntegerField;
    CLDSDadosSocioDemograficosin_pacientes_id: TIntegerField;
    CLDSDadosSocioDemograficossm_corraca: TSmallintField;
    CLDSDadosSocioDemograficossm_estadocivil: TSmallintField;
    CLDSDadosSocioDemograficossm_graudeinstrucao: TSmallintField;
    CLDSDadosSocioDemograficosin_cbo_id: TIntegerField;
    CLDSDadosSocioDemograficosbo_aposentado: TBooleanField;
    CLDSDadosSocioDemograficossm_televisor: TSmallintField;
    CLDSDadosSocioDemograficossm_radio: TSmallintField;
    CLDSDadosSocioDemograficossm_banheiro: TSmallintField;
    CLDSDadosSocioDemograficossm_automovel: TSmallintField;
    CLDSDadosSocioDemograficossm_mensalista: TSmallintField;
    CLDSDadosSocioDemograficossm_maquinalavar: TSmallintField;
    CLDSDadosSocioDemograficossm_vcrdvd: TSmallintField;
    CLDSDadosSocioDemograficossm_geladeira: TSmallintField;
    CLDSDadosSocioDemograficossm_freezer: TSmallintField;
    CLDSDadosSocioDemograficosbo_chefedefamilia: TBooleanField;
    CLDSDadosSocioDemograficossm_grauinstrchefedefamilia: TSmallintField;
    CLDSDadosSocioDemograficosprofissao: TWideStringField;
    CLDSDadosSocioDemograficoscbo: TWideStringField;
    procedure CLDSPacientesch_foneresidencialGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSPacientesch_fonecelularGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSPacientesAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
    function ObterTelefoneResidencialFormatado: String;
    function ObterTelefoneCelularFormatado: String;
  public
    { Public declarations }
    procedure FiltrarPacientes(aCLDSPacientes: TClientDataSet; aIN_PACIENTES_ID: Integer; aVA_NOME, aEN_GENERO: String; aDA_DATANASCIMENTO: TDateTime; aVA_RG, aEN_ORGAOEMISSORRG, aEN_UFEMISSAORG, aEN_TIPOLOGRADOURO, aVA_NOMELOGRADOURO, aVA_IDLOGRADOURO, aVA_COMPLEMENTOLOGRADOURO, aVA_BAIRROLOGRADOURO, aVA_CIDADE, aEN_UF, aCH_FONERESIDENCIAL, aCH_FONECELULAR, aTX_OBSERVACOES: String);
  end;

implementation

uses UDAMOPrincipal, UKRFMGerenciarPacientes, KRK.Lib.Db.Utils;

{$R *.dfm}

{ TKRDMGerenciarPacientes }

procedure TKRDMGerenciarPacientes.FiltrarPacientes(aCLDSPacientes: TClientDataSet; aIN_PACIENTES_ID: Integer; aVA_NOME, aEN_GENERO: String; aDA_DATANASCIMENTO: TDateTime; aVA_RG, aEN_ORGAOEMISSORRG, aEN_UFEMISSAORG, aEN_TIPOLOGRADOURO, aVA_NOMELOGRADOURO, aVA_IDLOGRADOURO, aVA_COMPLEMENTOLOGRADOURO, aVA_BAIRROLOGRADOURO, aVA_CIDADE, aEN_UF, aCH_FONERESIDENCIAL, aCH_FONECELULAR, aTX_OBSERVACOES: String);
begin
  if aCLDSPacientes.ChangeCount = 0 then
  begin
    AssignParam(aCLDSPacientes.Params.ParamByName('IN_PACIENTES_ID'),aIN_PACIENTES_ID);
    AssignParam(aCLDSPacientes.Params.ParamByName('VA_NOME'),aVA_NOME);
    AssignParam(aCLDSPacientes.Params.ParamByName('EN_GENERO'),aEN_GENERO);
    AssignParam(aCLDSPacientes.Params.ParamByName('DA_DATANASCIMENTO'),aDA_DATANASCIMENTO);
    AssignParam(aCLDSPacientes.Params.ParamByName('VA_RG'),aVA_RG);
    AssignParam(aCLDSPacientes.Params.ParamByName('EN_ORGAOEMISSORRG'),aEN_ORGAOEMISSORRG);
    AssignParam(aCLDSPacientes.Params.ParamByName('EN_UFEMISSAORG'),aEN_UFEMISSAORG);
    AssignParam(aCLDSPacientes.Params.ParamByName('EN_TIPOLOGRADOURO'),aEN_TIPOLOGRADOURO);
    AssignParam(aCLDSPacientes.Params.ParamByName('VA_NOMELOGRADOURO'),aVA_NOMELOGRADOURO);
    AssignParam(aCLDSPacientes.Params.ParamByName('VA_IDLOGRADOURO'),aVA_IDLOGRADOURO);
    AssignParam(aCLDSPacientes.Params.ParamByName('VA_COMPLEMENTOLOGRADOURO'),aVA_COMPLEMENTOLOGRADOURO);
    AssignParam(aCLDSPacientes.Params.ParamByName('VA_BAIRROLOGRADOURO'),aVA_BAIRROLOGRADOURO);
    AssignParam(aCLDSPacientes.Params.ParamByName('VA_CIDADE'),aVA_CIDADE);
    AssignParam(aCLDSPacientes.Params.ParamByName('EN_UF'),aEN_UF);
    AssignParam(aCLDSPacientes.Params.ParamByName('CH_FONERESIDENCIAL'),aCH_FONERESIDENCIAL);
    AssignParam(aCLDSPacientes.Params.ParamByName('CH_FONECELULAR'),aCH_FONECELULAR);
    AssignParam(aCLDSPacientes.Params.ParamByName('TX_OBSERVACOES'),aTX_OBSERVACOES);
    aCLDSPacientes.Refresh;
  end;

end;


procedure TKRDMGerenciarPacientes.CLDSPacientesAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  TKRFMGerenciarPacientes(MyForm).LABLFiltroPacientes.Caption := TClientDataSet(DataSet).MyParams;
end;

procedure TKRDMGerenciarPacientes.CLDSPacientesch_fonecelularGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    Text := ObterTelefoneCelularFormatado
  else
    Text := Sender.AsString;
end;

procedure TKRDMGerenciarPacientes.CLDSPacientesch_foneresidencialGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    Text := ObterTelefoneResidencialFormatado
  else
    Text := Sender.AsString;
end;

function TKRDMGerenciarPacientes.ObterTelefoneCelularFormatado: String;
begin
  Result := '';

  if not Assigned(MyForm) then
    Exit;

  Result := TKRFMGerenciarPacientes(MyForm).KLDEFoneCelular.EditText;
end;

function TKRDMGerenciarPacientes.ObterTelefoneResidencialFormatado: String;
begin
  Result := '';

  if not Assigned(MyForm) then
    Exit;

  Result := TKRFMGerenciarPacientes(MyForm).KLDEFoneResidencial.EditText;
end;

end.

unit UKRDMGerenciarPacientes;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, DBClient
   , DB, ImgList, ActnList, UKRDMBasico
   , KRK.Components.AdditionalControls.BalloonHint
   , KRK.Components.AdditionalControls.PngImageList;

type
  TKRDMGerenciarPacientes = class(TKRDMBasico)
    DTSRPacientes: TDataSource;
    CLDSPacientes: TClientDataSet;
    CLDSPacientesin_pacientes_id: TIntegerField;
    CLDSPacientesva_nome: TWideStringField;
    CLDSPacientesda_datanascimento: TDateField;
    CLDSPacientesva_rg: TWideStringField;
    CLDSPacientesen_orgaoemissorrg: TWideStringField;
    CLDSPacientesen_ufemissaorg: TWideStringField;
    CLDSPacientesen_tipologradouro: TWideStringField;
    CLDSPacientesva_nomelogradouro: TWideStringField;
    CLDSPacientesva_idlogradouro: TWideStringField;
    CLDSPacientesva_complementologradouro: TWideStringField;
    CLDSPacientesva_bairrologradouro: TWideStringField;
    CLDSPacientesva_cidade: TWideStringField;
    CLDSPacientesen_uf: TWideStringField;
    CLDSPacientesch_foneresidencial: TWideStringField;
    CLDSPacientesch_fonecelular: TWideStringField;
    CLDSPacientestx_observacoes: TWideMemoField;
    CLDSPacientesen_genero: TWideStringField;
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
    CLDSPacientesfoneresidencial: TStringField;
    CLDSPacientesfonecelular: TStringField;
    ACTNSelecionarCBO: TAction;
    procedure CLDSPacientesAfterRefresh(DataSet: TDataSet);
    procedure CLDSPacientesCalcFields(DataSet: TDataSet);
    procedure DTSRPacientesDataChange(Sender: TObject; Field: TField);
    procedure ACTNSelecionarCBOExecute(Sender: TObject);
  private
    { Private declarations }
    procedure AlternarPaginas;
  public
    { Public declarations }
    procedure FiltrarPacientes(aCLDSPacientes: TClientDataSet; aIN_PACIENTES_ID: Integer; aVA_NOME, aEN_GENERO: String; aDA_DATANASCIMENTO: TDateTime; aVA_RG, aEN_ORGAOEMISSORRG, aEN_UFEMISSAORG, aEN_TIPOLOGRADOURO, aVA_NOMELOGRADOURO, aVA_IDLOGRADOURO, aVA_COMPLEMENTOLOGRADOURO, aVA_BAIRROLOGRADOURO, aVA_CIDADE, aEN_UF, aCH_FONERESIDENCIAL, aCH_FONECELULAR, aTX_OBSERVACOES: String);
    procedure FiltrarCBO(aCLDSCBO: TClientDataSet; aIN_CBO_ID: Integer; aCH_CODIGO, aVA_TITULO, aEN_TIPO: String);
  end;

implementation

uses UDAMOPrincipal, UKRFMGerenciarPacientes, KRK.Lib.Db.Utils, KRK.Lib.RegExp.Utils,
  UKRFMSelecionarCBO;

{$R *.dfm}

{ TKRDMGerenciarPacientes }

procedure TKRDMGerenciarPacientes.FiltrarCBO(aCLDSCBO: TClientDataSet; aIN_CBO_ID: Integer; aCH_CODIGO, aVA_TITULO, aEN_TIPO: String);
begin
  if aCLDSCBO.ChangeCount = 0 then
  begin
    AssignParam(aCLDSCBO.Params.ParamByName('IN_CBO_ID'),aIN_CBO_ID);
    AssignParam(aCLDSCBO.Params.ParamByName('CH_CODIGO'),aCH_CODIGO);
    AssignParam(aCLDSCBO.Params.ParamByName('VA_TITULO'),aVA_TITULO);
    AssignParam(aCLDSCBO.Params.ParamByName('EN_TIPO'),aEN_TIPO);
    aCLDSCBO.Refresh;
  end;
end;

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

procedure TKRDMGerenciarPacientes.ACTNSelecionarCBOExecute(Sender: TObject);
begin
  inherited;
  with TKRFMSelecionarCBO.Create(nil) do
    try
      CLDS.ConnectionBroker := CLDSPacientes.ConnectionBroker;
      CLDS.ProviderName := 'DSPRCBO';
      CLDS.Open;

      if ShowModal = mrOk then
      begin
        CLDSDadosSocioDemograficos.Edit;
        CLDSDadosSocioDemograficosin_cbo_id.AsInteger := CLDSin_cbo_id.AsInteger;
        TKRFMGerenciarPacientes(MyForm).LAEDTituloCBO.Text := CLDSva_titulo.AsString;
      end;
    finally
      Free;
    end;

end;

procedure TKRDMGerenciarPacientes.AlternarPaginas;
begin
  if Assigned(MyForm) then
  begin
    TKRFMGerenciarPacientes(MyForm).TBSHConsultar.TabVisible := CLDSPacientes.State = dsBrowse;
    TKRFMGerenciarPacientes(MyForm).TBSHDadosSocioDemograficos.TabVisible := (CLDSPacientes.RecordCount > 0) and (CLDSPacientesin_pacientes_id.AsInteger > 0);
  end;
end;

procedure TKRDMGerenciarPacientes.CLDSPacientesAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  TKRFMGerenciarPacientes(MyForm).LABLFiltroPacientes.Caption := TClientDataSet(DataSet).MyParams;
end;

procedure TKRDMGerenciarPacientes.CLDSPacientesCalcFields(DataSet: TDataSet);
begin
  inherited;

  if not Assigned(MyForm) then
    Exit;

  CLDSPacientesfoneresidencial.AsString := ApplyMask(TKRFMGerenciarPacientes(MyForm).KLDEFoneResidencial.DBEditFormat.FormatScript,CLDSPacientesch_foneresidencial.AsString);
  CLDSPacientesfonecelular.AsString := ApplyMask(TKRFMGerenciarPacientes(MyForm).KLDEFoneCelular.DBEditFormat.FormatScript,CLDSPacientesch_fonecelular.AsString);
end;

procedure TKRDMGerenciarPacientes.DTSRPacientesDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  AlternarPaginas;
end;

end.

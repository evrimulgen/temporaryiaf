unit UKRDMAvaliadosGerenciar;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, DBClient
   , DB, ImgList, ActnList, UKRDMBasico
   , KRK.Components.AdditionalControls.BalloonHint
   , KRK.Components.AdditionalControls.PngImageList;

type
  TKRDMAvaliadosGerenciar = class(TKRDMBasico)
    DTSRAvaliados: TDataSource;
    CLDSAvaliados: TClientDataSet;
    CLDSAvaliadosin_avaliados_id: TIntegerField;
    CLDSAvaliadosva_nome: TWideStringField;
    CLDSAvaliadosda_datanascimento: TDateField;
    CLDSAvaliadosva_rg: TWideStringField;
    CLDSAvaliadosen_orgaoemissorrg: TWideStringField;
    CLDSAvaliadosen_ufemissaorg: TWideStringField;
    CLDSAvaliadosen_tipologradouro: TWideStringField;
    CLDSAvaliadosva_nomelogradouro: TWideStringField;
    CLDSAvaliadosva_idlogradouro: TWideStringField;
    CLDSAvaliadosva_complementologradouro: TWideStringField;
    CLDSAvaliadosva_bairrologradouro: TWideStringField;
    CLDSAvaliadosva_cidade: TWideStringField;
    CLDSAvaliadosen_uf: TWideStringField;
    CLDSAvaliadosch_foneresidencial: TWideStringField;
    CLDSAvaliadosch_fonecelular: TWideStringField;
    CLDSAvaliadostx_observacoes: TWideMemoField;
    CLDSAvaliadosen_genero: TWideStringField;
    CLDSDadosSocioDemograficos: TClientDataSet;
    DTSRDadosSocioDemograficos: TDataSource;
    CLDSAvaliadosUNQYDadosSocioDemograficos: TDataSetField;
    CLDSDadosSocioDemograficosin_dadossociodemograficos_id: TIntegerField;
    CLDSDadosSocioDemograficosin_avaliados_id: TIntegerField;
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
    CLDSAvaliadosfoneresidencial: TStringField;
    CLDSAvaliadosfonecelular: TStringField;
    ACTNSelecionarCBO: TAction;
    CLDSDadosSocioDemograficoscbo: TWideStringField;
    CLDSDadosSocioDemograficosprofissao: TWideStringField;
    CLDSDadosSocioDemograficosic_cbo: TStringField;
    CLDSDadosSocioDemograficosic_profissao: TStringField;
    CLDSAvaliadosUNQYSinaisESintomas: TDataSetField;
    CLDSSinaisESintomas: TClientDataSet;
    DTSRSinaisESintomas: TDataSource;
    CLDSSinaisESintomasin_sinaisesintomas_id: TIntegerField;
    CLDSSinaisESintomasin_avaliados_id: TIntegerField;
    CLDSSinaisESintomasbo_dorpeipesmanbra: TBooleanField;
    CLDSSinaisESintomasbo_batcarirrrappalrep: TBooleanField;
    CLDSSinaisESintomasbo_difresdeison: TBooleanField;
    CLDSSinaisESintomasbo_graperpessemmotcon: TBooleanField;
    CLDSSinaisESintomasbo_infacofeb: TBooleanField;
    CLDSSinaisESintomasbo_febdesbatcarace: TBooleanField;
    CLDSSinaisESintomasbo_dorpercam: TBooleanField;
    CLDSSinaisESintomasbo_herabdinco: TBooleanField;
    CLDSSinaisESintomasbo_lespestornaosar: TBooleanField;
    CLDSSinaisESintomasbo_torinc: TBooleanField;
    CLDSSinaisESintomasbo_querecdeidifcamdorper: TBooleanField;
    CLDSSinaisESintomasbo_proalgcirolh: TBooleanField;
    CLDSSinaisESintomasbo_juninc: TBooleanField;
    CLDSSinaisESintomasbo_canincfalaratihab: TBooleanField;
    CLDSSinaisESintomasbo_difresrep: TBooleanField;
    CLDSSinaisESintomasbo_tondes: TBooleanField;
    CLDSSinaisESintomasbo_algcirmen90dia: TBooleanField;
    CLDSParametrosFisiologicos: TClientDataSet;
    CLDSAvaliadosUNQYParametrosFisiologicos: TDataSetField;
    DTSRParametrosFisiologicos: TDataSource;
    CLDSParametrosFisiologicosin_parametrosfisiologicos_id: TIntegerField;
    CLDSParametrosFisiologicosin_avaliados_id: TIntegerField;
    CLDSParametrosFisiologicosts_momafe: TDateTimeField;
    CLDSParametrosFisiologicossm_frepul: TSmallintField;
    CLDSParametrosFisiologicosbo_pulrit: TBooleanField;
    CLDSParametrosFisiologicossm_presis: TSmallintField;
    CLDSParametrosFisiologicossm_predia: TSmallintField;
    procedure CLDSAvaliadosAfterRefresh(DataSet: TDataSet);
    procedure CLDSAvaliadosCalcFields(DataSet: TDataSet);
    procedure DTSRAvaliadosDataChange(Sender: TObject; Field: TField);
    procedure ACTNSelecionarCBOExecute(Sender: TObject);
    procedure CLDSDadosSocioDemograficoscboGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSDadosSocioDemograficosprofissaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
    procedure AlternarPaginas;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
    procedure FiltrarAvaliados(aCLDSAvaliados: TClientDataSet; aIN_AVALIADOS_ID: Integer; aVA_NOME, aEN_GENERO: String; aDA_DATANASCIMENTO: TDateTime; aVA_RG, aEN_ORGAOEMISSORRG, aEN_UFEMISSAORG, aEN_TIPOLOGRADOURO, aVA_NOMELOGRADOURO, aVA_IDLOGRADOURO, aVA_COMPLEMENTOLOGRADOURO, aVA_BAIRROLOGRADOURO, aVA_CIDADE, aEN_UF, aCH_FONERESIDENCIAL, aCH_FONECELULAR, aTX_OBSERVACOES: String);
    procedure FiltrarCBO(aCLDSCBO: TClientDataSet; aIN_CBO_ID: Integer; aCH_CODIGO, aVA_TITULO, aEN_TIPO: String);
  end;

implementation

uses UDAMOPrincipal, UKRFMAvaliadosGerenciar, KRK.Lib.Db.Utils
   , KRK.Lib.RegExp.Utils, UKRFMSelecionarCBO;

{$R *.dfm}

{ TKRDMAvaliadosGerenciar }

procedure TKRDMAvaliadosGerenciar.FiltrarCBO(aCLDSCBO: TClientDataSet; aIN_CBO_ID: Integer; aCH_CODIGO, aVA_TITULO, aEN_TIPO: String);
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

procedure TKRDMAvaliadosGerenciar.FiltrarAvaliados(aCLDSAvaliados: TClientDataSet; aIN_AVALIADOS_ID: Integer; aVA_NOME, aEN_GENERO: String; aDA_DATANASCIMENTO: TDateTime; aVA_RG, aEN_ORGAOEMISSORRG, aEN_UFEMISSAORG, aEN_TIPOLOGRADOURO, aVA_NOMELOGRADOURO, aVA_IDLOGRADOURO, aVA_COMPLEMENTOLOGRADOURO, aVA_BAIRROLOGRADOURO, aVA_CIDADE, aEN_UF, aCH_FONERESIDENCIAL, aCH_FONECELULAR, aTX_OBSERVACOES: String);
begin
  if aCLDSAvaliados.ChangeCount = 0 then
  begin
    AssignParam(aCLDSAvaliados.Params.ParamByName('IN_AVALIADOS_ID'),aIN_AVALIADOS_ID);
    AssignParam(aCLDSAvaliados.Params.ParamByName('VA_NOME'),aVA_NOME);
    AssignParam(aCLDSAvaliados.Params.ParamByName('EN_GENERO'),aEN_GENERO);
    AssignParam(aCLDSAvaliados.Params.ParamByName('DA_DATANASCIMENTO'),aDA_DATANASCIMENTO);
    AssignParam(aCLDSAvaliados.Params.ParamByName('VA_RG'),aVA_RG);
    AssignParam(aCLDSAvaliados.Params.ParamByName('EN_ORGAOEMISSORRG'),aEN_ORGAOEMISSORRG);
    AssignParam(aCLDSAvaliados.Params.ParamByName('EN_UFEMISSAORG'),aEN_UFEMISSAORG);
    AssignParam(aCLDSAvaliados.Params.ParamByName('EN_TIPOLOGRADOURO'),aEN_TIPOLOGRADOURO);
    AssignParam(aCLDSAvaliados.Params.ParamByName('VA_NOMELOGRADOURO'),aVA_NOMELOGRADOURO);
    AssignParam(aCLDSAvaliados.Params.ParamByName('VA_IDLOGRADOURO'),aVA_IDLOGRADOURO);
    AssignParam(aCLDSAvaliados.Params.ParamByName('VA_COMPLEMENTOLOGRADOURO'),aVA_COMPLEMENTOLOGRADOURO);
    AssignParam(aCLDSAvaliados.Params.ParamByName('VA_BAIRROLOGRADOURO'),aVA_BAIRROLOGRADOURO);
    AssignParam(aCLDSAvaliados.Params.ParamByName('VA_CIDADE'),aVA_CIDADE);
    AssignParam(aCLDSAvaliados.Params.ParamByName('EN_UF'),aEN_UF);
    AssignParam(aCLDSAvaliados.Params.ParamByName('CH_FONERESIDENCIAL'),aCH_FONERESIDENCIAL);
    AssignParam(aCLDSAvaliados.Params.ParamByName('CH_FONECELULAR'),aCH_FONECELULAR);
    AssignParam(aCLDSAvaliados.Params.ParamByName('TX_OBSERVACOES'),aTX_OBSERVACOES);
    aCLDSAvaliados.Refresh;
  end;
end;

procedure TKRDMAvaliadosGerenciar.ACTNSelecionarCBOExecute(Sender: TObject);
begin
  inherited;
  with TKRFMSelecionarCBO.Create(nil) do
    try
      CLDS.ConnectionBroker := CLDSAvaliados.ConnectionBroker;
      CLDS.ProviderName := 'DSPRCBO';
      CLDS.Open;

      if ShowModal = mrOk then
      begin
        CLDSDadosSocioDemograficos.Edit;
        CLDSDadosSocioDemograficosin_cbo_id.AsInteger := CLDSin_cbo_id.AsInteger;
        CLDSDadosSocioDemograficosic_cbo.AsString := CLDSch_codigo.AsString;
        CLDSDadosSocioDemograficosic_profissao.AsString := CLDSva_titulo.AsString;

        { Garante que ao alterar a profissão (editando o registro) os dados
        apareçam imediatamente }
        TKRFMAvaliadosGerenciar(MyForm).KLDECBO.SetFocus;
        TKRFMAvaliadosGerenciar(MyForm).DBEDTituloCBO.SetFocus;
        TKRFMAvaliadosGerenciar(MyForm).BUTNPesqisarCBO.SetFocus;
      end;
    finally
      Free;
    end;
end;

procedure TKRDMAvaliadosGerenciar.AlternarPaginas;
begin
  if Assigned(MyForm) then
  begin
    TKRFMAvaliadosGerenciar(MyForm).TBSHConsultar.TabVisible := CLDSAvaliados.State = dsBrowse;

    TKRFMAvaliadosGerenciar(MyForm).TBSHDadosSocioDemograficos.TabVisible := (CLDSAvaliados.RecordCount > 0) and (CLDSAvaliadosin_avaliados_id.AsInteger > 0);
    TKRFMAvaliadosGerenciar(MyForm).TBSHSinaisESintomas.TabVisible := (CLDSAvaliados.RecordCount > 0) and (CLDSAvaliadosin_avaliados_id.AsInteger > 0);
    TKRFMAvaliadosGerenciar(MyForm).TBSHParametrosFisiologicos.TabVisible := (CLDSAvaliados.RecordCount > 0) and (CLDSAvaliadosin_avaliados_id.AsInteger > 0);
    TKRFMAvaliadosGerenciar(MyForm).TBSHParQ.TabVisible := (CLDSAvaliados.RecordCount > 0) and (CLDSAvaliadosin_avaliados_id.AsInteger > 0);

    TKRFMAvaliadosGerenciar(MyForm).LABLAvaliado1.Caption := 'Avaliado: ' + AnsiUpperCase(CLDSAvaliadosva_nome.AsString);
    TKRFMAvaliadosGerenciar(MyForm).LABLAvaliado2.Caption := TKRFMAvaliadosGerenciar(MyForm).LABLAvaliado1.Caption;
    TKRFMAvaliadosGerenciar(MyForm).LABLAvaliado3.Caption := TKRFMAvaliadosGerenciar(MyForm).LABLAvaliado1.Caption;
    TKRFMAvaliadosGerenciar(MyForm).LABLAvaliado4.Caption := TKRFMAvaliadosGerenciar(MyForm).LABLAvaliado1.Caption;
  end;
end;

procedure TKRDMAvaliadosGerenciar.CLDSDadosSocioDemograficoscboGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull or (CLDSDadosSocioDemograficos.State = dsEdit) then
    Text := CLDSDadosSocioDemograficosic_cbo.AsString
  else
    Text := Sender.AsString;
end;

procedure TKRDMAvaliadosGerenciar.CLDSDadosSocioDemograficosprofissaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull or (CLDSDadosSocioDemograficos.State = dsEdit) then
    Text := CLDSDadosSocioDemograficosic_profissao.AsString
  else
    Text := Sender.AsString;
end;

procedure TKRDMAvaliadosGerenciar.CLDSAvaliadosAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  TKRFMAvaliadosGerenciar(MyForm).LABLFiltroAvaliados.Caption := TClientDataSet(DataSet).MyParams;
end;

procedure TKRDMAvaliadosGerenciar.CLDSAvaliadosCalcFields(DataSet: TDataSet);
begin
  inherited;

  if not Assigned(MyForm) then
    Exit;

  CLDSAvaliadosfoneresidencial.AsString := ApplyMask(TKRFMAvaliadosGerenciar(MyForm).KLDEFoneResidencial.DBEditFormat.FormatScript,CLDSAvaliadosch_foneresidencial.AsString);
  CLDSAvaliadosfonecelular.AsString := ApplyMask(TKRFMAvaliadosGerenciar(MyForm).KLDEFoneCelular.DBEditFormat.FormatScript,CLDSAvaliadosch_fonecelular.AsString);
end;

constructor TKRDMAvaliadosGerenciar.Create(aOwner: TComponent);
begin
  inherited;
  { Indicando qual componente focar quando houver erro em certos campos que não
  são acessados diretamente }
  CLDSDadosSocioDemograficos.KRKValidationChecks.CheckableFields.ByFieldName['in_cbo_id'].ComponentToFocusOnValidateFailure := TKRFMAvaliadosGerenciar(MyForm).BUTNPesqisarCBO;
end;

procedure TKRDMAvaliadosGerenciar.DTSRAvaliadosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  AlternarPaginas;
end;

end.

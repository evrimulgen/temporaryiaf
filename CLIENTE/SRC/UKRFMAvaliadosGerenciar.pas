unit UKRFMAvaliadosGerenciar;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms
   , Dialogs, ActnList, ImgList, StdCtrls, ComCtrls, ToolWin, Grids, DBGrids
   , DBCtrls, Mask, ExtCtrls
   { Units que não pertencem ao Delphi }
   , UKRFMDBAwareBasico, KRK.Components.DataControls.DBGrid
   , KRK.Components.DataControls.LabeledDBEdit
   , KRK.Components.AdditionalControls.LabeledEdit
   , KRK.Components.StandardControls.Panel
   , KRK.Components.AdditionalControls.RTFLabel
   , Interposer.TDBRadioGroup, Interposer.TGroupBox;

type
  TKRFMAvaliadosGerenciar = class(TKRFMDBAwareBasico)
    PGCTAvaliados: TPageControl;
    TBSHConsultar: TTabSheet;
    TBSHGerenciar: TTabSheet;
    KRDGAvaliados: TKRKDBGrid;
    KLDEDataNascimento: TKRKLabeledDBEdit;
    KLDERg: TKRKLabeledDBEdit;
    LABLOrgaoEmissor: TLabel;
    DBCXOrgaoEmissorRg: TDBComboBox;
    LABLUFEmissaoRG: TLabel;
    DBCXUFEmissaoRg: TDBComboBox;
    LABLTipoDeLogradouro: TLabel;
    DBCXTipoLogradouro: TDBComboBox;
    KLDELogradouro: TKRKLabeledDBEdit;
    KLDEIdLogradouro: TKRKLabeledDBEdit;
    KLDEComplemento: TKRKLabeledDBEdit;
    KLDEBairro: TKRKLabeledDBEdit;
    KLDECidade: TKRKLabeledDBEdit;
    LABLUF: TLabel;
    KLDEFoneResidencial: TKRKLabeledDBEdit;
    KLDEFoneCelular: TKRKLabeledDBEdit;
    DBMOObservacoes: TDBMemo;
    DBNAGerenciarAvaliados: TDBNavigator;
    KLDENome: TKRKLabeledDBEdit;
    DBCXUF: TDBComboBox;
    DBNAConsultarAvaliados: TDBNavigator;
    DBCXGenero: TDBComboBox;
    LABLGenero: TLabel;
    GRBXContato: TGroupBox;
    GRBXDocumentos: TGroupBox;
    GRBXDadosPessoais: TGroupBox;
    GRBXEndereco: TGroupBox;
    GRBXObservacoes: TGroupBox;
    TBSHDadosSocioDemograficos: TTabSheet;
    SCBXDadosSocioDemograficos: TScrollBox;
    DBRGCorRaca: TDBRadioGroup;
    DBRGEstadoCivil: TDBRadioGroup;
    DBNADadosSocioDemograficos: TDBNavigator;
    DBRGGrauInstrucao: TDBRadioGroup;
    PANLCBO: TPanel;
    BUTNPesqisarCBO: TButton;
    GRBXPatrimonio: TGroupBox;
    DBRGTelevisor: TDBRadioGroup;
    DBRGRadio: TDBRadioGroup;
    DBRGBanheiro: TDBRadioGroup;
    DBRGAutomovel: TDBRadioGroup;
    DBRGMaquinaDeLavar: TDBRadioGroup;
    DBRGVCRDVD: TDBRadioGroup;
    DBRGGeladeira: TDBRadioGroup;
    DBRGFreezer: TDBRadioGroup;
    DBRGProfissao: TDBRadioGroup;
    GRBXProfissao: TGroupBox;
    KLDECBO: TKRKLabeledDBEdit;
    DBRGChefeDaFamilia: TDBRadioGroup;
    DBRGGrauChefeFamilia: TDBRadioGroup;
    PANLPaddingBottom: TPanel;
    GRBXFiltroAvaliados: TGroupBox;
    LABLFiltroAvaliados: TLabel;
    PANLLayerFiltros: TPanel;
    GRBXPorDadosUnicos: TGroupBox;
    KRLECodigo: TKRKLabeledEdit;
    KRLEIdentidade: TKRKLabeledEdit;
    GRBXPorDadosCompletos: TGroupBox;
    KRLENascimento: TKRKLabeledEdit;
    KRLEFoneResidencial: TKRKLabeledEdit;
    KRLEFoneCelular: TKRKLabeledEdit;
    GRBXPorDadosParciais: TGroupBox;
    LAEDNome: TLabeledEdit;
    LAEDBairro: TLabeledEdit;
    LAEDCidade: TLabeledEdit;
    LAEDLogradouro: TLabeledEdit;
    DBRGEmpregadaMensalista: TDBRadioGroup;
    KRPAAvaliado1: TKRKPanel;
    LABLAvaliado1: TLabel;
    DBEDTituloCBO: TDBEdit;
    TBSHSinaisESintomas: TTabSheet;
    KRPAAvaliado2: TKRKPanel;
    LABLAvaliado2: TLabel;
    TBSHParametrosFisiologicos: TTabSheet;
    KRPAAvaliado3: TKRKPanel;
    LABLAvaliado3: TLabel;
    TBSHParQ: TTabSheet;
    KRPAAvaliado4: TKRKPanel;
    LABLAvaliado4: TLabel;
    DBNAChecagemDeSinaisESintomas: TDBNavigator;
    DBNAParQ: TDBNavigator;
    SCBXSinaisESintomas: TScrollBox;
    Panel2: TPanel;
    PANLSinaisESintomas: TPanel;
    LABLSinaisESintomas: TLabel;
    DBCBDorPeiPesManBra: TDBCheckBox;
    DBCBBatCarIrrRapPalRep: TDBCheckBox;
    DBCBDifResDeiSon: TDBCheckBox;
    DBCBGraPerPesSemMotCon: TDBCheckBox;
    DBCBInfAcoFeb: TDBCheckBox;
    DBCBFebDesBatCarAce: TDBCheckBox;
    DBCBDorPerCam: TDBCheckBox;
    DBCBHerAbdInco: TDBCheckBox;
    DBCBLesPesTorNaoSar: TDBCheckBox;
    DBCBTorInc: TDBCheckBox;
    DBCBQueRecDeiDifCamDorPer: TDBCheckBox;
    DBCBProAlgCirOlh: TDBCheckBox;
    DBCBJunInc: TDBCheckBox;
    DBCBCanIncFalArAtiHab: TDBCheckBox;
    DBCBDifResRep: TDBCheckBox;
    DBCBTonDes: TDBCheckBox;
    DBCBAlgCirMen90Dia: TDBCheckBox;
    KRDGParametrosFisiologicos: TKRKDBGrid;
    DBNAParametrosFisiologicos2: TDBNavigator;
    GRBXPulso: TGroupBox;
    GRBXPressaoArterial: TGroupBox;
    KLDEFrequenciaPulso: TKRKLabeledDBEdit;
    DBRGRitmoPulso: TDBRadioGroup;
    KLDEPressaoSistolica: TKRKLabeledDBEdit;
    KLDEPressaoDiastolica: TKRKLabeledDBEdit;
    TBSHRastreioDeSarcopenia: TTabSheet;
    KRPAAvaliado5: TKRKPanel;
    LABLAvaliado5: TLabel;
    SCBXParQ: TScrollBox;
    PANLParQBottom: TPanel;
    PANLPGTitulo: TPanel;
    LABLParQ1: TLabel;
    PANLPCTitulo: TPanel;
    LABLParQ2: TLabel;
    PANLPG: TPanel;
    PANLPGInfo: TPanel;
    PANLPG1: TPanel;
    LABLPG: TLabel;
    PANLPG2: TPanel;
    DBRGPG1: TDBRadioGroup;
    DBRGPG2: TDBRadioGroup;
    PANLPG3: TPanel;
    LABLPG3: TRtfLabel;
    DBRGPG3: TDBRadioGroup;
    PANLPG4: TPanel;
    DBRGPG4: TDBRadioGroup;
    PANLPG5: TPanel;
    DBRGPG5: TDBRadioGroup;
    PANLPG6: TPanel;
    LABLPG6: TRtfLabel;
    DBRGPG6: TDBRadioGroup;
    PANLPG7: TPanel;
    DBRGPG7: TDBRadioGroup;
    GRBXSNPG: TGroupBox;
    LABLSPG: TLabel;
    LABLNPG: TLabel;
    BVELSN1: TBevel;
    PANLPGP1: TPanel;
    PANLPGP2: TPanel;
    PANLPGP3: TPanel;
    PANLPGP4: TPanel;
    PANLPGP5: TPanel;
    PANLPGP6: TPanel;
    PANLPGP7: TPanel;
    PANLPC: TPanel;
    PANLPC1: TPanel;
    DBRGPC1: TDBRadioGroup;
    PANLPCP1: TPanel;
    PANLPC2: TPanel;
    DBRGPC2: TDBRadioGroup;
    PANLPCP2: TPanel;
    PANLPC3: TPanel;
    LABLPC3: TRtfLabel;
    DBRGPC3: TDBRadioGroup;
    PANLPCP3: TPanel;
    PANLPCInfo: TPanel;
    LABLPC: TLabel;
    GRBXSNPC: TGroupBox;
    LABLSPC: TLabel;
    LABLNPC: TLabel;
    Bevel1: TBevel;
    PANLPC4: TPanel;
    LABLPC4: TRtfLabel;
    DBRGPC4: TDBRadioGroup;
    PANLPCP4: TPanel;
    PANLPC5: TPanel;
    LABLPC5: TRtfLabel;
    DBRGPC5: TDBRadioGroup;
    PANLPCP5: TPanel;
    PANLPC6: TPanel;
    LABLPC6: TRtfLabel;
    DBRGPC6: TDBRadioGroup;
    PANLPCP6: TPanel;
    PANLPC7: TPanel;
    LABLPC7: TRtfLabel;
    DBRGPC7: TDBRadioGroup;
    PANLPCP7: TPanel;
    PANLPC8: TPanel;
    LABLPC8: TRtfLabel;
    DBRGPC8: TDBRadioGroup;
    PANLPCP8: TPanel;
    PANLPC9: TPanel;
    LABLPC9: TRtfLabel;
    DBRGPC9: TDBRadioGroup;
    PANLPCP9: TPanel;
    PANLPC1A: TPanel;
    LABLPC1A: TRtfLabel;
    DBRGPC1A: TDBRadioGroup;
    PANLPCP1A: TPanel;
    PANLPC1B: TPanel;
    DBRGPC1B: TDBRadioGroup;
    PANLPCP1B: TPanel;
    PANLPC1C: TPanel;
    DBRGPC1C: TDBRadioGroup;
    PANLPCP1C: TPanel;
    PANLPC1Sub: TPanel;
    PANLPCLayer: TPanel;
    PANLPC2Sub: TPanel;
    PANLPC2A: TPanel;
    DBRGPC2A: TDBRadioGroup;
    PANLPCP2A: TPanel;
    PANLPC2B: TPanel;
    DBRGPC2B: TDBRadioGroup;
    PANLPCP2B: TPanel;
    PANLPC3Sub: TPanel;
    PANLPC3A: TPanel;
    LABLPC3A: TRtfLabel;
    DBRGPC3A: TDBRadioGroup;
    PANLPCP3A: TPanel;
    PANLPC3B: TPanel;
    DBRGPC3B: TDBRadioGroup;
    PANLPCP3B: TPanel;
    PANLPC3C: TPanel;
    DBRGPC3C: TDBRadioGroup;
    PANLPCP3C: TPanel;
    PANLPC3D: TPanel;
    LABLPC3D: TRtfLabel;
    DBRGPC3D: TDBRadioGroup;
    PANLPCP3D: TPanel;
    PANLPC3E: TPanel;
    DBRGPC3E: TDBRadioGroup;
    PANLPCP3E: TPanel;
    PANLPC4Sub: TPanel;
    PANLPC4A: TPanel;
    LABLPC4A: TRtfLabel;
    DBRGPC4A: TDBRadioGroup;
    PANLPCP4A: TPanel;
    PANLPC4B: TPanel;
    DBRGPC4B: TDBRadioGroup;
    PANLPCP4B: TPanel;
    PANLPC4C: TPanel;
    DBRGPC4C: TDBRadioGroup;
    PANLPCP4C: TPanel;
    PANLPC5Sub: TPanel;
    PANLPC5A: TPanel;
    LABLPC5A: TRtfLabel;
    DBRGPC5A: TDBRadioGroup;
    PANLPCP5A: TPanel;
    PANLPC5B: TPanel;
    DBRGPC5B: TDBRadioGroup;
    PANLPCP5B: TPanel;
    PANLPC6Sub: TPanel;
    PANLPC6A: TPanel;
    LABLPC6A: TRtfLabel;
    DBRGPC6A: TDBRadioGroup;
    PANLPCP6A: TPanel;
    PANLPC6B: TPanel;
    DBRGPC6B: TDBRadioGroup;
    PANLPCP6B: TPanel;
    PANLPC6C: TPanel;
    DBRGPC6C: TDBRadioGroup;
    PANLPCP6C: TPanel;
    PANLPC6D: TPanel;
    DBRGPC6D: TDBRadioGroup;
    PANLPCP6D: TPanel;
    PANLPC7Sub: TPanel;
    PANLPC7A: TPanel;
    LABLPC7A: TRtfLabel;
    DBRGPC7A: TDBRadioGroup;
    PANLPCP7A: TPanel;
    PANLPC7B: TPanel;
    DBRGPC7B: TDBRadioGroup;
    PANLPCP7B: TPanel;
    PANLPC7C: TPanel;
    DBRGPC7C: TDBRadioGroup;
    PANLPCP7C: TPanel;
    PANLPC8Sub: TPanel;
    PANLPC8A: TPanel;
    LABLPC8A: TRtfLabel;
    DBRGPC8A: TDBRadioGroup;
    PANLPCP8A: TPanel;
    PANLPC8B: TPanel;
    DBRGPC8B: TDBRadioGroup;
    PANLPCP8B: TPanel;
    PANLPC8C: TPanel;
    DBRGPC8C: TDBRadioGroup;
    PANLPCP8C: TPanel;
    PANLPC9Sub: TPanel;
    PANLPC9A: TPanel;
    DBRGPC9A: TDBRadioGroup;
    PANLPCP9A: TPanel;
    PANLPC9B: TPanel;
    DBRGPC9B: TDBRadioGroup;
    PANLPCP9B: TPanel;
    PANLPC9C: TPanel;
    DBRGPC9C: TDBRadioGroup;
    PANLPCP9C: TPanel;
    LABLPG1: TRtfLabel;
    LABLPG2: TRtfLabel;
    LABLPG4: TRtfLabel;
    LABLPG5: TRtfLabel;
    LABLPG7: TRtfLabel;
    LABLPC1: TRtfLabel;
    LABLPC2: TRtfLabel;
    LABLPC1B: TRtfLabel;
    LABLPC1C: TRtfLabel;
    LABLPC2A: TRtfLabel;
    LABLPC2B: TRtfLabel;
    LABLPC3B: TRtfLabel;
    LABLPC3C: TRtfLabel;
    LABLPC3E: TRtfLabel;
    LABLPC4B: TRtfLabel;
    LABLPC4C: TRtfLabel;
    LABLPC5B: TRtfLabel;
    LABLPC6B: TRtfLabel;
    LABLPC6C: TRtfLabel;
    LABLPC6D: TRtfLabel;
    LABLPC7B: TRtfLabel;
    LABLPC7C: TRtfLabel;
    LABLPC8B: TRtfLabel;
    LABLPC8C: TRtfLabel;
    LABLPC9A: TRtfLabel;
    LABLPC9B: TRtfLabel;
    LABLPC9C: TRtfLabel;
    BUTN: TButton;
    procedure DBRGChefeDaFamiliaChange(Sender: TObject);
    procedure KRLECodigoKeyPress(Sender: TObject; var Key: Char);
    procedure KRLEIdentidadeKeyPress(Sender: TObject; var Key: Char);
    procedure KRLENascimentoKeyPress(Sender: TObject; var Key: Char);
    procedure KRLEFoneResidencialKeyPress(Sender: TObject; var Key: Char);
    procedure KRLEFoneCelularKeyPress(Sender: TObject; var Key: Char);
    procedure DoKeyPressPesquisaParcial(Sender: TObject; var Key: Char);
    procedure KRKFormCreate(Sender: TObject);
    procedure DoScrollBoxMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure DoScrollBoxMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure DoBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure PGCTAvaliadosChanging(Sender: TObject; var AllowChange: Boolean);
    procedure DoPGChange(Sender: TObject);
    procedure DoRespostaMestreChange(Sender: TObject);
    procedure DoRTFLabelResize(Sender: TObject);
  private
    { Private declarations }
    procedure AjustarDBRadioGroup(const aDBRadioGroup: TDBRadioGroup);
    procedure AjustarConteudo(const aPanel: TPanel);
    procedure MostrarPerguntasComplementares;
    procedure MostrarSubPerguntas(const aDBRadioGroup: TDBRadioGroup);
  public
    { Public declarations }
  end;

implementation

uses DB, Themes
   { Units que não pertencem ao Delphi }
   , UKRDMAvaliadosGerenciar;

{$R *.dfm}

procedure TKRFMAvaliadosGerenciar.DoBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  { As três ações precisam ser aplicadas sempre no CLDS pai. O Refresh deve ser
  aplicado no CLDS pai porque somente este tem um Provider. O Cancel deve ser
  aplicado no pai ANTES de ser aplicado no filho. Ao terminar este procedure o
  Cancel do filho será executado. O Post precisa ser aplicado primeiro no filho
  e depois, no pai, a operação deve ser cancelada, pois nada estava sendo feito
  no pai. Ao final, nada mais precisa ser feito e por isso executa-se um Abort }
  case Button of
    nbRefresh: begin
      TKRDMAvaliadosGerenciar(Owner).CLDSAvaliados.Refresh;
      Abort;
    end;
    nbCancel: TKRDMAvaliadosGerenciar(Owner).CLDSAvaliados.Cancel;
    nbPost: begin
      TDBNavigator(Sender).DataSource.DataSet.Post;
      TKRDMAvaliadosGerenciar(Owner).CLDSAvaliados.Cancel;
      Abort;
    end;
  end;
end;

procedure TKRFMAvaliadosGerenciar.AjustarConteudo(const aPanel: TPanel);
var
  DBRG: TDBRadioGroup;
  PANL: TPanel;
begin
  DBRG := TDBRadioGroup(aPanel.Controls[1]);
  PANL := TPanel(aPanel.Controls[2]);

  if Assigned(DBRG) and Assigned(PANL) then
  begin
    { Desabilita o Autosize do TPanel }
    aPanel.AutoSize := False;

    { Diminui os componentes internos aos seus tamanhos mínimos }
    DBRG.Height := DBRG.Constraints.MinHeight;
    PANL.Height := PANL.Constraints.MinHeight;

    { Ajusta a posição horizontal do TDBRadioGroup }
    DBRG.Left := aPanel.Width - DBRG.Width - 1;

    { Ajusta a altura do TPanel de forma que ele contenha o texto completo }
    aPanel.AutoSize := True;

    { Ajusta o tamanho do RadioGroup e o indicador de questão para que os
    mesmos ocupem a altura do TPanel }
    DBRG.Height := aPanel.Height - 2;
    PANL.Height := aPanel.Height - 2;
  end;

  { Ajustar o interior do Radiogroup }
  AjustarDBRadioGroup(DBRG);
end;

procedure TKRFMAvaliadosGerenciar.AjustarDBRadioGroup(const aDBRadioGroup: TDBRadioGroup);
begin
  if aDBRadioGroup.ControlCount < 3 then
  begin
    with TBevel.Create(aDBRadioGroup) do
    begin
      Parent := aDBRadioGroup;
      Shape := bsLeftLine;
      Style := bsRaised;
      Width := 2;
      Height := Parent.Height - 8;
      Top := 4;
      Left := Parent.Width div 2 - Width div 2;
      Anchors := [akTop,akBottom];
    end;
  end;

  { Centralizando verticalmente }
  if aDBRadioGroup.ControlCount = 3 then
  begin
    aDBRadioGroup.Controls[1].Width := 15;
    aDBRadioGroup.Controls[1].Height := 15;
    aDBRadioGroup.Controls[1].Top := aDBRadioGroup.Height div 2 - aDBRadioGroup.Controls[1].Height div 2;

    aDBRadioGroup.Controls[2].Width := 15;
    aDBRadioGroup.Controls[2].Height := 15;
    aDBRadioGroup.Controls[2].Top := aDBRadioGroup.Height div 2 - aDBRadioGroup.Controls[2].Height div 2;

    { Centralizando horizontalmente nos dois quartos do retângulo }
    aDBRadioGroup.Controls[1].Left := aDBRadioGroup.Width div 4 - aDBRadioGroup.Controls[1].Width div 2;
    aDBRadioGroup.Controls[2].Left := aDBRadioGroup.Width div 4 - aDBRadioGroup.Controls[2].Width div 2 + aDBRadioGroup.Width div 2;
  end;
end;

procedure TKRFMAvaliadosGerenciar.DBRGChefeDaFamiliaChange(Sender: TObject);
begin
  inherited;
  DBRGGrauChefeFamilia.Visible := DBRGChefeDaFamilia.ItemIndex = 1;

  TKRDMAvaliadosGerenciar(Owner).CLDSDadosSocioDemograficos.KRKValidationChecks.Active := DBRGGrauChefeFamilia.Visible;

  if not DBRGGrauChefeFamilia.Visible and (TKRDMAvaliadosGerenciar(Owner).CLDSDadosSocioDemograficos.State in [dsEdit,dsInsert])  then
    TKRDMAvaliadosGerenciar(Owner).CLDSDadosSocioDemograficossm_grauinstrchefedefamilia.Clear;
end;

procedure TKRFMAvaliadosGerenciar.DoRespostaMestreChange(Sender: TObject);
begin
  inherited;
  MostrarSubPerguntas(TDBRadioGroup(Sender));
end;

procedure TKRFMAvaliadosGerenciar.KRLEFoneCelularKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMAvaliadosGerenciar(Owner).FiltrarAvaliados(TKRDMAvaliadosGerenciar(Owner).CLDSAvaliados
                                                   ,0
                                                   ,''
                                                   ,''
                                                   ,0
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,TKRKLabeledEdit(Sender).UnformattedText
                                                   ,'');
end;

procedure TKRFMAvaliadosGerenciar.KRLEFoneResidencialKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMAvaliadosGerenciar(Owner).FiltrarAvaliados(TKRDMAvaliadosGerenciar(Owner).CLDSAvaliados
                                                   ,0
                                                   ,''
                                                   ,''
                                                   ,0
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,TKRKLabeledEdit(Sender).UnformattedText
                                                   ,''
                                                   ,'');
end;

procedure TKRFMAvaliadosGerenciar.KRLEIdentidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMAvaliadosGerenciar(Owner).FiltrarAvaliados(TKRDMAvaliadosGerenciar(Owner).CLDSAvaliados
                                                   ,0
                                                   ,''
                                                   ,''
                                                   ,0
                                                   ,TKRKLabeledEdit(Sender).UnformattedText
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,'');
end;

procedure TKRFMAvaliadosGerenciar.KRLENascimentoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMAvaliadosGerenciar(Owner).FiltrarAvaliados(TKRDMAvaliadosGerenciar(Owner).CLDSAvaliados
                                                   ,0
                                                   ,''
                                                   ,''
                                                   ,StrToDateDef(TLabeledEdit(Sender).Text,0)
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,'');
end;

procedure TKRFMAvaliadosGerenciar.DoRTFLabelResize(Sender: TObject);
begin
  inherited;
  AjustarConteudo(TPanel(TRTFLabel(Sender).Parent));
end;

procedure TKRFMAvaliadosGerenciar.MostrarPerguntasComplementares;
var
  i, j: Word;
  PANLPCx: TPanel;
  PANLPCxSub: TPanel;
  EstadoAnterior: Boolean;
begin
  EstadoAnterior := PANLPCLayer.Visible;

  PANLPCLayer.Visible := (DBRGPG1.ItemIndex = 0)
                      or (DBRGPG2.ItemIndex = 0)
                      or (DBRGPG3.ItemIndex = 0)
                      or (DBRGPG4.ItemIndex = 0)
                      or (DBRGPG5.ItemIndex = 0)
                      or (DBRGPG6.ItemIndex = 0)
                      or (DBRGPG7.ItemIndex = 0);

  if EstadoAnterior <> PANLPCLayer.Visible then
  begin
    if PANLPCLayer.Visible then
    begin
      { Força todos os itens internos a executar um evento de redimensionamento }
      PANLPC.Padding.Right := PANLPC.Padding.Right + 1;
      PANLPC.Padding.Right := PANLPC.Padding.Right - 1;
    end;

    i := 0;
    repeat
      Inc(i);

      PANLPCx := TPanel(FindComponent(Format('PANLPC%u',[i])));

      if Assigned(PANLPCx) then
      begin
        if not PANLPCLayer.Visible and (TDBRadioGroup(PANLPCx.Controls[1]).DataSource.DataSet.state in [dsEdit,dsInsert]) then
          TDBRadioGroup(PANLPCx.Controls[1]).Field.Clear;

        TKRDMAvaliadosGerenciar(Owner).AlternarValidacao(TDBRadioGroup(PANLPCx.Controls[1]).DataSource.DataSet.Name
                                                        ,TDBRadioGroup(PANLPCx.Controls[1]).Field.FieldName
                                                        ,PANLPCLayer.Visible);

        PANLPCxSub := TPanel(FindComponent(Format('PANLPC%uSub',[i])));

        for j := 0 to Pred(PANLPCxSub.ControlCount) do
        begin
          if not PANLPCxSub.Visible and (TDBRadioGroup(TPanel(PANLPCxSub.Controls[j]).Controls[1]).DataSource.DataSet.state in [dsEdit,dsInsert]) then
            TDBRadioGroup(TPanel(PANLPCxSub.Controls[j]).Controls[1]).Field.Clear;

          TKRDMAvaliadosGerenciar(Owner).AlternarValidacao(TDBRadioGroup(TPanel(PANLPCxSub.Controls[j]).Controls[1]).DataSource.DataSet.Name
                                                          ,TDBRadioGroup(TPanel(PANLPCxSub.Controls[j]).Controls[1]).Field.FieldName
                                                          ,PANLPCxSub.Visible);
        end;
      end;
    until not Assigned(PANLPCx);
  end;
end;

procedure TKRFMAvaliadosGerenciar.MostrarSubPerguntas(const aDBRadioGroup: TDBRadioGroup);
var
  PANLPCxSub: TPanel;
  i: Byte;
begin
  { Otendo o painel com as subperguntas }
  PANLPCxSub := TPanel(FindComponent('PANL' + Copy(aDBRadioGroup.Name,5,Length(aDBRadioGroup.Name)) + 'Sub'));

  { Se há um painel de subperguntas realiza alguns procedimentos }
  if Assigned(PANLPCxSub) then
  begin
    { ajusta a visibilidade de acordo com a resposta mestre escolhida }
    PANLPCxSub.Visible := aDBRadioGroup.ItemIndex = 0;

    { Caso o painel de subperguntas esteja visível, ajusta sua posição vertical
    de forma que ele apareça imediatamente abaixo da pergunta mestre. Isso é
    feito ajustando o Top de forma que ele seja exatamente o meio da altura do
    mestre, mais 1. Além disso devemos forçar um ajuste do conteúdo }
    if PANLPCxSub.Visible then
    begin
      PANLPCxSub.Top := aDBRadioGroup.Parent.Top + aDBRadioGroup.Parent.Height div 2 + 1;

      { Força todos os itens internos a executar um evento de redimensionamento }
      PANLPCxSub.Padding.Right := PANLPCxSub.Padding.Right + 1;
      PANLPCxSub.Padding.Right := PANLPCxSub.Padding.Right - 1;
    end;

    { Ativa ou desativa os validadores correspondentes às subperguntas. Caso o
    painel de subperguntas esteja visível, ativa a validação das subperguntas,
    do contrário, não }
    for i := 0 to Pred(PANLPCxSub.ControlCount) do
    begin
      if (not PANLPCxSub.Visible) and (TDBRadioGroup(TPanel(PANLPCxSub.Controls[i]).Controls[1]).DataSource.DataSet.state in [dsEdit,dsInsert]) then
        TDBRadioGroup(TPanel(PANLPCxSub.Controls[i]).Controls[1]).Field.Clear;

      TKRDMAvaliadosGerenciar(Owner).AlternarValidacao(TDBRadioGroup(TPanel(PANLPCxSub.Controls[i]).Controls[1]).DataSource.DataSet.Name
                                                      ,TDBRadioGroup(TPanel(PANLPCxSub.Controls[i]).Controls[1]).Field.FieldName
                                                      ,PANLPCxSub.Visible);
    end;
  end;
end;

procedure TKRFMAvaliadosGerenciar.DoPGChange(Sender: TObject);
begin
  inherited;
  MostrarPerguntasComplementares;
end;

procedure TKRFMAvaliadosGerenciar.PGCTAvaliadosChanging(Sender: TObject; var AllowChange: Boolean);
begin
  inherited;
  case PGCTAvaliados.ActivePageIndex of
    1..5: begin
      if TKRDMAvaliadosGerenciar(Owner).CLDSAvaliados.State = dsEdit then
      begin
        Application.MessageBox('Antes de acessar outra página conclua a edição na página atual confirmando-a ou cancelando-a','Edição em andamento: Não é possível mudar de página',MB_ICONWARNING);
        AllowChange := False;
      end;
    end;
  end;
end;

procedure TKRFMAvaliadosGerenciar.DoScrollBoxMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  with TScrollBox(Sender).VertScrollBar Do
  begin
    if (Position <= (Range - Increment)) then
      Position := Position + Increment
    else
      Position := Range - Increment;
  end;
end;

procedure TKRFMAvaliadosGerenciar.DoScrollBoxMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  with TScrollBox(Sender).VertScrollBar do
  begin
    if (Position >= Increment) then
      Position := Position - Increment
    else
      Position := 0;
  end;
end;

//procedure TForm.FormMouseWheel(Sender: TObject; Shift: TShiftState;
//WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
//Var
//msg: Cardinal;
//code: Cardinal;
//i, n: Integer;
//begin
//If WindowFromPoint( mouse.Cursorpos ) = scrollbox1.Handle Then Begin
//Handled := true;
//If ssShift In Shift Then
//msg := WM_HSCROLL
//Else
//msg := WM_VSCROLL;
//
//If WheelDelta < 0 Then
//code := SB_LINEDOWN
//Else
//code := SB_LINEUP;
//
//n:= Mouse.WheelScrollLines;
//For i:= 1 to n Do
//scrollbox1.Perform( msg, code, 0 );
//scrollbox1.Perform( msg, SB_ENDSCROLL, 0 );
//End;
//end;

procedure TKRFMAvaliadosGerenciar.KRKFormCreate(Sender: TObject);
begin
  inherited;
  SCBXDadosSocioDemograficos.VertScrollBar.Position := 0;
  SCBXSinaisESintomas.VertScrollBar.Position := 0;
  SCBXParQ.VertScrollbar.Position := 0;
end;

procedure TKRFMAvaliadosGerenciar.KRLECodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMAvaliadosGerenciar(Owner).FiltrarAvaliados(TKRDMAvaliadosGerenciar(Owner).CLDSAvaliados
                                                   ,StrToIntDef(TKRKLabeledEdit(Sender).UnformattedText,0)
                                                   ,''
                                                   ,''
                                                   ,0
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,'');
end;

procedure TKRFMAvaliadosGerenciar.DoKeyPressPesquisaParcial(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMAvaliadosGerenciar(Owner).FiltrarAvaliados(TKRDMAvaliadosGerenciar(Owner).CLDSAvaliados
                                                   ,0
                                                   ,LAEDNome.Text
                                                   ,''
                                                   ,0
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,LAEDLogradouro.Text
                                                   ,''
                                                   ,''
                                                   ,LAEDBairro.Text
                                                   ,LAEDCidade.Text
                                                   ,''
                                                   ,''
                                                   ,''
                                                   ,'');
end;

initialization
  RegisterClass(TKRFMAvaliadosGerenciar)

end.

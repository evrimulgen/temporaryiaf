unit UKRFMAvaliadosGerenciar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRFMDBAwareBasico, ActnList, ImgList, StdCtrls, ComCtrls, ToolWin,
  Grids, DBGrids, KRK.Components.DataControls.DBGrid, DBCtrls, Mask,
  KRK.Components.DataControls.LabeledDBEdit, ExtCtrls,
  KRK.Components.AdditionalControls.LabeledEdit,
  KRK.Components.StandardControls.Panel;

type
  TDBRadioGroup = class(DBCtrls.TDBRadioGroup)
  protected
    procedure Paint; override;
  end;

  TGroupBox = class(StdCtrls.TGroupBox)
  protected
    procedure Paint; override;
  end;

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
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    PANLParQ1: TPanel;
    LABLParQ1: TLabel;
    PANLParQ2: TPanel;
    LABLParQ2: TLabel;
    PANLPG: TPanel;
    KRPAPG: TKRKPanel;
    PANLPG1: TPanel;
    LABLPG1: TLabel;
    LABLPG: TLabel;
    PANLPG2: TPanel;
    LABLPG2: TLabel;
    DBRGPG1: TDBRadioGroup;
    DBRGPG2: TDBRadioGroup;
    PANLPG3: TPanel;
    LABLPG3: TLabel;
    DBRGPG3: TDBRadioGroup;
    PANLPG4: TPanel;
    LABLPG4: TLabel;
    DBRGPG4: TDBRadioGroup;
    PANLPG5: TPanel;
    LABLPG5: TLabel;
    DBRGPG5: TDBRadioGroup;
    PANLPG6: TPanel;
    LABLPG6: TLabel;
    DBRGPG6: TDBRadioGroup;
    PANLPG7: TPanel;
    LABLPG7: TLabel;
    DBRGPG7: TDBRadioGroup;
    GRBXSN1: TGroupBox;
    LABLS1: TLabel;
    LABLN1: TLabel;
    BVELSN1: TBevel;
    PANLPGP1: TPanel;
    PANLPGP2: TPanel;
    PANLPGP3: TPanel;
    PANLPGP4: TPanel;
    PANLPGP5: TPanel;
    PANLPGP6: TPanel;
    PANLPGP7: TPanel;
    PANLPC: TPanel;
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
    procedure TBSHParQShow(Sender: TObject);
    procedure DoPanelQuestaoResize(Sender: TObject);
    procedure DoPGChange(Sender: TObject);
  private
    { Private declarations }
    procedure AjustarDBRadioGroup(const aDBRadioGroup: TDBRadioGroup);
    procedure AjustarConteudo(const aPanel: TPanel);
    procedure MostrarPerguntasComplementares;
  public
    { Public declarations }
  end;

implementation

uses UKRDMAvaliadosGerenciar, DB, Themes;

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
  i: Byte;
  LABL: TLabel;
  DBRG: TDBRadioGroup;
  PANL: TPanel;
  DORE: TNotifyEvent;
begin
  DORE := aPanel.OnResize;
  try
    aPanel.OnResize := nil;
    LABL := nil;
    DBRG := nil;
    PANL := nil;

    for i := 0 to Pred(aPanel.ControlCount) do
    begin
      if aPanel.Controls[i] is TLabel then
        LABL := TLabel(aPanel.Controls[i])
      else if aPanel.Controls[i] is TDBRadioGroup then
        DBRG := TDBRadioGroup(aPanel.Controls[i])
      else if aPanel.Controls[i] is TPanel then
        PANL := TPanel(aPanel.Controls[i]);
    end;

    if Assigned(DBRG) and Assigned(LABL) and Assigned(PANL) then
    begin
      { Diminui todos os componentes aos seus tamanhos mínimos }
      DBRG.Height := DBRG.Constraints.MinHeight;
      LABL.Height := LABL.Constraints.MinHeight;
      PANL.Height := PANL.Constraints.MinHeight;
      aPanel.Height := aPanel.Constraints.MinHeight;

      { Faz o Label se ajustar ao seu conteúdo }
      LABL.AutoSize := False;
      LABL.AutoSize := True;

      { Faz o Panel se ajustar ao seu conteúdo }
      aPanel.AutoSize := False;
      aPanel.AutoSize := True;

      { Ajusta o tamanho do RadioGroup e o indicador de questão para que os
      mesmos ocupem a altura correta }
      DBRG.Height := aPanel.Height - 2;
      PANL.Height := aPanel.Height - 2;
    end;

    { Reajustar o interior do Radiogroup }
    if DBRG.Tag = 1 then
    begin
      { Centralizando verticalmente }
      DBRG.Controls[1].Width := 15;
      DBRG.Controls[1].Height := 15;
      DBRG.Controls[1].Top := DBRG.Height div 2 - DBRG.Controls[1].Height div 2;

      DBRG.Controls[2].Width := 15;
      DBRG.Controls[2].Height := 15;
      DBRG.Controls[2].Top := DBRG.Height div 2 - DBRG.Controls[2].Height div 2;

      { Centralizando horizontalmente nos dois quartos do retângulo }
      DBRG.Controls[1].Left := DBRG.Width div 4 - DBRG.Controls[1].Width div 2;
      DBRG.Controls[2].Left := DBRG.Width div 4 - DBRG.Controls[2].Width div 2 + DBRG.Width div 2;
    end;
  finally
    aPanel.OnResize := DORE;
  end;
end;

procedure TKRFMAvaliadosGerenciar.AjustarDBRadioGroup(const aDBRadioGroup: TDBRadioGroup);
begin
  if aDBRadioGroup.Tag = 0 then
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

    { Centralizando verticalmente }
    aDBRadioGroup.Controls[1].Width := 15;
    aDBRadioGroup.Controls[1].Height := 15;
    aDBRadioGroup.Controls[1].Top := aDBRadioGroup.Height div 2 - aDBRadioGroup.Controls[1].Height div 2;

    aDBRadioGroup.Controls[2].Width := 15;
    aDBRadioGroup.Controls[2].Height := 15;
    aDBRadioGroup.Controls[2].Top := aDBRadioGroup.Height div 2 - aDBRadioGroup.Controls[2].Height div 2;

    { Centralizando horizontalmente nos dois quartos do retângulo }
    aDBRadioGroup.Controls[1].Left := aDBRadioGroup.Width div 4 - aDBRadioGroup.Controls[1].Width div 2;
    aDBRadioGroup.Controls[2].Left := aDBRadioGroup.Width div 4 - aDBRadioGroup.Controls[2].Width div 2 + aDBRadioGroup.Width div 2;

    aDBRadioGroup.Tag := 1;
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

procedure TKRFMAvaliadosGerenciar.MostrarPerguntasComplementares;
begin
  PANLPC.Visible := (DBRGPG1.ItemIndex = 0)
                 or (DBRGPG2.ItemIndex = 0)
                 or (DBRGPG3.ItemIndex = 0)
                 or (DBRGPG4.ItemIndex = 0)
                 or (DBRGPG5.ItemIndex = 0)
                 or (DBRGPG6.ItemIndex = 0)
                 or (DBRGPG7.ItemIndex = 0);
  PANLParQ2.Visible := PANLPC.Visible;
end;

procedure TKRFMAvaliadosGerenciar.DoPanelQuestaoResize(Sender: TObject);
begin
  inherited;
  AjustarConteudo(TPanel(Sender));
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

procedure TKRFMAvaliadosGerenciar.TBSHParQShow(Sender: TObject);
begin
  inherited;
  { Ajustando DBRadioGroups da página Par-Q+ }
  AjustarDBRadioGroup(DBRGPG1);
  AjustarDBRadioGroup(DBRGPG2);
  AjustarDBRadioGroup(DBRGPG3);
  AjustarDBRadioGroup(DBRGPG4);
  AjustarDBRadioGroup(DBRGPG5);
  AjustarDBRadioGroup(DBRGPG6);
  AjustarDBRadioGroup(DBRGPG7);
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
  TBSHDadosSocioDemograficos.TabVisible := False;
  TBSHSinaisESintomas.TabVisible := False;
  TBSHParametrosFisiologicos.TabVisible := False;
  TBSHParQ.TabVisible := False;
  TBSHRastreioDeSarcopenia.TabVisible := False;
  DBRGGrauChefeFamilia.Hide;

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

{ TDBRadioGroup }

procedure TDBRadioGroup.Paint;
var
  H: Integer;
  R: TRect;
  Flags: Longint;
begin
  if ThemeControl(Self) then
    inherited
  else
    with Canvas do
    begin
      Font := Self.Font;
      H := 0;

      if Text <> '' then
      begin
        H := TextHeight('Wg');
        R := Rect(0, H div 2 - 1, Width, Height);
      end
      else
        R := Rect(0, 0, Width, Height);

      if Ctl3D then
      begin
        Inc(R.Left);
        Inc(R.Top);
        Brush.Color := clBtnHighlight;
        FrameRect(R);
        OffsetRect(R, -1, -1);
        Brush.Color := clBtnShadow;
      end
      else
        Brush.Color := clWindowFrame;

      FrameRect(R);

      if Text <> '' then
      begin
        if not UseRightToLeftAlignment then
          R := Rect(8, 0, 0, H)
        else
          R := Rect(R.Right - Canvas.TextWidth(Text) - 8, 0, 0, H);

        Flags := DrawTextBiDiModeFlags(DT_SINGLELINE);
        DrawText(Handle, Text, Length(Text), R, Flags or DT_CALCRECT);
        Brush.Color := Color;
        DrawText(Handle, Text, Length(Text), R, Flags);
      end;
    end;
end;

{ TGroupBox }

procedure TGroupBox.Paint;
var
  H: Integer;
  R: TRect;
  Flags: Longint;
begin
  if ThemeControl(Self) then
    inherited
  else
    with Canvas do
    begin
      Font := Self.Font;
      H := 0;

      if Text <> '' then
      begin
        H := TextHeight('Wg');
        R := Rect(0, H div 2 - 1, Width, Height);
      end
      else
        R := Rect(0, 0, Width, Height);

      if Ctl3D then
      begin
        Inc(R.Left);
        Inc(R.Top);
        Brush.Color := clBtnHighlight;
        FrameRect(R);
        OffsetRect(R, -1, -1);
        Brush.Color := clBtnShadow;
      end
      else
        Brush.Color := clWindowFrame;

      FrameRect(R);

      if Text <> '' then
      begin
        if not UseRightToLeftAlignment then
          R := Rect(8, 0, 0, H)
        else
          R := Rect(R.Right - Canvas.TextWidth(Text) - 8, 0, 0, H);

        Flags := DrawTextBiDiModeFlags(DT_SINGLELINE);
        DrawText(Handle, Text, Length(Text), R, Flags or DT_CALCRECT);
        Brush.Color := Color;
        DrawText(Handle, Text, Length(Text), R, Flags);
      end;
    end;
end;

initialization
  RegisterClass(TKRFMAvaliadosGerenciar)

end.

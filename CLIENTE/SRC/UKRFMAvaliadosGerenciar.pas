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
    procedure DBRGChefeDaFamiliaChange(Sender: TObject);
    procedure KRLECodigoKeyPress(Sender: TObject; var Key: Char);
    procedure KRLEIdentidadeKeyPress(Sender: TObject; var Key: Char);
    procedure KRLENascimentoKeyPress(Sender: TObject; var Key: Char);
    procedure KRLEFoneResidencialKeyPress(Sender: TObject; var Key: Char);
    procedure KRLEFoneCelularKeyPress(Sender: TObject; var Key: Char);
    procedure DoKeyPressPesquisaParcial(Sender: TObject; var Key: Char);
    procedure KRKFormCreate(Sender: TObject);
    procedure SCBXDadosSocioDemograficosMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure SCBXDadosSocioDemograficosMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure DoBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure PGCTAvaliadosChanging(Sender: TObject; var AllowChange: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses UKRDMAvaliadosGerenciar, DB;

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

procedure TKRFMAvaliadosGerenciar.SCBXDadosSocioDemograficosMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  with SCBXDadosSocioDemograficos.VertScrollBar Do
  begin
    if (Position <= (Range - Increment)) then
      Position := Position + Increment
    else
      Position := Range - Increment;
  end;
end;

procedure TKRFMAvaliadosGerenciar.SCBXDadosSocioDemograficosMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  with SCBXDadosSocioDemograficos.VertScrollBar do
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
  TBSHDadosSocioDemograficos.TabVisible := False;
  TBSHSinaisESintomas.TabVisible := False;
  TBSHParametrosFisiologicos.TabVisible := False;
  TBSHParQ.TabVisible := False;
  DBRGGrauChefeFamilia.Hide;

  SCBXDadosSocioDemograficos.VertScrollBar.Position := 0;
  SCBXSinaisESintomas.VertScrollBar.Position := 0;
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

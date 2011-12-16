unit UKRFMSegurancaEPermissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRFMDBAwareBasico, Mask, DBCtrls, Buttons, pngimage, ExtCtrls,
  StdCtrls, Grids, DBGrids, KRK.Components.DataControls.DBGrid, ComCtrls,
  ActnList, ImgList, ToolWin, KRK.Components.DataControls.LabeledDBEdit;

type
  TKRFMSegurancaEPermissoes = class(TKRFMDBAwareBasico)
    PGCTSegurancaEPermissoes: TPageControl;
    TabSheet_Permissions: TTabSheet;
    PANLLayerSuperior: TPanel;
    PGCTUSUGRUConsultar: TPageControl;
    TabSheet_USU_Consultar: TTabSheet;
    GroupBoxUsuarioConsultaRapida: TGroupBox;
    Label3: TLabel;
    LAEDUSU_VA_NOME: TLabeledEdit;
    LAEDUSU_VA_LOGIN: TLabeledEdit;
    KRDGConsUsuarios: TKRKDBGrid;
    TabSheet_GRU_Consultar: TTabSheet;
    GroupBoxGrupoConsultaRapida: TGroupBox;
    LabeledEdit_GRU_VA_NOME: TLabeledEdit;
    GroupBoxEntidadesDoSistema: TGroupBox;
    GroupBoxFiltro: TGroupBox;
    LabelTipo: TLabel;
    Label2: TLabel;
    ComboBox_EDS_TI_TIPO: TComboBox;
    LabeledEdit_EDS_VA_NOME: TLabeledEdit;
    BitBtn_EDS_AdicionarA: TBitBtn;
    KRDGConsEntidadesDoSistema: TKRKDBGrid;
    PANLFooter: TPanel;
    PGCTPermissoes: TPageControl;
    TBSHGRU: TTabSheet;
    PANLGRULayerTop: TPanel;
    GroupBoxGrupoConsultaRapida2: TGroupBox;
    LabelGrupoConsultarTipoDaEntidade: TLabel;
    LabelE2: TLabel;
    ComboBox_PDG_TI_TIPO: TComboBox;
    LabeledEdit_PDG_VA_NOME: TLabeledEdit;
    GroupBoxGrupoLegenda: TGroupBox;
    ImageGrupoSim: TImage;
    ImageGrupoNao: TImage;
    LabelGrupoSim: TLabel;
    LabelGrupoNao: TLabel;
    ImageGrupoNaoSeAplica: TImage;
    LabelGrupoNaoSeAplica: TLabel;
    TBSHUSU: TTabSheet;
    PANLUSULayerTop: TPanel;
    GroupBoxUsuarioConsultaRapida2: TGroupBox;
    LabelTipo2: TLabel;
    LabelE: TLabel;
    ComboBox_PDU_TI_TIPO: TComboBox;
    LabeledEdit_PDU_VA_NOME: TLabeledEdit;
    GroupBoxUsuarioLegenda: TGroupBox;
    LabelUsuarioAutorizado: TLabel;
    LabelUsuarioDesaltoriza: TLabel;
    LabelUsuarioNaoAplicavel: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    TabSheet_USU: TTabSheet;
    GroupBoxUsuariosConsultar2: TGroupBox;
    LabelE3: TLabel;
    LabeledEdit_USU_VA_NOME2: TLabeledEdit;
    LabeledEdit_USU_VA_LOGIN2: TLabeledEdit;
    GroupBox_GDU: TGroupBox;
    Panel_GDU_Info: TPanel;
    Label_GDU_Info: TLabel;
    BitBtn_GDU_Adicionar: TBitBtn;
    BitBtn_GDU_Remover: TBitBtn;
    GroupBoxUsuariosCadastrar: TGroupBox;
    KRDE_USU_CH_SENHA: TKRKLabeledDBEdit;
    KRDE_USU_VA_EMAIL: TKRKLabeledDBEdit;
    TabSheet_GRU: TTabSheet;
    GroupBoxGruposConsultar: TGroupBox;
    LabeledEdit_GRU_VA_NOME2: TLabeledEdit;
    Panel_GRU_Layer: TPanel;
    SpeedButton_GRU_Delete: TSpeedButton;
    SpeedButton_GRU_Refresh: TSpeedButton;
    SpeedButton_GRU_Edit: TSpeedButton;
    SpeedButton_GRU_Insert: TSpeedButton;
    SpeedButton_GRU_First: TSpeedButton;
    SpeedButton_GRU_Previous: TSpeedButton;
    SpeedButton_GRU_Next: TSpeedButton;
    SpeedButton_GRU_Last: TSpeedButton;
    SpeedButton_GRU_Post: TSpeedButton;
    SpeedButton_GRU_Cancel: TSpeedButton;
    GroupBoxGruposCadastrar: TGroupBox;
    LabelGrupoNome: TLabel;
    LabelGrupoDescricao: TLabel;
    DBEdit_GRU_VA_NOME: TDBEdit;
    DBEdit_GRU_VA_DESCRICAO: TDBEdit;
    DBNAUsuarios: TDBNavigator;
    PANLGerenciamentoDeUsuarios: TPanel;
    PANLUsariosEGrupos: TPanel;
    KRDE_USU_VA_NOME: TKRKLabeledDBEdit;
    KRDE_USU_VA_LOGIN: TKRKLabeledDBEdit;
    PANLKRDGUsuarios: TPanel;
    KRDGUsuarios: TKRKDBGrid;
    GRBXKRDGUsuarios: TGroupBox;
    STTXFiltroIDUUsuarios: TStaticText;
    procedure LAEDUSU_VA_NOMEKeyPress(Sender: TObject; var Key: Char);
    procedure LAEDUSU_VA_LOGINKeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit_EDS_VA_NOMEKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_EDS_TI_TIPOChange(Sender: TObject);
    procedure LabeledEdit_USU_VA_NOME2KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit_USU_VA_LOGIN2KeyPress(Sender: TObject; var Key: Char);
    procedure DBNAUsuariosBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
    procedure FiltrarEntidadesDoSistema;
  public
    { Public declarations }
  end;

implementation

uses UKRDMSegurancaEPermissoes;

{$R *.dfm}

procedure TKRFMSegurancaEPermissoes.ComboBox_EDS_TI_TIPOChange(Sender: TObject);
begin
  inherited;
  FiltrarEntidadesDoSistema;
end;

procedure TKRFMSegurancaEPermissoes.DBNAUsuariosBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
//  a regra é: se eu pressiono refresh e o parametro referente a chave contiver o
//  valor -1, significa que esta é a primeira vez que pressiono o botão de
//  refresh e que uma consulta não foi realizada e neste caso preciso limpar o
//  valor deste parametro. e isso vai trazer todos os registros disponiveis.
//  Caso o valor do parametro nao seja -1 então uma busca já foi feita e neste caso
//  o refresh deve ser executado sem intervenções
//
//  Crie uma forma de exibir o valor dos parametros (filtros) próximo ao DBnavigator ou ao grid
  if Button = nbRefresh then
end;

procedure TKRFMSegurancaEPermissoes.FiltrarEntidadesDoSistema;
var
  Tipo: ShortInt;
begin
  case ComboBox_EDS_TI_TIPO.ItemIndex of
    1: Tipo := 0;
    2: Tipo := 1;
    else
      Tipo := -1;
  end;

  TKRDMSegurancaEPermissoes(Owner).FiltrarEntidadesDoSistema(0,LabeledEdit_EDS_VA_NOME.Text,Tipo);
end;

procedure TKRFMSegurancaEPermissoes.LabeledEdit_EDS_VA_NOMEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    FiltrarEntidadesDoSistema;
end;

procedure TKRFMSegurancaEPermissoes.LabeledEdit_USU_VA_LOGIN2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMSegurancaEPermissoes(Owner).FiltrarUsuariosIDU(0,'',TLabeledEdit(Sender).Text,'','');
end;

procedure TKRFMSegurancaEPermissoes.LabeledEdit_USU_VA_NOME2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMSegurancaEPermissoes(Owner).FiltrarUsuariosIDU(0,TLabeledEdit(Sender).Text,'','','');
end;

procedure TKRFMSegurancaEPermissoes.LAEDUSU_VA_LOGINKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMSegurancaEPermissoes(Owner).FiltrarUsuarios(0,'',TLabeledEdit(Sender).Text,'','');
end;

procedure TKRFMSegurancaEPermissoes.LAEDUSU_VA_NOMEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMSegurancaEPermissoes(Owner).FiltrarUsuarios(0,TLabeledEdit(Sender).Text,'','','');
end;

initialization
  RegisterClass(TKRFMSegurancaEPermissoes)

end.

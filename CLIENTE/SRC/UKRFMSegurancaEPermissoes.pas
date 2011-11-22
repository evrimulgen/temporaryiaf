unit UKRFMSegurancaEPermissoes;

{ Anak Krakatoa Form. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  KRK.Wizards.Form, Mask, DBCtrls, Buttons, ExtCtrls, StdCtrls, ComCtrls,
  pngimage;

type
  TKRFMSegurancaEPermissoes = class(TKRKForm)
    PGCTSegurancaEPermissoes: TPageControl;
    TabSheet_Permissions: TTabSheet;
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
    GroupBoxUsuarioConsultaRapida2: TGroupBox;
    LabelTipo2: TLabel;
    LabelE: TLabel;
    ComboBox_PDU_TI_TIPO: TComboBox;
    LabeledEdit_PDU_VA_NOME: TLabeledEdit;
    GroupBoxUsuarioLegenda: TGroupBox;
    LabelUsuarioAutorizado: TLabel;
    LabelUsuarioDesaltoriza: TLabel;
    LabelUsuarioNaoAplicavel: TLabel;
    GroupBoxEntidadesDoSistema: TGroupBox;
    GroupBoxFiltro: TGroupBox;
    LabelTipo: TLabel;
    Label2: TLabel;
    ComboBox_EDS_TI_TIPO: TComboBox;
    LabeledEdit_EDS_VA_NOME: TLabeledEdit;
    BitBtn_EDS_AdicionarA: TBitBtn;
    PGCTUSUGRUConsultar: TPageControl;
    TabSheet_USU_Consultar: TTabSheet;
    GroupBoxUsuarioConsultaRapida: TGroupBox;
    Label3: TLabel;
    LAEDUSU_VA_NOME: TLabeledEdit;
    LAEDUSU_VA_LOGIN: TLabeledEdit;
    TabSheet_GRU_Consultar: TTabSheet;
    GroupBoxGrupoConsultaRapida: TGroupBox;
    LabeledEdit_GRU_VA_NOME: TLabeledEdit;
    TabSheet_USU: TTabSheet;
    GroupBoxUsuariosConsultar2: TGroupBox;
    LabelE3: TLabel;
    LabeledEdit_USU_VA_NOME2: TLabeledEdit;
    LabeledEdit_USU_VA_LOGIN2: TLabeledEdit;
    Panel_USU_Layer: TPanel;
    SpeedButton_USU_Delete: TSpeedButton;
    SpeedButton_USU_Refresh: TSpeedButton;
    SpeedButton_USU_Edit: TSpeedButton;
    SpeedButton_USU_Insert: TSpeedButton;
    SpeedButton_USU_First: TSpeedButton;
    SpeedButton_USU_Previous: TSpeedButton;
    SpeedButton_USU_Next: TSpeedButton;
    SpeedButton_USU_Last: TSpeedButton;
    SpeedButton_USU_Post: TSpeedButton;
    SpeedButton_USU_Cancel: TSpeedButton;
    GroupBox_GDU: TGroupBox;
    Panel_GDU_Info: TPanel;
    Label_GDU_Info: TLabel;
    BitBtn_GDU_Adicionar: TBitBtn;
    BitBtn_GDU_Remover: TBitBtn;
    GroupBoxUsuariosCadastrar: TGroupBox;
    LabelUsuarioNome: TLabel;
    LabelUsuarioLogin: TLabel;
    LabelSenha1: TLabel;
    Label_USU_VA_EMAIL: TLabel;
    DBEdit_USU_VA_NOME: TDBEdit;
    DBEdit_USU_VA_LOGIN: TDBEdit;
    DBEdit_USU_TB_SENHA: TDBEdit;
    DBEdit_USU_VA_EMAIL: TDBEdit;
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
    PANLLayerSuperior: TPanel;
    PGCTPermissoes: TPageControl;
    TBSHGRU: TTabSheet;
    TBSHUSU: TTabSheet;
    PANLGRULayerTop: TPanel;
    PANLUSULayerTop: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
  private
    { Declarações privadas }
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
  end;

implementation

{$R *.dfm}

uses UKRDMSegurancaEPermissoes, Dialogs;

{ TKRFMSegurancaEPermissoes }

initialization
  RegisterClass(TKRFMSegurancaEPermissoes)

end.
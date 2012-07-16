unit UKRFMGerenciarPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRFMDBAwareBasico, ActnList, ImgList, StdCtrls, ComCtrls, ToolWin,
  Grids, DBGrids, KRK.Components.DataControls.DBGrid, DBCtrls, Mask,
  KRK.Components.DataControls.LabeledDBEdit, ExtCtrls;

type
  TKRFMGerenciarPacientes = class(TKRFMDBAwareBasico)
    PGCTPacientes: TPageControl;
    TBSHConsultar: TTabSheet;
    TBSHGerenciar: TTabSheet;
    KRDGPacientes: TKRKDBGrid;
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
    DBNAGerenciarPacientes: TDBNavigator;
    KLDENome: TKRKLabeledDBEdit;
    DBCXUF: TDBComboBox;
    DBNAConsultarPacientes: TDBNavigator;
    PANLConsultarPacientes: TPanel;
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
    LAEDTituloCBO: TLabeledEdit;
    DBRGChefeDaFamilia: TDBRadioGroup;
    DBRGGrauChefeFamilia: TDBRadioGroup;
    PANLPaddingBottom: TPanel;
    GRBXFiltroPacientes: TGroupBox;
    LABLFiltroPacientes: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses UKRDMGerenciarPacientes;

{$R *.dfm}

initialization
  RegisterClass(TKRFMGerenciarPacientes)

end.

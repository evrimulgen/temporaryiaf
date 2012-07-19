unit UKRFMGerenciarPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRFMDBAwareBasico, ActnList, ImgList, StdCtrls, ComCtrls, ToolWin,
  Grids, DBGrids, KRK.Components.DataControls.DBGrid, DBCtrls, Mask,
  KRK.Components.DataControls.LabeledDBEdit, ExtCtrls,
  KRK.Components.AdditionalControls.LabeledEdit;

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
    procedure DBRGChefeDaFamiliaChange(Sender: TObject);
    procedure KRLECodigoKeyPress(Sender: TObject; var Key: Char);
    procedure KRLEIdentidadeKeyPress(Sender: TObject; var Key: Char);
    procedure KRLENascimentoKeyPress(Sender: TObject; var Key: Char);
    procedure KRLEFoneResidencialKeyPress(Sender: TObject; var Key: Char);
    procedure KRLEFoneCelularKeyPress(Sender: TObject; var Key: Char);
    procedure DoKeyPressPesquisaParcial(Sender: TObject; var Key: Char);
    procedure KRKFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses UKRDMGerenciarPacientes, DB;

{$R *.dfm}

procedure TKRFMGerenciarPacientes.DBRGChefeDaFamiliaChange(Sender: TObject);
begin
  inherited;
  DBRGGrauChefeFamilia.Enabled := DBRGChefeDaFamilia.ItemIndex = 1;
  if not DBRGGrauChefeFamilia.Enabled and (TKRDMGerenciarPacientes(Owner).CLDSDadosSocioDemograficos.State in [dsEdit,dsInsert])  then
  begin
    TKRDMGerenciarPacientes(Owner).CLDSDadosSocioDemograficossm_grauinstrchefedefamilia.Clear;
    { TODO : Altere a regra de validação }
  end;
end;

procedure TKRFMGerenciarPacientes.KRLEFoneCelularKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMGerenciarPacientes(Owner).FiltrarPacientes(TKRDMGerenciarPacientes(Owner).CLDSPacientes
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

procedure TKRFMGerenciarPacientes.KRLEFoneResidencialKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMGerenciarPacientes(Owner).FiltrarPacientes(TKRDMGerenciarPacientes(Owner).CLDSPacientes
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

procedure TKRFMGerenciarPacientes.KRLEIdentidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMGerenciarPacientes(Owner).FiltrarPacientes(TKRDMGerenciarPacientes(Owner).CLDSPacientes
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

procedure TKRFMGerenciarPacientes.KRLENascimentoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMGerenciarPacientes(Owner).FiltrarPacientes(TKRDMGerenciarPacientes(Owner).CLDSPacientes
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

procedure TKRFMGerenciarPacientes.KRKFormCreate(Sender: TObject);
begin
  inherited;
  TBSHDadosSocioDemograficos.TabVisible := False;
  SCBXDadosSocioDemograficos.VertScrollBar.Position := 0;
end;

procedure TKRFMGerenciarPacientes.KRLECodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMGerenciarPacientes(Owner).FiltrarPacientes(TKRDMGerenciarPacientes(Owner).CLDSPacientes
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

procedure TKRFMGerenciarPacientes.DoKeyPressPesquisaParcial(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMGerenciarPacientes(Owner).FiltrarPacientes(TKRDMGerenciarPacientes(Owner).CLDSPacientes
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
  RegisterClass(TKRFMGerenciarPacientes)

end.

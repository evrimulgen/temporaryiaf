unit UKRFMSelecionarCBO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRFMDialogSelecao, DB, DBClient, Grids, DBGrids,
  KRK.Components.DataControls.DBGrid, StdCtrls,
  KRK.Components.AdditionalControls.LabeledEdit, ExtCtrls;

type
  TKRFMSelecionarCBO = class(TKRFMDialogSelecao)
    GRBXFiltro: TGroupBox;
    CLDSin_cbo_id: TIntegerField;
    CLDSch_codigo: TWideStringField;
    CLDSva_titulo: TWideStringField;
    CLDSen_tipo: TWideStringField;
    LAEDTitulo: TLabeledEdit;
    KRLECBO: TKRKLabeledEdit;
    CLDScbo: TStringField;
    procedure LAEDTituloKeyPress(Sender: TObject; var Key: Char);
    procedure KRLECBOKeyPress(Sender: TObject; var Key: Char);
    procedure KRKFormCreate(Sender: TObject);
    procedure DTSRDataChange(Sender: TObject; Field: TField);
    procedure CLDSCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses UKRDMAvaliadosGerenciar, UKRDMBasico, KRK.Wizards.Form
   , KRK.Lib.RegExp.Utils;

{$R *.dfm}

procedure TKRFMSelecionarCBO.CLDSCalcFields(DataSet: TDataSet);
begin
  inherited;
  CLDScbo.AsString := ApplyMask(KRLECBO.EditFormat.FormatScript,CLDSch_codigo.AsString);
end;

procedure TKRFMSelecionarCBO.DTSRDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if CLDS.RecordCount > 0 then
    KRKFormProperties.ButtonsPanel.DisabledButtons := []
  else
    KRKFormProperties.ButtonsPanel.DisabledButtons := [dbOk];
end;

procedure TKRFMSelecionarCBO.KRKFormCreate(Sender: TObject);
begin
  inherited;
  KRKFormProperties.ButtonsPanel.DisabledButtons := [];
end;

procedure TKRFMSelecionarCBO.KRLECBOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    if Trim(TKRKLabeledEdit(Sender).UnformattedText) = '' then
      Application.MessageBox('Por favor informe um critério de pesquisa no campo "CBO" antes de executar a consulta','Informe um critério de pesquisa',MB_ICONWARNING)
    else if Length(TKRKLabeledEdit(Sender).UnformattedText) < 6 then
      Application.MessageBox('Por favor informe 6 caracteres numéricos no campo "CBO" antes de executar a consulta','Informe o dado corretamente',MB_ICONWARNING)
    else
      TKRDMAvaliadosGerenciar(Owner).FiltrarCBO(UKRDMBasico.TClientDataSet(CLDS)
                                               ,0
                                               ,TKRKLabeledEdit(Sender).UnformattedText
                                               ,''
                                               ,'');
end;

procedure TKRFMSelecionarCBO.LAEDTituloKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    if Trim(TLabeledEdit(Sender).Text) = '' then
      Application.MessageBox('Por favor informe um critério de pesquisa no campo "Título" antes de executar a consulta','Informe um critério de pesquisa',MB_ICONWARNING)
    else
      TKRDMAvaliadosGerenciar(Owner).FiltrarCBO(UKRDMBasico.TClientDataSet(CLDS)
                                               ,0
                                               ,''
                                               ,'*' + TLabeledEdit(Sender).Text + '*'
                                               ,'');
end;

initialization
  RegisterClass(TKRFMSelecionarCBO)

end.

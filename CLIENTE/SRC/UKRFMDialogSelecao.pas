unit UKRFMDialogSelecao;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms
   , Dialogs, Grids, DBGrids, DB, KRK.Components.DataControls.DBGrid, DBClient
   , UKRFMDialogBasico;

type
  TKRFMDialogSelecao = class(TKRFMDialogBasico)
    KRDGSelecao: TKRKDBGrid;
    DTSR: TDataSource;
    CLDS: TClientDataSet;
    procedure KRKFormCancelButtonClick(Sender: TObject);
    procedure KRKFormOkButtonClick(Sender: TObject);
    procedure KRDGSelecaoAfterMultiselect(aSender: TObject; aMultiSelectEventTrigger: TMultiSelectEventTrigger);
    procedure KRKFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses KRK.Wizards.Form;

{$R *.dfm}

{ TKRFMDialogSelecao }

procedure TKRFMDialogSelecao.KRDGSelecaoAfterMultiselect(aSender: TObject; aMultiSelectEventTrigger: TMultiSelectEventTrigger);
var
  DisabledButtons: TDisabledButtons;
begin
  inherited;
  DisabledButtons := KRKFormProperties.ButtonsPanel.DisabledButtons;

  if KRDGSelecao.SelectedRows.Count > 0 then
    Exclude(DisabledButtons,dbOK)
  else
    Include(DisabledButtons,dbOK);

  KRKFormProperties.ButtonsPanel.DisabledButtons := DisabledButtons;
end;

procedure TKRFMDialogSelecao.KRKFormCancelButtonClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TKRFMDialogSelecao.KRKFormCreate(Sender: TObject);
var
  DisabledButtons: TDisabledButtons;
begin
  inherited;
  DisabledButtons := KRKFormProperties.ButtonsPanel.DisabledButtons;
  Include(DisabledButtons,dbOK);
  KRKFormProperties.ButtonsPanel.DisabledButtons := DisabledButtons;
end;

procedure TKRFMDialogSelecao.KRKFormOkButtonClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

initialization
  RegisterClass(TKRFMDialogSelecao)

end.

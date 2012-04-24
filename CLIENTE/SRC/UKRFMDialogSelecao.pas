unit UKRFMDialogSelecao;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms
   , Dialogs, UKRFMDialogBasico, Grids, DBGrids, DB
   , KRK.Components.DataControls.DBGrid, DBClient;

type
  TKRFMDialogSelecao = class(TKRFMDialogBasico)
    KRDGSelecao: TKRKDBGrid;
    DTSR: TDataSource;
    CLDS: TClientDataSet;
    procedure KRKFormCancelButtonClick(Sender: TObject);
    procedure KRKFormOkButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TKRFMDialogSelecao }

procedure TKRFMDialogSelecao.KRKFormCancelButtonClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TKRFMDialogSelecao.KRKFormOkButtonClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

initialization
  RegisterClass(TKRFMDialogSelecao)

end.

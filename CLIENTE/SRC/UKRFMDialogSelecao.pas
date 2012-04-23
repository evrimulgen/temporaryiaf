unit UKRFMDialogSelecao;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms
   , Dialogs, UKRFMDialogBasico, Grids, DBGrids,
  KRK.Components.DataControls.DBGrid, DB;

type
  TKRFMDialogSelecao = class(TKRFMDialogBasico)
    KRDGSelecao: TKRKDBGrid;
    DTSR: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TKRFMDialogSelecao)

end.

unit UKRFMSelecionarGrupo;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms
   , Dialogs, UKRFMDialogSelecao, DB, Grids, DBGrids
   , KRK.Components.DataControls.DBGrid;

type
  TKRFMSelecionarGrupo = class(TKRFMDialogSelecao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TKRFMSelecionarGrupo)

end.

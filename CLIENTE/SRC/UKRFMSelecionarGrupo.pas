unit UKRFMSelecionarGrupo;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms
   , Dialogs, UKRFMDialogSelecao, DB, Grids, DBGrids
   , KRK.Components.DataControls.DBGrid, DBClient;

type
  TKRFMSelecionarGrupo = class(TKRFMDialogSelecao)
    CLDSsm_grupos_id: TSmallintField;
    CLDSva_nome: TWideStringField;
    CLDSva_descricao: TWideStringField;
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

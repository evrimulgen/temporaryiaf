unit UKRFMSelecionarGrupo;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms
   , Dialogs, Grids, DBGrids, DB, KRK.Components.DataControls.DBGrid, DBClient
   , UKRFMDialogSelecao;

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

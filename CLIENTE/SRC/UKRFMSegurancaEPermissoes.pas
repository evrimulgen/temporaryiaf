unit UKRFMSegurancaEPermissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, UKRFMDBAwareBasico, Mask, Buttons, pngimage, ExtCtrls,
  StdCtrls, Grids, DBGrids, KRK.Components.DataControls.DBGrid, ComCtrls,
  ActnList, ImgList, ToolWin, KRK.Components.DataControls.LabeledDBEdit;

type
  TKRFMSegurancaEPermissoes = class(TKRFMDBAwareBasico)
    PGCTSegurancaEPermissoes: TPageControl;
    TabSheet_Permissions: TTabSheet;
    PANLLayerSuperior: TPanel;
    PGCTUSUGRUConsultar: TPageControl;
    TBSHUSUConsultar: TTabSheet;
    GroupBoxUsuarioConsultaRapida: TGroupBox;
    Label3: TLabel;
    LAEDUSU_VA_NOME: TLabeledEdit;
    LAEDUSU_VA_LOGIN: TLabeledEdit;
    KRDGConsUsuarios: TKRKDBGrid;
    TBSHGRUConsultar: TTabSheet;
    GroupBoxGrupoConsultaRapida: TGroupBox;
    LabeledEdit_GRU_VA_NOME: TLabeledEdit;
    GroupBoxEntidadesDoSistema: TGroupBox;
    GroupBoxFiltro: TGroupBox;
    LabelTipo: TLabel;
    Label2: TLabel;
    ComboBox_EDS_TI_TIPO: TComboBox;
    LabeledEdit_EDS_VA_NOME: TLabeledEdit;
    BBTNAdicionarEntidade: TBitBtn;
    KRDGConsEntidadesDoSistema: TKRKDBGrid;
    PANLFooter: TPanel;
    PGCTPermissoes: TPageControl;
    TBSHPDG: TTabSheet;
    PANLGRULayerTop: TPanel;
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
    TBSHPDU: TTabSheet;
    PANLUSULayerTop: TPanel;
    GroupBoxUsuarioConsultaRapida2: TGroupBox;
    LabelTipo2: TLabel;
    LabelE: TLabel;
    ComboBox_PDU_TI_TIPO: TComboBox;
    LabeledEdit_PDU_VA_NOME: TLabeledEdit;
    GroupBoxUsuarioLegenda: TGroupBox;
    LabelUsuarioAutorizado: TLabel;
    LabelUsuarioDesaltoriza: TLabel;
    LabelUsuarioNaoAplicavel: TLabel;
    IMAGConcedido: TImage;
    IMAGNegado: TImage;
    IMAGNaoAplica: TImage;
    TabSheet_USU: TTabSheet;
    GroupBoxUsuariosConsultar2: TGroupBox;
    LabelE3: TLabel;
    LabeledEdit_USU_VA_NOME2: TLabeledEdit;
    LabeledEdit_USU_VA_LOGIN2: TLabeledEdit;
    GroupBox_GDU: TGroupBox;
    Panel_GDU_Info: TPanel;
    Label_GDU_Info: TLabel;
    BitBtn_GDU_Adicionar: TBitBtn;
    BitBtn_GDU_Remover: TBitBtn;
    GroupBoxUsuariosCadastrar: TGroupBox;
    KRDE_USU_CH_SENHA: TKRKLabeledDBEdit;
    KRDE_USU_VA_EMAIL: TKRKLabeledDBEdit;
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
    DBNAUsuarios: TDBNavigator;
    PANLGerenciamentoDeUsuarios: TPanel;
    PANLUsariosEGrupos: TPanel;
    KRDE_USU_VA_NOME: TKRKLabeledDBEdit;
    KRDE_USU_VA_LOGIN: TKRKLabeledDBEdit;
    PANLKRDGUsuarios: TPanel;
    KRDGUsuarios: TKRKDBGrid;
    GRBXKRDGUsuarios: TGroupBox;
    LABLFiltroIDUUsuarios: TLabel;
    KRDGPDU: TKRKDBGrid;
    KRDGPDG: TKRKDBGrid;
    procedure LAEDUSU_VA_NOMEKeyPress(Sender: TObject; var Key: Char);
    procedure LAEDUSU_VA_LOGINKeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit_EDS_VA_NOMEKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_EDS_TI_TIPOChange(Sender: TObject);
    procedure LabeledEdit_USU_VA_NOME2KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit_USU_VA_LOGIN2KeyPress(Sender: TObject; var Key: Char);
    procedure PGCTUSUGRUConsultarChange(Sender: TObject);
    procedure KRKFormCreate(Sender: TObject);
    procedure KRDGPDUDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure KRDGPDUCellClick(Column: TColumn);
    procedure KRDGConsEntidadesDoSistemaAfterMultiselect(aSender: TObject; aMultiSelectEventTrigger: TMultiSelectEventTrigger);
    procedure KRDGUsuariosDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure FiltrarEntidadesDoSistema;
  public
    { Public declarations }
  end;

implementation

uses UKRDMSegurancaEPermissoes, DBClient;

{$R *.dfm}

procedure TKRFMSegurancaEPermissoes.ComboBox_EDS_TI_TIPOChange(Sender: TObject);
begin
  inherited;
  FiltrarEntidadesDoSistema;
end;

procedure TKRFMSegurancaEPermissoes.FiltrarEntidadesDoSistema;
var
  Tipo: ShortInt;
begin
  case ComboBox_EDS_TI_TIPO.ItemIndex of
    1: Tipo := 0; // TABELA
    2: Tipo := 1; // AÇÃO
    else
      Tipo := -1;
  end;

  TKRDMSegurancaEPermissoes(Owner).FiltrarEntidadesDoSistema(0,LabeledEdit_EDS_VA_NOME.Text,Tipo);
end;

procedure TKRFMSegurancaEPermissoes.KRDGConsEntidadesDoSistemaAfterMultiselect(aSender: TObject; aMultiSelectEventTrigger: TMultiSelectEventTrigger);
begin
  inherited;
  TKRDMSegurancaEPermissoes(Owner).ACTNAdicionarEntidade.Enabled := KRDGConsEntidadesDoSistema.SelectedRows.Count > 0;
end;

procedure TKRFMSegurancaEPermissoes.KRDGPDUCellClick(Column: TColumn);
begin
  inherited;
  if Column.FieldName = 'sm_ler' then
    TKRDMSegurancaEPermissoes(Owner).AlternarPermissao(pAcessar,odpUsuario)
  else if Column.FieldName = 'sm_inserir' then
    TKRDMSegurancaEPermissoes(Owner).AlternarPermissao(pInserir,odpUsuario)
  else if Column.FieldName = 'sm_alterar' then
		TKRDMSegurancaEPermissoes(Owner).AlternarPermissao(pAlterar,odpUsuario)
  else if Column.FieldName = 'sm_excluir' then
		TKRDMSegurancaEPermissoes(Owner).AlternarPermissao(pExcluir,odpUsuario);
end;

procedure TKRFMSegurancaEPermissoes.KRDGPDUDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
	OffsetLeft: Byte;
begin
	inherited;
  if (Column.FieldName = 'sm_ler') or (Column.FieldName = 'sm_inserir') or (Column.FieldName = 'sm_alterar') or (Column.FieldName = 'sm_excluir') then
  begin
    OffsetLeft := ((Rect.Right - Rect.Left) div 2) - 8;
    case Column.Field.AsInteger of
      -1: TKRKDBGrid(Sender).Canvas.Draw(Rect.Left + OffsetLeft,Rect.Top,IMAGNaoAplica.Picture.Graphic);
      0 : TKRKDBGrid(Sender).Canvas.Draw(Rect.Left + OffsetLeft,Rect.Top,IMAGNegado.Picture.Graphic);
      1 : TKRKDBGrid(Sender).Canvas.Draw(Rect.Left + OffsetLeft,Rect.Top,IMAGConcedido.Picture.Graphic);
    end;
  end;
end;

procedure TKRFMSegurancaEPermissoes.KRDGUsuariosDblClick(Sender: TObject);
begin
  inherited;
  ShowMessage(KRDGUsuarios.DataSource.DataSet.FieldByName('sm_usuarios_id').AsString);

end;

(*

procedure TXXXDataModule_Administration.ToggleUserModifyPermission(aModifyMode: TModifyMode);
const
	SQL_UPDATE =
    'UPDATE X[PDU.PERMISSOESDOSUSUARIOS]X PDU'#13#10 +
    '  JOIN X[EDS.ENTIDADESDOSISTEMA]X EDS ON (PDU.X[PDU.IN_ENTIDADESDOSISTEMA_ID]X = EDS.X[EDS.IN_ENTIDADESDOSISTEMA_ID]X)'#13#10 +
    '   SET PDU.X[TI_LER]X = IF(PDU.%s = 0,1,PDU.X[TI_LER]X)'#13#10 +
    '     , PDU.%0:s = IF(EDS.X[EDS.TI_TIPO]X = 0,IF(PDU.%0:s = 0,1,0),-1)'#13#10 +
    ' WHERE PDU.X[PDU.SM_USUARIOS_ID]X = %u'#13#10 +
    '   AND PDU.X[PDU.IN_ENTIDADESDOSISTEMA_ID]X = %u';
var
	ModifyField: ShortString;
	BS: TBookmark;
begin
  	inherited;
	DoBeforeEdit(PERMISSOESDOSUSUARIOS);

	if (PERMISSOESDOSUSUARIOS.RecordCount > 0)
       and not ((Configurations.AuthenticatedUser.Id = Cardinal(USUARIOS.FieldByName(Configurations.UserTableKeyFieldName).AsInteger))
                and ((PERMISSOESDOSUSUARIOS.FieldByName('NOME').AsString = Configurations.AdministrativeActionName)
                     or (PERMISSOESDOSUSUARIOS.FieldByName('NOME').AsString = Configurations.UserPermissionTableTableName))) then
    begin
    	if PERMISSOESDOSUSUARIOS.FieldByName('TIPO').AsString = 'Tabela' then
        begin
            case aModifyMode of
                mmInsert: ModifyField := Configurations.PermissionTableInsertFieldName;
                mmUpdate: ModifyField := Configurations.PermissionTableUpdateFieldName;
                mmDelete: ModifyField := Configurations.PermissionTableDeleteFieldName;
            end;

            ExecuteQuery(DataModuleMain.ZConnections[0].Connection
                        ,Format(ReplaceSystemObjectNames(SQL_UPDATE)
                               ,[ModifyField
                                ,PERMISSOESDOSUSUARIOS.FieldByName(Configurations.UserPermissionTableUserFieldName).AsInteger
                                ,PERMISSOESDOSUSUARIOS.FieldByName(Configurations.UserPermissionTableEntityFieldName).AsInteger]));
            try
                BS := PERMISSOESDOSUSUARIOS.Bookmark;
                PERMISSOESDOSUSUARIOS.Refresh;
            finally
                PERMISSOESDOSUSUARIOS.Bookmark := BS;
            end;
        end;
    end;
end;

*)

procedure TKRFMSegurancaEPermissoes.KRKFormCreate(Sender: TObject);
begin
  inherited;
  TBSHPDU.TabVisible := True;
  TBSHPDG.TabVisible := False;
end;

procedure TKRFMSegurancaEPermissoes.LabeledEdit_EDS_VA_NOMEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    FiltrarEntidadesDoSistema;
end;

procedure TKRFMSegurancaEPermissoes.LabeledEdit_USU_VA_LOGIN2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMSegurancaEPermissoes(Owner).FiltrarUsuariosIDU(0,'',TLabeledEdit(Sender).Text,'','');
end;

procedure TKRFMSegurancaEPermissoes.LabeledEdit_USU_VA_NOME2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMSegurancaEPermissoes(Owner).FiltrarUsuariosIDU(0,TLabeledEdit(Sender).Text,'','','');
end;

procedure TKRFMSegurancaEPermissoes.LAEDUSU_VA_LOGINKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMSegurancaEPermissoes(Owner).FiltrarUsuarios(0,'',TLabeledEdit(Sender).Text,'','');
end;

procedure TKRFMSegurancaEPermissoes.LAEDUSU_VA_NOMEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    TKRDMSegurancaEPermissoes(Owner).FiltrarUsuarios(0,TLabeledEdit(Sender).Text,'','','');
end;

procedure TKRFMSegurancaEPermissoes.PGCTUSUGRUConsultarChange(Sender: TObject);
begin
  inherited;
  TBSHPDU.TabVisible := TPageControl(Sender).ActivePage = TBSHUSUConsultar;
  TBSHPDG.TabVisible := TPageControl(Sender).ActivePage = TBSHGRUConsultar;
end;

initialization
  RegisterClass(TKRFMSegurancaEPermissoes)

end.

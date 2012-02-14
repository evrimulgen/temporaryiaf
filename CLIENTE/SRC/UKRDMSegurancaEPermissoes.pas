unit UKRDMSegurancaEPermissoes;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  DBClient, UKRDMBasico, DB, ImgList, ActnList, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, KRK.Components.AdditionalControls.BalloonHint;

type
  TPermissao = (pAcessar,pInserir,pAlterar,pExcluir);
  TObjetoDePermissao = (odpUsuario,odpGrupo);

  TKRDMSegurancaEPermissoes = class(TKRDMBasico)
    CLDSUsuariosCON: TClientDataSet;
    DTSRUsuariosCON: TDataSource;
    CLDSUsuariosCONsm_usuarios_id: TSmallintField;
    CLDSUsuariosCONva_nome: TWideStringField;
    CLDSUsuariosCONva_login: TWideStringField;
    CLDSUsuariosCONch_senha: TWideStringField;
    CLDSUsuariosCONva_email: TWideStringField;
    CLDSEntidadesDoSistemaCON: TClientDataSet;
    DTSRConsEntidadesDoSistema: TDataSource;
    CLDSEntidadesDoSistemaCONin_entidadesdosistema_id: TIntegerField;
    CLDSEntidadesDoSistemaCONva_nome: TWideStringField;
    CLDSEntidadesDoSistemaCONsm_tipo: TSmallintField;
    CLDSUsuarios: TClientDataSet;
    DTSRUsuarios: TDataSource;
    CLDSUsuariossm_usuarios_id: TSmallintField;
    CLDSUsuariosva_nome: TWideStringField;
    CLDSUsuariosva_login: TWideStringField;
    CLDSUsuariosch_senha: TWideStringField;
    CLDSUsuariosva_email: TWideStringField;
    CLDSGruposDosUsuarios: TClientDataSet;
    CLDSGruposDosUsuariosin_gruposdosusuarios_id: TIntegerField;
    CLDSGruposDosUsuariossm_grupos_id: TSmallintField;
    CLDSGruposDosUsuariossm_usuarios_id: TSmallintField;
    CLDSGruposDosUsuariosgrupo: TWideStringField;
    CLDSPermissoesDosUsuarios: TClientDataSet;
    CLDSPermissoesDosUsuariosentidade: TWideStringField;
    CLDSPermissoesDosUsuariosin_permissoesdosusuarios_id: TIntegerField;
    CLDSPermissoesDosUsuariosin_entidadesdosistema_id: TIntegerField;
    CLDSPermissoesDosUsuariossm_usuarios_id: TSmallintField;
    CLDSPermissoesDosUsuariossm_ler: TSmallintField;
    CLDSPermissoesDosUsuariossm_inserir: TSmallintField;
    CLDSPermissoesDosUsuariossm_alterar: TSmallintField;
    CLDSPermissoesDosUsuariossm_excluir: TSmallintField;
    DTSRPermissoesDosUsuarios: TDataSource;
    CLDSUsuariosnome: TWideStringField;
    CLDSUsuarioslogin: TWideStringField;
    CLDSPermissoesDosUsuariostipo: TSmallintField;
    ACTNAdicionarEntidade: TAction;
    CLDSPermissoesDosUsuariosic_entidade: TStringField;
    CLDSPermissoesDosUsuariosic_tipo: TIntegerField;
    CLDSUsuariosCONZQRYPermissoesDosUsuarios: TDataSetField;
    CLDSUsuariosZQRYGruposDosUsuarios: TDataSetField;
    DTSRGruposDosUsuarios: TDataSource;
    CLDSGruposDosUsuariosic_grupo: TStringField;
    DTSRGrupos: TDataSource;
    CLDSGrupos: TClientDataSet;
    CLDSGrupossm_grupos_id: TSmallintField;
    CLDSGruposva_nome: TWideStringField;
    CLDSGruposva_descricao: TWideStringField;
    CLDSPermissoesDosGrupos: TClientDataSet;
    DTSRPermissoesDosGrupos: TDataSource;
    CLDSGruposCON: TClientDataSet;
    DTSRGruposCON: TDataSource;
    CLDSGruposCONsm_grupos_id: TSmallintField;
    CLDSGruposCONva_nome: TWideStringField;
    CLDSGruposCONva_descricao: TWideStringField;
    CLDSGruposCONZQRYPermissoesDosGrupos: TDataSetField;
    CLDSPermissoesDosGruposentidade: TWideStringField;
    CLDSPermissoesDosGrupostipo: TSmallintField;
    CLDSPermissoesDosGruposin_permissoesdosgrupos_id: TIntegerField;
    CLDSPermissoesDosGruposin_entidadesdosistema_id: TIntegerField;
    CLDSPermissoesDosGrupossm_grupos_id: TSmallintField;
    CLDSPermissoesDosGrupossm_ler: TSmallintField;
    CLDSPermissoesDosGrupossm_inserir: TSmallintField;
    CLDSPermissoesDosGrupossm_alterar: TSmallintField;
    CLDSPermissoesDosGrupossm_excluir: TSmallintField;
    CLDSPermissoesDosGruposic_entidade: TStringField;
    CLDSPermissoesDosGruposic_tipo: TStringField;
    ACTNRessetarSenhas: TAction;
    procedure CLDSEntidadesDoSistemaCONsm_tipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSUsuariosCalcFields(DataSet: TDataSet);
    procedure CLDSUsuariosAfterRefresh(DataSet: TDataSet);
    procedure DoGetTextVazio(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ACTNAdicionarEntidadeExecute(Sender: TObject);
    procedure CLDSPermissoesDosUsuariosentidadeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSPermissoesDosUsuariostipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSGruposDosUsuariosgrupoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSGruposAfterRefresh(DataSet: TDataSet);
    procedure CLDSPermissoesDosGruposentidadeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CLDSPermissoesDosGrupostipoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure ACTNRessetarSenhasExecute(Sender: TObject);
  private
    { Declarações privadas }
    procedure AdicionarEntidadesParaUsuario;
    procedure AdicionarEntidadesParaGrupo;
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
    procedure FiltrarUsuarios(aCLDSUsuarios: TClientDataSet; aSM_USUARIOS_ID: SmallInt; aVA_NOME, aVA_LOGIN, aCH_SENHA, aVA_EMAIL: String);
    procedure FiltrarGrupos(aCLDSGrupos: TClientDataSet; aSM_GRUPOS_ID: SmallInt; aVA_NOME, aVA_DESCRICAO: String);
    procedure FiltrarEntidadesDoSistema(aCLDSEntidadesDoSistema: TClientDataSet; aIN_ENTIDADESDOSISTEMA_ID: Integer; aVA_NOME: String; aSM_TIPO: SmallInt);
    procedure AlternarPermissao(aPermissao: TPermissao; aObjetoDePermissao: TObjetoDePermissao);
  end;

implementation

{$R *.dfm}


uses Math, UKRFMSegurancaEPermissoes, UDAMOPrincipal, KRK.Lib.Db.Utils, DBGrids
   , KRK.Lib.DCPcrypt.Utilities, KRK.Lib.DCPcrypt.Types;

{ TKRDMSegurancaEPermissoes }

procedure TKRDMSegurancaEPermissoes.ACTNAdicionarEntidadeExecute(Sender: TObject);
begin
  inherited;
  case TKRFMSegurancaEPermissoes(MyForm).PGCTUSUGRUConsultar.ActivePageIndex of
    0: AdicionarEntidadesParaUsuario;// Usuários
    1: AdicionarEntidadesParaGrupo;// Grupos
  end;
end;

procedure TKRDMSegurancaEPermissoes.ACTNRessetarSenhasExecute(Sender: TObject);
var
  i: Integer;
  BookMarkList: TBookMarkList;
  BlankPassword: String;
begin
  inherited;
  BookMarkList := TKRFMSegurancaEPermissoes(MyForm).KRDGUsuarios.SelectedRows;

  if BookMarkList.Count > 0 then
    try
      CLDSUsuarios.DisableControls;
      BlankPassword := GetStringCheckSum('',[haSha512]);

      for i := 0 to Pred(BookMarkList.Count) do
      begin
        CLDSUsuarios.GotoBookmark(BookMarkList[i]);
        CLDSUsuarios.Edit;
        CLDSUsuariosch_senha.AsString := BlankPassword;
        CLDSUsuarios.Post;
      end;
      TKRFMSegurancaEPermissoes(MyForm).KRDGUsuarios.SelectedRows.Clear;
      Application.MessageBox('As senhas de todos os usuários selecionados foram ressetadas. Confirme as alterações para que elas sejam salvas. Após a confirmação, os usuários terão de cadastrar uma nova senha da próxima vez que entrarem no sistema.','Senhas ressetadas',MB_ICONINFORMATION);
    finally
      CLDSUsuarios.EnableControls;
    end
  else
    raise Exception.Create('É preciso selecionar ao menos um registro para que este procedimento funcione');
end;

procedure TKRDMSegurancaEPermissoes.AdicionarEntidadesParaGrupo;
var
  i: Integer;
  BookMarkList: TBookMarkList;
begin
  BookMarkList := TKRFMSegurancaEPermissoes(MyForm).KRDGConsEntidadesDoSistema.SelectedRows;

  if BookMarkList.Count > 0 then
    try
      CLDSPermissoesDosGrupos.DisableControls;
      CLDSEntidadesDoSistemaCON.DisableControls;
      CLDSGruposCON.DisableControls;

      for i := 0 to Pred(BookMarkList.Count) do
      begin
        CLDSEntidadesDoSistemaCON.GotoBookmark(BookMarkList[i]);

        if not CLDSPermissoesDosGrupos.Locate('IN_ENTIDADESDOSISTEMA_ID',CLDSEntidadesDoSistemaCONin_entidadesdosistema_id.AsInteger,[]) then
        begin
          CLDSPermissoesDosGrupos.Append;
          CLDSPermissoesDosGruposin_entidadesdosistema_id.AsInteger := CLDSEntidadesDoSistemaCONin_entidadesdosistema_id.AsInteger;
          CLDSPermissoesDosGrupossm_grupos_id.AsInteger             := CLDSGruposCONsm_grupos_id.AsInteger;
          CLDSPermissoesDosGruposic_entidade.AsString               := CLDSEntidadesDoSistemaCONva_nome.AsString;
          CLDSPermissoesDosGruposic_tipo.AsInteger                  := CLDSEntidadesDoSistemaCONsm_tipo.AsInteger;

          CLDSPermissoesDosGrupossm_ler.AsInteger := 0;

          if CLDSEntidadesDoSistemaCONsm_tipo.AsInteger = 0 then
          begin
            CLDSPermissoesDosGrupossm_inserir.AsInteger := 0;
            CLDSPermissoesDosGrupossm_alterar.AsInteger := 0;
            CLDSPermissoesDosGrupossm_excluir.AsInteger := 0;
          end
          else
          begin
            CLDSPermissoesDosGrupossm_inserir.AsInteger := -1;
            CLDSPermissoesDosGrupossm_alterar.AsInteger := -1;
            CLDSPermissoesDosGrupossm_excluir.AsInteger := -1;
          end;

          CLDSPermissoesDosGrupos.Post;
        end;
      end;
    finally
      CLDSGruposCON.EnableControls;
      CLDSEntidadesDoSistemaCON.EnableControls;
      CLDSPermissoesDosGrupos.EnableControls;
    end;
end;

procedure TKRDMSegurancaEPermissoes.AdicionarEntidadesParaUsuario;
var
  i: Integer;
  BookMarkList: TBookMarkList;
begin
  BookMarkList := TKRFMSegurancaEPermissoes(MyForm).KRDGConsEntidadesDoSistema.SelectedRows;

  if BookMarkList.Count > 0 then
    try
      CLDSPermissoesDosUsuarios.DisableControls;
      CLDSEntidadesDoSistemaCON.DisableControls;
      CLDSUsuariosCON.DisableControls;

      for i := 0 to Pred(BookMarkList.Count) do
      begin
        CLDSEntidadesDoSistemaCON.GotoBookmark(BookMarkList[i]);

        if not CLDSPermissoesDosUsuarios.Locate('IN_ENTIDADESDOSISTEMA_ID',CLDSEntidadesDoSistemaCONin_entidadesdosistema_id.AsInteger,[]) then
        begin
          CLDSPermissoesDosUsuarios.Append;
          CLDSPermissoesDosUsuariosin_entidadesdosistema_id.AsInteger := CLDSEntidadesDoSistemaCONin_entidadesdosistema_id.AsInteger;
          CLDSPermissoesDosUsuariossm_usuarios_id.AsInteger           := CLDSUsuariosCONsm_usuarios_id.AsInteger;
          CLDSPermissoesDosUsuariosic_entidade.AsString               := CLDSEntidadesDoSistemaCONva_nome.AsString;
          CLDSPermissoesDosUsuariosic_tipo.AsInteger                  := CLDSEntidadesDoSistemaCONsm_tipo.AsInteger;

          CLDSPermissoesDosUsuariossm_ler.AsInteger := 0;

          if CLDSEntidadesDoSistemaCONsm_tipo.AsInteger = 0 then
          begin
            CLDSPermissoesDosUsuariossm_inserir.AsInteger := 0;
            CLDSPermissoesDosUsuariossm_alterar.AsInteger := 0;
            CLDSPermissoesDosUsuariossm_excluir.AsInteger := 0;
          end
          else
          begin
            CLDSPermissoesDosUsuariossm_inserir.AsInteger := -1;
            CLDSPermissoesDosUsuariossm_alterar.AsInteger := -1;
            CLDSPermissoesDosUsuariossm_excluir.AsInteger := -1;
          end;

          CLDSPermissoesDosUsuarios.Post;
        end;
      end;
    finally
      CLDSUsuariosCON.EnableControls;
      CLDSEntidadesDoSistemaCON.EnableControls;
      CLDSPermissoesDosUsuarios.EnableControls;
    end;
end;

procedure TKRDMSegurancaEPermissoes.AlternarPermissao(aPermissao: TPermissao; aObjetoDePermissao: TObjetoDePermissao);
const
  Acoes: array [0..3] of String = ('sm_ler','sm_inserir','sm_alterar','sm_excluir');
(*

    'UPDATE X[PDU.PERMISSOESDOSUSUARIOS]X PDU'#13#10 +
    '  JOIN X[EDS.ENTIDADESDOSISTEMA]X EDS ON (PDU.X[PDU.IN_ENTIDADESDOSISTEMA_ID]X = EDS.X[EDS.IN_ENTIDADESDOSISTEMA_ID]X)'#13#10 +
    '   SET PDU.X[TI_LER]X = IF(PDU.%s = 0,1,PDU.X[TI_LER]X)'#13#10 +
    '     , PDU.%0:s = IF(EDS.X[EDS.TI_TIPO]X = 0,IF(PDU.%0:s = 0,1,0),-1)'#13#10 +
    ' WHERE PDU.X[PDU.SM_USUARIOS_ID]X = %u'#13#10 +
    '   AND PDU.X[PDU.IN_ENTIDADESDOSISTEMA_ID]X = %u';


    *)
var
  CLDS: TClientDataSet;
begin
  CLDS := nil;

  case aObjetoDePermissao of
    odpUsuario: CLDS := CLDSPermissoesDosUsuarios;
    odpGrupo  : CLDS := CLDSPermissoesDosGrupos;
  end;

  case aPermissao of
    pAcessar:
    begin
      CLDS.Edit;
      CLDS.FieldByName('sm_ler').AsInteger := IfThen(CLDS.FieldByName('sm_ler').AsInteger = 1,0,1);

      // Foi usado displaytext porque ao inserir antes de applyupdates o valor
      // do campo tipo é nulo e o gettext do mesmo automaticamente preenche um
      // valor válido que será exibido
      if (CLDS.FieldByName('tipo').DisplayText = '0') and (CLDS.FieldByName('sm_ler').AsInteger = 0) then
      begin
        CLDS.FieldByName('sm_inserir').AsInteger := 0;
        CLDS.FieldByName('sm_alterar').AsInteger := 0;
        CLDS.FieldByName('sm_excluir').AsInteger := 0;
      end;
      
      CLDS.Post;
    end;
    pInserir, pAlterar, pExcluir:
    begin
      if CLDS.FieldByName('tipo').AsInteger = 0 then
      begin
        CLDS.Edit;
        CLDS.FieldByName(Acoes[Ord(aPermissao)]).AsInteger := IfThen(CLDS.FieldByName(Acoes[Ord(aPermissao)]).AsInteger = 1,0,1);

        if CLDS.FieldByName(Acoes[Ord(aPermissao)]).AsInteger = 1 then
          CLDS.FieldByName('sm_ler').AsInteger := 1;

        CLDS.Post;
      end;
    end;
  end;
end;

procedure TKRDMSegurancaEPermissoes.CLDSEntidadesDoSistemaCONsm_tipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
  begin
    if not Sender.IsNull then
      case Sender.AsInteger of
        0: Text := 'Tabela';
        1: Text := 'Ação';
      end
    else
      Text := 'N/A';
  end;
end;

procedure TKRDMSegurancaEPermissoes.CLDSGruposAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  TKRFMSegurancaEPermissoes(MyForm).LABLGRUFiltros.Caption := TClientDataSet(DataSet).MyParams;
end;

procedure TKRDMSegurancaEPermissoes.CLDSGruposDosUsuariosgrupoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text := CLDSGruposDosUsuariosic_grupo.AsString
  else
    Text := Sender.AsString;
end;

procedure TKRDMSegurancaEPermissoes.CLDSPermissoesDosGruposentidadeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text := CLDSPermissoesDosGruposic_entidade.AsString
  else
    Text := Sender.AsString;
end;

procedure TKRDMSegurancaEPermissoes.CLDSPermissoesDosGrupostipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text := CLDSPermissoesDosGruposic_tipo.AsString
  else
    Text := Sender.AsString;
end;

procedure TKRDMSegurancaEPermissoes.CLDSPermissoesDosUsuariosentidadeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text := CLDSPermissoesDosUsuariosic_entidade.AsString
  else
    Text := Sender.AsString;
end;

procedure TKRDMSegurancaEPermissoes.CLDSPermissoesDosUsuariostipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text := CLDSPermissoesDosUsuariosic_tipo.AsString
  else
    Text := Sender.AsString;
end;

procedure TKRDMSegurancaEPermissoes.DoGetTextVazio(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := '';
end;

procedure TKRDMSegurancaEPermissoes.FiltrarUsuarios(aCLDSUsuarios: TClientDataSet; aSM_USUARIOS_ID: SmallInt; aVA_NOME, aVA_LOGIN, aCH_SENHA, aVA_EMAIL: String);
begin
  if aCLDSUsuarios.ChangeCount = 0 then
  begin
    AssignParam(aCLDSUsuarios.Params.ParamByName('SM_USUARIOS_ID'),aSM_USUARIOS_ID);
    AssignParam(aCLDSUsuarios.Params.ParamByName('VA_NOME'),aVA_NOME);
    AssignParam(aCLDSUsuarios.Params.ParamByName('VA_LOGIN'),aVA_LOGIN);
    AssignParam(aCLDSUsuarios.Params.ParamByName('CH_SENHA'),aCH_SENHA);
    AssignParam(aCLDSUsuarios.Params.ParamByName('VA_EMAIL'),aVA_EMAIL);
    aCLDSUsuarios.Refresh;
  end;
end;

procedure TKRDMSegurancaEPermissoes.FiltrarGrupos(aCLDSGrupos: TClientDataSet; aSM_GRUPOS_ID: SmallInt; aVA_NOME, aVA_DESCRICAO: String);
begin
  if aCLDSGrupos.ChangeCount = 0 then
  begin
    AssignParam(aCLDSGrupos.Params.ParamByName('SM_GRUPOS_ID'),aSM_GRUPOS_ID);
    AssignParam(aCLDSGrupos.Params.ParamByName('VA_NOME'),aVA_NOME);
    AssignParam(aCLDSGrupos.Params.ParamByName('VA_DESCRICAO'),aVA_DESCRICAO);
    aCLDSGrupos.Refresh;
  end;
end;

procedure TKRDMSegurancaEPermissoes.CLDSUsuariosAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  TKRFMSegurancaEPermissoes(MyForm).LABLUSUFiltros.Caption := TClientDataSet(DataSet).MyParams;
end;

procedure TKRDMSegurancaEPermissoes.CLDSUsuariosCalcFields(DataSet: TDataSet);
begin
  inherited;
  { Sempre use campos calculados em controles que não vão receber o foco. Isso
  faz com que os controles que editam os campos reais sejam focados corretamente
  no caso de uma validação falhar! }
  CLDSUsuarioslogin.AsString := CLDSUsuariosva_login.AsString;
  CLDSUsuariosnome.AsString := CLDSUsuariosva_nome.AsString;
end;

procedure TKRDMSegurancaEPermissoes.FiltrarEntidadesDoSistema(aCLDSEntidadesDoSistema: TClientDataSet; aIN_ENTIDADESDOSISTEMA_ID: Integer; aVA_NOME: String; aSM_TIPO: SmallInt);
begin
  if aCLDSEntidadesDoSistema.ChangeCount = 0 then
  begin
    AssignParam(aCLDSEntidadesDoSistema.Params.ParamByName('IN_ENTIDADESDOSISTEMA_ID'),aIN_ENTIDADESDOSISTEMA_ID);
    AssignParam(aCLDSEntidadesDoSistema.Params.ParamByName('VA_NOME'),aVA_NOME);
    AssignParam(aCLDSEntidadesDoSistema.Params.ParamByName('SM_TIPO'),aSM_TIPO,-1);
    aCLDSEntidadesDoSistema.Refresh;
  end;
end;

end.

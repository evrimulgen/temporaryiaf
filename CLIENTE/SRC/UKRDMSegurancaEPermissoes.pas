unit UKRDMSegurancaEPermissoes;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-�mnis Solu��es Tecnol�gicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  DBClient, UKRDMBasico, DB, ImgList, ActnList, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, KRK.Components.AdditionalControls.BalloonHint;

type
  TPermissao = (pAcessar,pInserir,pAlterar,pExcluir);
  TObjetoDePermissao = (odpUsuario,odpGrupo);

  TKRDMSegurancaEPermissoes = class(TKRDMBasico)
    CLDSConsUsuarios: TClientDataSet;
    DTSRConsUsuarios: TDataSource;
    CLDSConsUsuariossm_usuarios_id: TSmallintField;
    CLDSConsUsuariosva_nome: TWideStringField;
    CLDSConsUsuariosva_login: TWideStringField;
    CLDSConsUsuariosch_senha: TWideStringField;
    CLDSConsUsuariosva_email: TWideStringField;
    CLDSConsEntidadesDoSistema: TClientDataSet;
    DTSRConsEntidadesDoSistema: TDataSource;
    CLDSConsEntidadesDoSistemain_entidadesdosistema_id: TIntegerField;
    CLDSConsEntidadesDoSistemava_nome: TWideStringField;
    CLDSConsEntidadesDoSistemasm_tipo: TSmallintField;
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
    procedure CLDSConsEntidadesDoSistemasm_tipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSUsuariosch_senhaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSUsuariosCalcFields(DataSet: TDataSet);
    procedure CLDSUsuariosAfterRefresh(DataSet: TDataSet);
    procedure DoGetTextVazio(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ACTNAdicionarEntidadeExecute(Sender: TObject);
    procedure CLDSPermissoesDosUsuariosentidadeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CLDSPermissoesDosUsuariostipoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure KRKDataModuleCreate(Sender: TObject);
    procedure CLDSUsuariosNewRecord(DataSet: TDataSet);
  private
    { Declara��es privadas }
    procedure AdicionarEntidadesParaUsuario;
    procedure AdicionarEntidadesParaGrupo;
  protected
    { Declara��es protegidas }
  public
    { Declara��es p�blicas }
    procedure FiltrarUsuarios(aSM_USUARIOS_ID: SmallInt; aVA_NOME, aVA_LOGIN, aCH_SENHA, aVA_EMAIL: String);
    procedure FiltrarUsuariosIDU(aSM_USUARIOS_ID: SmallInt; aVA_NOME, aVA_LOGIN, aCH_SENHA, aVA_EMAIL: String);
    procedure FiltrarEntidadesDoSistema(aIN_ENTIDADESDOSISTEMA_ID: Integer; aVA_NOME: String; aSM_TIPO: SmallInt);
    procedure AlternarPermissao(aPermissao: TPermissao; aObjetoDePermissao: TObjetoDePermissao);
  end;

implementation

{$R *.dfm}


uses Math
   , UKRFMSegurancaEPermissoes
   , UDAMOPrincipal
   , KRK.Win32.Db.Utils
   , DBGrids;

{ TKRDMSegurancaEPermissoes }
var
  id: integer;
procedure TKRDMSegurancaEPermissoes.ACTNAdicionarEntidadeExecute(Sender: TObject);
begin
  inherited;
  case TKRFMSegurancaEPermissoes(MyForm).PGCTUSUGRUConsultar.ActivePageIndex of
    0: AdicionarEntidadesParaUsuario;// Usu�rios
    1: AdicionarEntidadesParaGrupo;// Grupos
  end;
end;

procedure TKRDMSegurancaEPermissoes.AdicionarEntidadesParaGrupo;
begin

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
      CLDSConsEntidadesDoSistema.DisableControls;
      CLDSConsUsuarios.DisableControls;

      for i := 0 to Pred(BookMarkList.Count) do
      begin
        CLDSConsEntidadesDoSistema.GotoBookmark(BookMarkList[i]);

        if not CLDSPermissoesDosUsuarios.Locate('IN_ENTIDADESDOSISTEMA_ID',CLDSConsEntidadesDoSistemain_entidadesdosistema_id.AsInteger,[]) then
        begin
          CLDSPermissoesDosUsuarios.Append;
          CLDSPermissoesDosUsuariosin_entidadesdosistema_id.AsInteger := CLDSConsEntidadesDoSistemain_entidadesdosistema_id.AsInteger;
          CLDSPermissoesDosUsuariossm_usuarios_id.AsInteger           := CLDSConsUsuariossm_usuarios_id.AsInteger;

          CLDSPermissoesDosUsuariosic_entidade.AsString               := CLDSConsEntidadesDoSistemava_nome.AsString;
          CLDSPermissoesDosUsuariosic_tipo.AsInteger                  := CLDSConsEntidadesDoSistemasm_tipo.AsInteger;

          CLDSPermissoesDosUsuariossm_ler.AsInteger := 0;

          if CLDSConsEntidadesDoSistemasm_tipo.AsInteger = 0 then
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
      CLDSConsUsuarios.EnableControls;
      CLDSConsEntidadesDoSistema.EnableControls;
      CLDSPermissoesDosUsuarios.EnableControls;
    end;
// circula entre todas as entidades marcadas no grid
// para cada uma delas perguntar se j� consta na lista local do usu�rio
// se n�o estiver insere os dados para o usu�rio e d� um post
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
    odpGrupo  : {CLDS := CLDSPermissoesDosGrupos;}
  end;

  case aPermissao of
    pAcessar:
    begin
      CLDS.Edit;
      CLDS.FieldByName('sm_ler').AsInteger := IfThen(CLDS.FieldByName('sm_ler').AsInteger = 1,0,1);

      // Foi usado displaytext porque ao inserir antes de applyupdates o valor
      // do campo tipo � nulo e o gettext do mesmo automaticamente preenche um
      // valor v�lido que ser� exibido
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

procedure TKRDMSegurancaEPermissoes.CLDSConsEntidadesDoSistemasm_tipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
  begin
    if not Sender.IsNull then
      case Sender.AsInteger of
        0: Text := 'Tabela';
        1: Text := 'A��o';
      end
    else
      Text := 'N/A';
  end;
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

procedure TKRDMSegurancaEPermissoes.FiltrarUsuarios(aSM_USUARIOS_ID: SmallInt; aVA_NOME, aVA_LOGIN, aCH_SENHA, aVA_EMAIL: String);
begin
  if CLDSConsUsuarios.ChangeCount = 0 then
  begin
    AssignParam(CLDSConsUsuarios.Params.ParamByName('SM_USUARIOS_ID'),aSM_USUARIOS_ID);
    AssignParam(CLDSConsUsuarios.Params.ParamByName('VA_NOME'),aVA_NOME);
    AssignParam(CLDSConsUsuarios.Params.ParamByName('VA_LOGIN'),aVA_LOGIN);
    AssignParam(CLDSConsUsuarios.Params.ParamByName('CH_SENHA'),aCH_SENHA);
    AssignParam(CLDSConsUsuarios.Params.ParamByName('VA_EMAIL'),aVA_EMAIL);
    CLDSConsUsuarios.Refresh;
  end;
end;

procedure TKRDMSegurancaEPermissoes.FiltrarUsuariosIDU(aSM_USUARIOS_ID: SmallInt; aVA_NOME, aVA_LOGIN, aCH_SENHA, aVA_EMAIL: String);
begin
  if CLDSUsuarios.ChangeCount = 0 then
  begin
    AssignParam(CLDSUsuarios.Params.ParamByName('SM_USUARIOS_ID'),aSM_USUARIOS_ID);
    AssignParam(CLDSUsuarios.Params.ParamByName('VA_NOME'),aVA_NOME);
    AssignParam(CLDSUsuarios.Params.ParamByName('VA_LOGIN'),aVA_LOGIN);
    AssignParam(CLDSUsuarios.Params.ParamByName('CH_SENHA'),aCH_SENHA);
    AssignParam(CLDSUsuarios.Params.ParamByName('VA_EMAIL'),aVA_EMAIL);
    CLDSUsuarios.Refresh;
  end;
end;

procedure TKRDMSegurancaEPermissoes.KRKDataModuleCreate(Sender: TObject);
begin
  inherited;
  id := 0;
end;

procedure TKRDMSegurancaEPermissoes.CLDSUsuariosAfterRefresh(DataSet: TDataSet);
begin
  TKRFMSegurancaEPermissoes(MyForm).LABLFiltroIDUUsuarios.Caption := TClientDataSet(DataSet).MyParams;
  inherited;
end;

procedure TKRDMSegurancaEPermissoes.CLDSUsuariosCalcFields(DataSet: TDataSet);
begin
  inherited;
  { Sempre use campos calculados em controles que n�o v�o receber o foco. Isso
  faz com que os controles que editam os campos reais sejam focados corretamente
  em caso de uma valida��o falhar! }
  CLDSUsuarioslogin.AsString := CLDSUsuariosva_login.AsString;
  CLDSUsuariosnome.AsString := CLDSUsuariosva_nome.AsString;
end;

procedure TKRDMSegurancaEPermissoes.CLDSUsuariosch_senhaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  { Senhas nunca s�o exibidas }
  if DisplayText then
    Text := '';
end;

procedure TKRDMSegurancaEPermissoes.CLDSUsuariosNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec(Id);
  CLDSUsuariossm_usuarios_id.AsInteger := ID;
end;

procedure TKRDMSegurancaEPermissoes.FiltrarEntidadesDoSistema(aIN_ENTIDADESDOSISTEMA_ID: Integer; aVA_NOME: String; aSM_TIPO: SmallInt);
begin
  if CLDSConsEntidadesDoSistema.ChangeCount = 0 then
  begin
    AssignParam(CLDSConsEntidadesDoSistema.Params.ParamByName('IN_ENTIDADESDOSISTEMA_ID'),aIN_ENTIDADESDOSISTEMA_ID);
    AssignParam(CLDSConsEntidadesDoSistema.Params.ParamByName('VA_NOME'),aVA_NOME);
    AssignParam(CLDSConsEntidadesDoSistema.Params.ParamByName('SM_TIPO'),aSM_TIPO,-1);
    CLDSConsEntidadesDoSistema.Refresh;
  end;
end;

end.

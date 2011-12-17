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
    CLDSUsuariosZQRYGruposDosUsuarios: TDataSetField;
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
    CLDSConsUsuariosZQRYPermissoesDosUsuarios: TDataSetField;
    CLDSUsuariosnome: TWideStringField;
    CLDSUsuarioslogin: TWideStringField;
    CLDSUsuariosZQRYPermissoesDosUsuarios: TDataSetField;
    CLDSPermissoesDosUsuariostipo: TSmallintField;
    procedure CLDSConsEntidadesDoSistemasm_tipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSUsuariosch_senhaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSUsuariosCalcFields(DataSet: TDataSet);
    procedure CLDSUsuariosAfterRefresh(DataSet: TDataSet);
    procedure DoGetTextVazio(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Declarações privadas }
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
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
   , KRK.Win32.Db.Utils;

{ TKRDMSegurancaEPermissoes }

procedure TKRDMSegurancaEPermissoes.AlternarPermissao(aPermissao: TPermissao; aObjetoDePermissao: TObjetoDePermissao);
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

      if (CLDS.FieldByName('tipo').AsInteger = 0) and (CLDS.FieldByName('sm_ler').AsInteger = 0) then
      begin
        CLDS.FieldByName('sm_inserir').AsInteger := 0;
        CLDS.FieldByName('sm_alterar').AsInteger := 0;
        CLDS.FieldByName('sm_excluir').AsInteger := 0;
      end;
      
      CLDS.Post;
    end;
    pInserir:
    begin
    use o update acima
    end;
    pAlterar:
    begin
    end;
    pExcluir:
    begin
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
        1: Text := 'Ação';
      end
    else
      Text := 'N/A';
  end;
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

procedure TKRDMSegurancaEPermissoes.CLDSUsuariosAfterRefresh(DataSet: TDataSet);
begin
  TKRFMSegurancaEPermissoes(MyForm).LABLFiltroIDUUsuarios.Caption := TClientDataSet(DataSet).MyParams;
  inherited;
end;

procedure TKRDMSegurancaEPermissoes.CLDSUsuariosCalcFields(DataSet: TDataSet);
begin
  inherited;
  { Sempre use campos calculados em controles que não vão receber o foco. Isso
  faz com que os controles que editam os campos reais sejam focados corretamente
  em caso de uma validação falhar! }
  CLDSUsuarioslogin.AsString := CLDSUsuariosva_login.AsString;
  CLDSUsuariosnome.AsString := CLDSUsuariosva_nome.AsString;
end;

procedure TKRDMSegurancaEPermissoes.CLDSUsuariosch_senhaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  { Senhas nunca são exibidas }
  if DisplayText then
    Text := '';
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

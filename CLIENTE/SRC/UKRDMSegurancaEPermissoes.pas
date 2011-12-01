unit UKRDMSegurancaEPermissoes;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  DBClient, UKRDMBasico, DB, ImgList, ActnList;

type
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
    procedure CLDSConsEntidadesDoSistemasm_tipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSUsuariosch_senhaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSUsuariosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Declarações privadas }
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
    procedure FiltrarUsuarios(aSM_USUARIOS_ID: SmallInt; aVA_NOME, aVA_LOGIN, aCH_SENHA, aVA_EMAIL: String);
    procedure FiltrarEntidadesDoSistema(aIN_ENTIDADESDOSISTEMA_ID: Integer; aVA_NOME: String; aSM_TIPO: SmallInt);
  end;

implementation

{$R *.dfm}

uses UKRFMSegurancaEPermissoes
   , UDAMOPrincipal
   , KRK.Win32.Db.Utils;

{ TKRDMSegurancaEPermissoes }

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

procedure TKRDMSegurancaEPermissoes.CLDSUsuariosch_senhaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  { Senhas nunca são exibidas }
  if DisplayText then
    Text := '';
end;

procedure TKRDMSegurancaEPermissoes.CLDSUsuariosPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  Action := daAbort;
  Application.MessageBox(PWideChar(e.Message),'xx',MB_ICONWARNING);
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

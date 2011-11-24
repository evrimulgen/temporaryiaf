unit UKRDMSegurancaEPermissoes;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  KRK.Wizards.DataModule, DB, DBClient;

type
  TKRDMSegurancaEPermissoes = class(TKRKDataModule)
    CLDSUsuarios: TClientDataSet;
    DTSRUsuarios: TDataSource;
    CLDSUsuariossm_usuarios_id: TSmallintField;
    CLDSUsuariosva_nome: TWideStringField;
    CLDSUsuariosva_login: TWideStringField;
    CLDSUsuariosch_senha: TWideStringField;
    CLDSUsuariosva_email: TWideStringField;
  private
    { Declarações privadas }
    procedure AssignParam(aParam: TParam; aValue: String; aNullValue: String = ''); overload;
    procedure AssignParam(aParam: TParam; aValue: Integer; aNullValue: Integer = 0); overload;
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
    procedure FiltrarUsuarios(aSM_USUARIOS_ID: Cardinal; aVA_NOME, aVA_LOGIN, aCH_SENHA, aVA_EMAIL: String);
  end;

implementation

{$R *.dfm}

uses UKRFMSegurancaEPermissoes
   , UDAMOPrincipal;

{ TKRDMSegurancaEPermissoes }

procedure TKRDMSegurancaEPermissoes.AssignParam(aParam: TParam; aValue: String; aNullValue: String = '');
begin
  if aNullValue = aValue then
    aParam.Clear
  else
    aParam.AsString := aValue;
end;

procedure TKRDMSegurancaEPermissoes.AssignParam(aParam: TParam; aValue: Integer; aNullValue: Integer = 0);
begin
  if aNullValue = aValue then
    aParam.Clear
  else
    aParam.AsInteger := aValue;
end;

procedure TKRDMSegurancaEPermissoes.FiltrarUsuarios(aSM_USUARIOS_ID: Cardinal; aVA_NOME, aVA_LOGIN, aCH_SENHA, aVA_EMAIL: String);
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

end.

unit UKRDMSegurancaEPermissoes;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-�mnis Solu��es Tecnol�gicas Ltda. }

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, DBClient
   , DB, ImgList, ActnList, UKRDMBasico
   , KRK.Components.AdditionalControls.BalloonHint
   , KRK.Components.AdditionalControls.PngImageList;

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
    CLDSEntidadesDoSistema: TClientDataSet;
    DTSREntidadesDoSistema: TDataSource;
    CLDSEntidadesDoSistemain_entidadesdosistema_id: TIntegerField;
    CLDSEntidadesDoSistemava_nome: TWideStringField;
    CLDSEntidadesDoSistemasm_tipo: TSmallintField;
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
    CLDSUsuariosCONUNQYPermissoesDosUsuarios: TDataSetField;
    CLDSUsuariosUNQYGruposDosUsuarios: TDataSetField;
    DTSRGruposDosUsuarios: TDataSource;
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
    CLDSGruposCONUNQYPermissoesDosGrupos: TDataSetField;
    CLDSPermissoesDosGruposentidade: TWideStringField;
    CLDSPermissoesDosGrupostipo: TSmallintField;
    CLDSPermissoesDosGruposin_permissoesdosgrupos_id: TIntegerField;
    CLDSPermissoesDosGruposin_entidadesdosistema_id: TIntegerField;
    CLDSPermissoesDosGrupossm_grupos_id: TSmallintField;
    CLDSPermissoesDosGrupossm_ler: TSmallintField;
    CLDSPermissoesDosGrupossm_inserir: TSmallintField;
    CLDSPermissoesDosGrupossm_alterar: TSmallintField;
    CLDSPermissoesDosGrupossm_excluir: TSmallintField;
    ACTNRessetarSenhas: TAction;
    ACTNRegistrarEntidades: TAction;
    CLDSUsuariosbo_superusuario: TBooleanField;
    CLDSUsuariosCONbo_superusuario: TBooleanField;
    ACTNAdicionarGruposAoUsuario: TAction;
    ACTNRemoverGruposDoUsuario: TAction;
    procedure CLDSEntidadesDoSistemasm_tipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSUsuariosCalcFields(DataSet: TDataSet);
    procedure CLDSUsuariosAfterRefresh(DataSet: TDataSet);
    procedure DoGetTextVazio(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ACTNAdicionarEntidadeExecute(Sender: TObject);
    procedure CLDSGruposAfterRefresh(DataSet: TDataSet);
    procedure ACTNRessetarSenhasExecute(Sender: TObject);
    procedure ACTNRegistrarEntidadesExecute(Sender: TObject);
    procedure ACTNAdicionarGruposAoUsuarioExecute(Sender: TObject);
    procedure ACTNRemoverGruposDoUsuarioExecute(Sender: TObject);
  private
    { Declara��es privadas }
    procedure AdicionarEntidadesParaUsuario;
    procedure AdicionarEntidadesParaGrupo;
  protected
    { Declara��es protegidas }
  public
    { Declara��es p�blicas }
    procedure FiltrarUsuarios(aCLDSUsuarios: TClientDataSet; aSM_USUARIOS_ID: SmallInt; aVA_NOME, aVA_LOGIN, aCH_SENHA, aVA_EMAIL: String; aBO_SUPERUSUARIO: ShortInt);
    procedure FiltrarGrupos(aCLDSGrupos: TClientDataSet; aSM_GRUPOS_ID: SmallInt; aVA_NOME, aVA_DESCRICAO: String);
    procedure FiltrarEntidadesDoSistema(aCLDSEntidadesDoSistema: TClientDataSet; aIN_ENTIDADESDOSISTEMA_ID: Integer; aVA_NOME: String; aSM_TIPO: SmallInt);
    procedure AlternarPermissao(aPermissao: TPermissao; aObjetoDePermissao: TObjetoDePermissao);
  end;

implementation

{$R *.dfm}


uses Math, UKRFMSegurancaEPermissoes, UDAMOPrincipal, KRK.Lib.Db.Utils, DBGrids
   , KRK.Lib.DCPcrypt.Utilities, KRK.Lib.DCPcrypt.Types, UKRFMConfiguracoes
   , UKRFMSelecionarGrupo;

{ TKRDMSegurancaEPermissoes }

procedure TKRDMSegurancaEPermissoes.ACTNAdicionarEntidadeExecute(Sender: TObject);
begin
  inherited;
  case TKRFMSegurancaEPermissoes(MyForm).PGCTUSUGRUConsultar.ActivePageIndex of
    0: AdicionarEntidadesParaUsuario;// Usu�rios
    1: AdicionarEntidadesParaGrupo;// Grupos
  end;
end;

procedure TKRDMSegurancaEPermissoes.ACTNAdicionarGruposAoUsuarioExecute(Sender: TObject);
var
  BookMarkList: TBookMarkList;
  i: Word;
begin
  inherited;
  with TKRFMSelecionarGrupo.Create(nil) do
    try
      CLDS.ConnectionBroker := CLDSGrupos.ConnectionBroker;
      CLDS.ProviderName := CLDSGrupos.ProviderName;
      CLDS.Open;

      if ShowModal = mrOk then
      begin
        BookMarkList := KRDGSelecao.SelectedRows;

        if BookMarkList.Count > 0 then
          try
            CLDSGruposDosUsuarios.DisableControls;

            for i := 0 to Pred(BookMarkList.Count) do
            begin
              CLDS.GotoBookmark(BookMarkList[i]);
              if not CLDSGruposDosUsuarios.Locate('SM_GRUPOS_ID',CLDSsm_grupos_id.AsInteger,[]) then
              begin
                CLDSGruposDosUsuarios.Append;
                CLDSGruposDosUsuariossm_grupos_id.AsInteger := CLDSsm_grupos_id.AsInteger;
                CLDSGruposDosUsuariossm_usuarios_id.AsInteger := CLDSUsuariossm_usuarios_id.AsInteger;
                CLDSGruposDosUsuariosgrupo.AsString := CLDSva_nome.AsString;
                CLDSGruposDosUsuarios.Post;
              end;
            end;

            if CLDSUsuarios.State = dsEdit then
              CLDSUsuarios.Post;

          finally
            CLDSGruposDosUsuarios.EnableControls;
          end
      end;
    finally
      Free;
    end;
end;

procedure TKRDMSegurancaEPermissoes.ACTNRegistrarEntidadesExecute(Sender: TObject);
var
  i, NovasEntidades: Word;
  ContainedAction: TContainedAction;
begin
  inherited;
  NovasEntidades := 0;

  if not TDAMOPrincipal(Owner).CurrentSession.Data.bo_superusuario then
    Application.MessageBox('Para usar esta funcionalidade voc� precisa ser um superusu�rio','Privil�gio insuficiente!',MB_ICONWARNING)
  else if ClientDataSets.UpdatesPending then
    Application.MessageBox('Existem altera��es n�o confirmadas. Por favor, confirme todas as altera��es antes de executar esta a��o','Atualiza��es n�o confirmadas!',MB_ICONWARNING)
  else if Application.MessageBox('Certifique-se de que todas as janelas das quais voc� deseja registrar as entidades estejam abertas. Deseja continuar?','Buscar e registrar entidades?',MB_ICONQUESTION or MB_YESNO) = IDYES then
    try
      FiltrarEntidadesDoSistema(CLDSEntidadesDoSistema,0,'',-1);

      CLDSEntidadesDoSistema.DisableControls;
      for i := 0 to Pred(TDAMOPrincipal(owner).FORMPrincipal.MDIChildCount) do
      begin
        { Se estiver tentando obter as a��es deste DM
        (TKRDMSegurancaEPermissoes), ent�o n�o faz nada e passa para a pr�xima
        janela filha }
        if TKRDMBasico(TDAMOPrincipal(owner).FORMPrincipal.MDIChildren[i].Owner).Name = Self.Name then
          Continue;

        { Registra todas as a��es do primeiro TActionManager, se houver um }
        if Assigned(TKRDMBasico(TDAMOPrincipal(owner).FORMPrincipal.MDIChildren[i].Owner).ActionManager) then
        begin

          for ContainedAction in TKRDMBasico(TDAMOPrincipal(owner).FORMPrincipal.MDIChildren[i].Owner).ActionManager do
          begin
            { Se a entidade j� existir na lista, pula }
            if CLDSEntidadesDoSistema.Locate('VA_NOME',ContainedAction.Owner.Name + '.' + ContainedAction.Name,[]) then
              Continue;

            CLDSEntidadesDoSistema.Append;

            CLDSEntidadesDoSistemava_nome.AsString := ContainedAction.Owner.Name + '.' + ContainedAction.Name;
            CLDSEntidadesDoSistemasm_tipo.AsInteger := 1;

            CLDSEntidadesDoSistema.Post;
            Inc(NovasEntidades);
          end;
        end;

        { Registra todas as a��es do TActionList }
        for ContainedAction in TKRDMBasico(TDAMOPrincipal(owner).FORMPrincipal.MDIChildren[i].Owner).ACLI do
        begin
          { Se a entidade j� existir na lista, pula }
          if CLDSEntidadesDoSistema.Locate('VA_NOME',ContainedAction.Owner.Name + '.' + ContainedAction.Name,[]) then
            Continue;

          CLDSEntidadesDoSistema.Append;

          CLDSEntidadesDoSistemava_nome.AsString := ContainedAction.Owner.Name + '.' + ContainedAction.Name;
          CLDSEntidadesDoSistemasm_tipo.AsInteger := 1;

          CLDSEntidadesDoSistema.Post;
          Inc(NovasEntidades);
        end;
      end;
    finally
      CLDSEntidadesDoSistema.EnableControls;
      if NovasEntidades > 0 then
        Application.MessageBox(PWideChar(IntToStr(NovasEntidades) + ' novas entidades foram adicionadas. Por favor, confirme estas adi��es para torn�-las permanentes ANTES de tentar atribuir tais entidades a quaisquer tabelas de permiss�o (usu�rio ou grupo)'),'Entidades adicionadas!',MB_ICONINFORMATION)
      else
        Application.MessageBox('Nenhuma nova entidade foi adicionada. Tem certeza de que abriu as janelas com as entidades que precisavam ser registradas? Se sim, talvez as entidades j� tenham sido registradas anteriormente','Nenhuma nova entidade encontrada!',MB_ICONINFORMATION)
    end;
end;

procedure TKRDMSegurancaEPermissoes.ACTNRemoverGruposDoUsuarioExecute(Sender: TObject);
var
  BookMarkList: TBookMarkList;
  i: Word;
begin
  inherited;
  if Application.MessageBox('Isso vai remover os grupos selecionados da lista de grupos do usu�rio. Tem certeza?','Tem certeza?',MB_ICONQUESTION or MB_YESNO) = IDNO then
    Exit;

  BookMarkList := TKRFMSegurancaEPermissoes(MyForm).KRDGGruposDoUsuario.SelectedRows;

  if BookMarkList.Count > 0 then
    try
      CLDSGruposDosUsuarios.DisableControls;

      for i := 0 to Pred(BookMarkList.Count) do
      begin
        CLDSGruposDosUsuarios.GotoBookmark(BookMarkList[i]);
        CLDSGruposDosUsuarios.Delete;
      end;

      BookMarkList.Clear;
    finally
      CLDSGruposDosUsuarios.EnableControls;
    end
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
      Application.MessageBox('As senhas de todos os usu�rios selecionados foram ressetadas. Confirme as altera��es para que elas sejam salvas. Ap�s a confirma��o, os usu�rios ter�o de cadastrar uma nova senha da pr�xima vez que entrarem no sistema.','Senhas ressetadas',MB_ICONINFORMATION);
    finally
      CLDSUsuarios.EnableControls;
    end
  else
    raise Exception.Create('� preciso selecionar ao menos um registro para que este procedimento funcione');
end;

procedure TKRDMSegurancaEPermissoes.AdicionarEntidadesParaGrupo;
var
  i: Integer;
  BookMarkList: TBookMarkList;
  EntidadesNaoPersistidas: TStringList;
begin
  BookMarkList := TKRFMSegurancaEPermissoes(MyForm).KRDGConsEntidadesDoSistema.SelectedRows;

  if BookMarkList.Count > 0 then
  begin
    EntidadesNaoPersistidas := TStringList.Create;
    try
      CLDSPermissoesDosGrupos.DisableControls;
      CLDSEntidadesDoSistema.DisableControls;
      CLDSGruposCON.DisableControls;

      for i := 0 to Pred(BookMarkList.Count) do
      begin
        CLDSEntidadesDoSistema.GotoBookmark(BookMarkList[i]);

        { Caso a entidade em quest�o n�o tenha sido persistida, faz exibir ao
        final uma mensagem}
        if CLDSEntidadesDoSistemain_entidadesdosistema_id.AsInteger < 0 then
        begin
          EntidadesNaoPersistidas.Add(CLDSEntidadesDoSistemava_nome.AsString);
          Continue;
        end;

        if not CLDSPermissoesDosGrupos.Locate('IN_ENTIDADESDOSISTEMA_ID',CLDSEntidadesDoSistemain_entidadesdosistema_id.AsInteger,[]) then
        begin
          CLDSPermissoesDosGrupos.Append;
          CLDSPermissoesDosGruposin_entidadesdosistema_id.AsInteger := CLDSEntidadesDoSistemain_entidadesdosistema_id.AsInteger;
          CLDSPermissoesDosGrupossm_grupos_id.AsInteger             := CLDSGruposCONsm_grupos_id.AsInteger;
          CLDSPermissoesDosGruposentidade.AsString                  := CLDSEntidadesDoSistemava_nome.AsString;
          CLDSPermissoesDosGrupostipo.AsInteger                     := CLDSEntidadesDoSistemasm_tipo.AsInteger;

          CLDSPermissoesDosGrupossm_ler.AsInteger := 0;

          if CLDSEntidadesDoSistemasm_tipo.AsInteger = 0 then
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
        end
      end;

      if CLDSGruposCON.State = dsEdit then
        CLDSGruposCON.Post;

      if EntidadesNaoPersistidas.Count > 0 then
        Application.MessageBox(PWideChar('As entidades a seguir n�o foram adicionadas � lista de permiss�es do grupo porque s�o entidades novas, n�o confirmadas:'#13#10#13#10 + Trim(EntidadesNaoPersistidas.Text) + #13#10#13#10'Apenas entidades devidamente confirmadas podem ser adicionadas � lista de permiss�es. Por favor, confirme as altera��es agora e tente adicionar estas entidades novamente'),'Entidades n�o persistidas',MB_ICONWARNING);
    finally
      CLDSGruposCON.EnableControls;
      CLDSEntidadesDoSistema.EnableControls;
      CLDSPermissoesDosGrupos.EnableControls;
      EntidadesNaoPersistidas.Free;
    end;
  end;
end;

procedure TKRDMSegurancaEPermissoes.AdicionarEntidadesParaUsuario;
var
  i: Integer;
  BookMarkList: TBookMarkList;
  EntidadesNaoPersistidas: TStringList;
begin
  BookMarkList := TKRFMSegurancaEPermissoes(MyForm).KRDGConsEntidadesDoSistema.SelectedRows;

  if BookMarkList.Count > 0 then
  begin
    EntidadesNaoPersistidas := TStringList.Create;
    try
      CLDSPermissoesDosUsuarios.DisableControls;
      CLDSEntidadesDoSistema.DisableControls;
      CLDSUsuariosCON.DisableControls;

      for i := 0 to Pred(BookMarkList.Count) do
      begin
        CLDSEntidadesDoSistema.GotoBookmark(BookMarkList[i]);

        { Caso a entidade em quest�o n�o tenha sido persistida, faz exibir ao
        final uma mensagem}
        if CLDSEntidadesDoSistemain_entidadesdosistema_id.AsInteger < 0 then
        begin
          EntidadesNaoPersistidas.Add(CLDSEntidadesDoSistemava_nome.AsString);
          Continue;
        end;

        if not CLDSPermissoesDosUsuarios.Locate('IN_ENTIDADESDOSISTEMA_ID',CLDSEntidadesDoSistemain_entidadesdosistema_id.AsInteger,[]) then
        begin
          CLDSPermissoesDosUsuarios.Append;
          CLDSPermissoesDosUsuariosin_entidadesdosistema_id.AsInteger := CLDSEntidadesDoSistemain_entidadesdosistema_id.AsInteger;
          CLDSPermissoesDosUsuariossm_usuarios_id.AsInteger           := CLDSUsuariosCONsm_usuarios_id.AsInteger;
          CLDSPermissoesDosUsuariosentidade.AsString                  := CLDSEntidadesDoSistemava_nome.AsString;
          CLDSPermissoesDosUsuariostipo.AsInteger                     := CLDSEntidadesDoSistemasm_tipo.AsInteger;

          CLDSPermissoesDosUsuariossm_ler.AsInteger := 0;

          if CLDSEntidadesDoSistemasm_tipo.AsInteger = 0 then
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

      if CLDSUsuariosCON.State = dsEdit then
        CLDSUsuariosCON.Post;

      if EntidadesNaoPersistidas.Count > 0 then
        Application.MessageBox(PWideChar('As entidades a seguir n�o foram adicionadas � lista de permiss�es do usu�rio porque s�o entidades novas, n�o confirmadas:'#13#10#13#10 + Trim(EntidadesNaoPersistidas.Text) + #13#10#13#10'Apenas entidades devidamente confirmadas podem ser adicionadas � lista de permiss�es. Por favor, confirme as altera��es agora e tente adicionar estas entidades novamente'),'Entidades n�o persistidas',MB_ICONWARNING);
    finally
      CLDSUsuariosCON.EnableControls;
      CLDSEntidadesDoSistema.EnableControls;
      CLDSPermissoesDosUsuarios.EnableControls;
    end;
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
      if CLDS.FieldByName('tipo').DisplayText = '0' then
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

procedure TKRDMSegurancaEPermissoes.CLDSEntidadesDoSistemasm_tipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TKRDMSegurancaEPermissoes.CLDSGruposAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  TKRFMSegurancaEPermissoes(MyForm).LABLGRUFiltros.Caption := TClientDataSet(DataSet).MyParams;
end;

procedure TKRDMSegurancaEPermissoes.DoGetTextVazio(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    Text := '';
end;

procedure TKRDMSegurancaEPermissoes.FiltrarUsuarios(aCLDSUsuarios: TClientDataSet; aSM_USUARIOS_ID: SmallInt; aVA_NOME, aVA_LOGIN, aCH_SENHA, aVA_EMAIL: String; aBO_SUPERUSUARIO: ShortInt);
begin
  if aCLDSUsuarios.ChangeCount = 0 then
  begin
    AssignParam(aCLDSUsuarios.Params.ParamByName('SM_USUARIOS_ID'),aSM_USUARIOS_ID);
    AssignParam(aCLDSUsuarios.Params.ParamByName('VA_NOME'),aVA_NOME);
    AssignParam(aCLDSUsuarios.Params.ParamByName('VA_LOGIN'),aVA_LOGIN);
    AssignParam(aCLDSUsuarios.Params.ParamByName('CH_SENHA'),aCH_SENHA);
    AssignParam(aCLDSUsuarios.Params.ParamByName('VA_EMAIL'),aVA_EMAIL);
    AssignParam(aCLDSUsuarios.Params.ParamByName('BO_SUPERUSUARIO'),aBO_SUPERUSUARIO);
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
  { Sempre use campos calculados em controles que n�o v�o receber o foco. Isso
  faz com que os controles que editam os campos reais sejam focados corretamente
  no caso de uma valida��o falhar! }
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

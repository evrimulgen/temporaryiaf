unit UExtraMethodsImpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, UExtraMethodsIntf;

type
  TExtraMethods = class(TInvokableClass, IExtraMethods)
  public
    function GetConstraintsFor(const aProviderName: WideString; aDataSetName: WideString; const aSessionID: String): String; stdcall;
    function GetPermissions(const aSessionID: String): OleVariant; stdcall;
  end;

implementation

uses SysUtils, Classes, KRK.Components.DataControls.ValidationChecks, UKRDMBasico
   , UKRDMEntidadesDoSistema, UKRDMUsuarios, UExtraUtilities, UCommonTypes
   , DBClient, DB, Uni;

{ TExtraMethods }

function TExtraMethods.GetConstraintsFor(const aProviderName: WideString; aDataSetName: WideString; const aSessionID: String): String;
var
  KRDMBasico: TKRDMBasico;
  i: Word;
begin
  if (not CheckSessions) or SessionExists(aSessionID) then
  begin
    Result := '';

    if aDataSetName = '' then
      aDataSetName := UpperCase(StringReplace(aProviderName,'DSPR','UNQY',[rfIgnoreCase]))
    else
      aDataSetName := UpperCase(StringReplace(aDataSetName,'CLDS','UNQY',[rfIgnoreCase]));

    KRDMBasico := CreateDataModule(aProviderName);

    if Assigned(KRDMBasico) then
      with KRDMBasico do
        try
          for i := 0 to Pred(ComponentCount) do
            if Components[i].ClassNameIs(TKRKValidationChecks.ClassName) and (UpperCase(TKRKValidationChecks(Components[i]).DataSet.Name) = aDataSetName) then
            begin
              Result := TKRKValidationChecks(Components[i]).ToString;
              Break;
            end;
        finally
          Free;
        end;
  end
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
end;

function TExtraMethods.GetPermissions(const aSessionID: String): OleVariant;
const
  SQL_EDS = 'SELECT * FROM ENTIDADESDOSISTEMA';

  SQL_PDG =
  'SELECT EDS.IN_ENTIDADESDOSISTEMA_ID'#13#10 +
  '     , EDS.VA_NOME'#13#10 +
  '     , EDS.SM_TIPO'#13#10 +
  '     , PDG.SM_LER'#13#10 +
  '     , PDG.SM_INSERIR'#13#10 +
  '     , PDG.SM_ALTERAR'#13#10 +
  '     , PDG.SM_EXCLUIR'#13#10 +
  '  FROM PERMISSOESDOSGRUPOS PDG'#13#10 +
  '  JOIN ENTIDADESDOSISTEMA EDS USING (IN_ENTIDADESDOSISTEMA_ID)'#13#10 +
  ' WHERE PDG.SM_GRUPOS_ID IN (SELECT SM_GRUPOS_ID'#13#10 +
  '                              FROM GRUPOSDOSUSUARIOS'#13#10 +
  '                             WHERE SM_USUARIOS_ID = :SM_USUARIOS_ID)'#13#10 +
  '   AND PDG.IN_ENTIDADESDOSISTEMA_ID = :IN_ENTIDADESDOSISTEMA_ID';

  SQL_PDU =
  'SELECT EDS.IN_ENTIDADESDOSISTEMA_ID'#13#10 +
  '     , EDS.VA_NOME'#13#10 +
  '     , EDS.SM_TIPO'#13#10 +
  '     , PDU.SM_LER'#13#10 +
  '     , PDU.SM_INSERIR'#13#10 +
  '     , PDU.SM_ALTERAR'#13#10 +
  '     , PDU.SM_EXCLUIR'#13#10 +
  '  FROM PERMISSOESDOSUSUARIOS PDU'#13#10 +
  '  JOIN ENTIDADESDOSISTEMA EDS USING (IN_ENTIDADESDOSISTEMA_ID)'#13#10 +
  ' WHERE PDU.SM_USUARIOS_ID = :SM_USUARIOS_ID'#13#10 +
  '   AND PDU.IN_ENTIDADESDOSISTEMA_ID = :IN_ENTIDADESDOSISTEMA_ID';

var
  UNCN: TUniConnection;
  UNTR: TUniTransaction;
  UNQYPDG: TUniQuery;
  UNQYPDU: TUniQuery;
  UNQYEDS: TUniQuery;
  CLDSPermissoes: TClientDataSet;
  UserID: SmallInt;
  Ler, Inserir, Alterar, Excluir: SmallInt;
  SuperUser: Boolean;
begin
  if (not CheckSessions) or SessionExists(aSessionID) then
  begin
    Result := vaNull;

    with TSessionData.Create(nil) do
      try
        FromString(SessionDataFromSessionID(aSessionID));
        UserID := sm_usuarios_id;
        SuperUser := bo_superusuario;
      finally
        Free;
      end;

    UNCN := TUniConnection.Create(nil);
    UNTR := TUniTransaction.Create(nil);

    UNQYPDG := TUniQuery.Create(nil);
    UNQYPDG.Connection := UNCN;
    UNQYPDG.SQL.Text := SQL_PDG;
    UNQYPDG.ReadOnly := True;

    UNQYPDU := TUniQuery.Create(nil);
    UNQYPDU.Connection := UNCN;
    UNQYPDU.SQL.Text := SQL_PDU;
    UNQYPDU.ReadOnly := True;

    UNQYEDS := TUniQuery.Create(nil);
    UNQYEDS.Connection := UNCN;
    UNQYEDS.SQL.Text := SQL_EDS;
    UNQYEDS.ReadOnly := True;

    CLDSPermissoes := TClientDataSet.Create(nil);
    try
      CLDSPermissoes.FieldDefs.Add('ENTIDADE', ftString,128,True);
      CLDSPermissoes.FieldDefs.Add('TIPO', ftSmallint);
      CLDSPermissoes.FieldDefs.Add('LER', ftBoolean);
      CLDSPermissoes.FieldDefs.Add('INSERIR', ftBoolean);
      CLDSPermissoes.FieldDefs.Add('ALTERAR', ftBoolean);
      CLDSPermissoes.FieldDefs.Add('EXCLUIR', ftBoolean);
      CLDSPermissoes.CreateDataSet;

      ConfigureConnection(UNCN,UNTR);
      UNCN.Connect;

      { Obt�m todas as entidades do sistema e circula por cada uma destas }
      UNQYEDS.Open;

      if SuperUser then
        while not UNQYEDS.Eof do
          try
            CLDSPermissoes.Append;

            CLDSPermissoes.FieldByName('ENTIDADE').AsString := UNQYPDU.FieldByName('VA_NOME').AsString;
            CLDSPermissoes.FieldByName('TIPO').AsInteger    := UNQYPDU.FieldByName('SM_TIPO').AsInteger;
            CLDSPermissoes.FieldByName('LER').AsBoolean     := True;

            if UNQYPDU.FieldByName('SM_TIPO').AsInteger = 0 then
            begin
              CLDSPermissoes.FieldByName('INSERIR').AsBoolean := True;
              CLDSPermissoes.FieldByName('ALTERAR').AsBoolean := True;
              CLDSPermissoes.FieldByName('EXCLUIR').AsBoolean := True;
            end
            else
            begin
              CLDSPermissoes.FieldByName('INSERIR').AsBoolean := False;
              CLDSPermissoes.FieldByName('ALTERAR').AsBoolean := False;
              CLDSPermissoes.FieldByName('EXCLUIR').AsBoolean := False;
            end;

            CLDSPermissoes.Post;
          finally
            UNQYEDS.Next;
          end
      else
        while not UNQYEDS.Eof do
          try
            { Verifica se existem permiss�es para o usu�rio em PERMISSOESDOSUSUARIOS
            para a entidade em quest�o, se houver ent�o usa, sen�o verifica se h�
            permiss�o para a entidade em algum grupo do usu�rio. Se houver, usa,
            sen�o, n�o tem nenhuma permiss�o para a entidade }
            UNQYPDU.ParamByName('SM_USUARIOS_ID').AsInteger := UserID;
            UNQYPDU.ParamByName('IN_ENTIDADESDOSISTEMA_ID').AsInteger := UNQYEDS.FieldByName('IN_ENTIDADESDOSISTEMA_ID').AsInteger;
            UNQYPDU.Open;

            if UNQYPDU.RecordCount = 1 then
            begin
              CLDSPermissoes.Append;

              CLDSPermissoes.FieldByName('ENTIDADE').AsString := UNQYPDU.FieldByName('VA_NOME').AsString;
              CLDSPermissoes.FieldByName('TIPO').AsInteger    := UNQYPDU.FieldByName('SM_TIPO').AsInteger;
              CLDSPermissoes.FieldByName('LER').AsBoolean     := Boolean(UNQYPDU.FieldByName('SM_LER').AsInteger);

              if UNQYPDU.FieldByName('SM_TIPO').AsInteger = 0 then
              begin
                CLDSPermissoes.FieldByName('INSERIR').AsBoolean := Boolean(UNQYPDU.FieldByName('SM_INSERIR').AsInteger);
                CLDSPermissoes.FieldByName('ALTERAR').AsBoolean := Boolean(UNQYPDU.FieldByName('SM_ALTERAR').AsInteger);
                CLDSPermissoes.FieldByName('EXCLUIR').AsBoolean := Boolean(UNQYPDU.FieldByName('SM_EXCLUIR').AsInteger);
              end
              else
              begin
                CLDSPermissoes.FieldByName('INSERIR').AsBoolean := False;
                CLDSPermissoes.FieldByName('ALTERAR').AsBoolean := False;
                CLDSPermissoes.FieldByName('EXCLUIR').AsBoolean := False;
              end;

              CLDSPermissoes.Post;
            end
            { Caso n�o existam permiss�es para o usu�rio, verifica se existem
            permiss�es para um dos grupos do usu�rios }
            else
            begin
              { Inicialmente as permiss�es s�o todas negadas }
              Ler := 0;
              Inserir := 0;
              Alterar := 0;
              Excluir := 0;

              { Um usu�rio pode estar inserido em v�rios grupos com permiss�es
              para uma determinada entidade. Abaixo, circulamos por cada uma das
              permiss�es para a entidade em cada um dos grupos a fim de montar ao
              final a permiss�o que � a soma booleana das permiss�es }
              UNQYPDG.ParamByName('SM_USUARIOS_ID').AsInteger := UserID;
              UNQYPDG.ParamByName('IN_ENTIDADESDOSISTEMA_ID').AsInteger := UNQYEDS.FieldByName('IN_ENTIDADESDOSISTEMA_ID').AsInteger;
              UNQYPDG.Open;

              if UNQYPDG.RecordCount > 0 then
                while not UNQYPDG.Eof do
                begin
                  Ler := Ler or UNQYPDG.FieldByName('SM_LER').AsInteger;

                  { se for uma tabela, verifica permiss�es espec�ficas, se n�o for,
                  n�o precisa fazer mais nada pois o restante das permiss�es j� est�
                  como "n�o se aplica" }
                  if UNQYPDG.FieldByName('SM_TIPO').AsInteger = 0 then
                  begin
                    Inserir := Inserir or UNQYPDG.FieldByName('SM_INSERIR').AsInteger;
                    Alterar := Alterar or UNQYPDG.FieldByName('SM_ALTERAR').AsInteger;
                    Excluir := Excluir or UNQYPDG.FieldByName('SM_EXCLUIR').AsInteger;
                  end;

                  UNQYPDG.Next;
                end;

              CLDSPermissoes.Append;

              CLDSPermissoes.FieldByName('ENTIDADE').AsString  := UNQYEDS.FieldByName('VA_NOME').AsString;
              CLDSPermissoes.FieldByName('TIPO').AsInteger     := UNQYEDS.FieldByName('SM_TIPO').AsInteger;
              CLDSPermissoes.FieldByName('LER').AsBoolean      := Boolean(Ler);

              if UNQYEDS.FieldByName('SM_TIPO').AsInteger = 0 then
              begin
                CLDSPermissoes.FieldByName('INSERIR').AsBoolean  := Boolean(Inserir);
                CLDSPermissoes.FieldByName('ALTERAR').AsBoolean  := Boolean(Alterar);
                CLDSPermissoes.FieldByName('EXCLUIR').AsBoolean  := Boolean(Excluir);
              end
              else
              begin
                CLDSPermissoes.FieldByName('INSERIR').AsBoolean  := False;
                CLDSPermissoes.FieldByName('ALTERAR').AsBoolean  := False;
                CLDSPermissoes.FieldByName('EXCLUIR').AsBoolean  := False;
              end;

              CLDSPermissoes.Post;
            end;
          finally
            UNQYPDG.Close;
            UNQYPDU.Close;
            UNQYEDS.Next;
          end;

      { As permiss�es dos usu�rios s�o sempre mais importantes do que as
      permiss�es de grupo. Por exemplo, se meus grupos me d�o permiss�o mas meu
      usu�rio n�o � autorizado ent�o eu n�o terei permiss�o. Por outro lado, se
      meus grupos n�o me d�o permiss�o, mas meu usu�rio � permitido, ent�o eu
      terei permiss�o. Se para uma determinada entidade n�o houver nenhum tipo
      de permiss�o para o usu�rio (sem registro em PERMISSOESDOSUSUARIOS) ent�o
      apenas a permiss�o de grupo define a permiss�o para a referida entidade }
      Result := CLDSPermissoes.Data;
    finally
      CLDSPermissoes.Close;
      CLDSPermissoes.Free;
      UNQYEDS.Close;
      UNQYEDS.Free;
      UNQYPDU.Close;
      UNQYPDU.Free;
      UNQYPDG.Close;
      UNQYPDG.Free;
      UNTR.Free;
      UNCN.Disconnect;
      UNCN.Free;
    end;
  end
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
end;

initialization
  InvRegistry.RegisterInvokableClass(TExtraMethods);

end.


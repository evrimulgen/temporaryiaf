constructor TClientDataSet.Create(aOwner: TComponent);
begin
  inherited;
  FKRKValidationChecks := TKRKValidationChecks.Create(Self);
end;

destructor TClientDataSet.Destroy;
begin
  FKRKValidationChecks.Free;
  inherited;
end;

procedure TClientDataSet.DoAfterOpen;
var
  Param: TCollectionItem;
begin
  inherited;
  { Todos os TClientDataSet são filtrados mediante operações de refresh,
  portanto, após abrir o TClientDataSet precisamos zerar todos os seus
  parâmetros de forma que chamadas subsequentes a refresh utilizem parâmetros
  nulos, o que invariavelmente vai trazer todos os registros disponíveis. Ao se
  usar um filtro, os parâmetros são alterados de acordo e ao se pressionar
  refresh novamente os parâmtros atualmente setados serão utilizados de novo }
  for Param in Params do
    TParam(Param).Clear;
end;

procedure TClientDataSet.DoBeforeApplyUpdates(var OwnerData: OleVariant);
begin
  OwnerData := DAMOPrincipal.CurrentSession.ID;
  inherited;
end;

function TClientDataSet.DoApplyUpdates(Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer): OleVariant;
begin
  if Configuracoes.UsarCompressao then
    OleVariantByteArrayUCLCompress(Delta);

  Result := inherited;

  if Configuracoes.UsarCompressao then
    OleVariantByteArrayUCLDecompress(Result);
end;

function TClientDataSet.DoGetRecords(Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; Params: OleVariant): OleVariant;
begin
  Result := inherited;

  if Configuracoes.UsarCompressao then
    OleVariantByteArrayUCLDecompress(Result);
end;

procedure TClientDataSet.DoBeforeInsert;
begin
  if Owner is TKRDMBasico then
  begin
    if not (Owner as TKRDMBasico).CanInsert(StringReplace(Name,'CLDS','',[])) then
    begin
      Application.MessageBox('Você não tem permissão para inserir este registro','Permissão insuficiente',MB_ICONWARNING);
      Abort;
    end;
  end;

  inherited;
end;

procedure TClientDataSet.DoBeforeDelete;
begin
  if Owner is TKRDMBasico then
  begin
    if not (Owner as TKRDMBasico).CanDelete(StringReplace(Name,'CLDS','',[])) then
    begin
      Application.MessageBox('Você não tem permissão para excluir este registro','Permissão insuficiente',MB_ICONWARNING);
      Abort;
    end;
  end;

  { Atualmente esta validação não faz nada! }
  FKRKValidationChecks.ValidateBeforeDelete;
  inherited;
end;

procedure TClientDataSet.DoBeforeEdit;
begin
  if Owner is TKRDMBasico then
  begin
    if not (Owner as TKRDMBasico).CanUpdate(StringReplace(Name,'CLDS','',[])) then
    begin
      Application.MessageBox('Você não tem permissão para alterar este registro','Permissão insuficiente',MB_ICONWARNING);
      Abort;
    end;
  end;

  inherited;
end;

procedure TClientDataSet.DoBeforePost;
begin
  if Owner is TKRDMBasico then
  begin
    if not (Owner as TKRDMBasico).CanSelect(StringReplace(Name,'CLDS','',[]))
    or not (Owner as TKRDMBasico).CanInsert(StringReplace(Name,'CLDS','',[]))
    or not (Owner as TKRDMBasico).CanDelete(StringReplace(Name,'CLDS','',[]))
    or not (Owner as TKRDMBasico).CanUpdate(StringReplace(Name,'CLDS','',[])) then
    begin
      Application.MessageBox('Você não tem permissão para confirmar esta alteração','Permissão insuficiente',MB_ICONWARNING);
      Abort;
    end;
  end;

  try
    if Assigned(FKRKValidationChecks.DataSet) then
      FKRKValidationChecks.ValidateBeforePost;
  except
    on EIFV: EInvalidFieldValue do
    begin
      TKRDMBasico(Owner).ConfigureErrorHint('Campo incorreto'
                                           ,EIFV.Message
                                           ,TKRDMBasico(Owner).MyForm.ActiveControl
                                           ,True);
      Abort;
    end;
  end;
  inherited;
end;

procedure TClientDataSet.DoBeforeOpen;
begin
  if Owner is TKRDMBasico then
  begin
    if not (Owner as TKRDMBasico).CanSelect(StringReplace(Name,'CLDS','',[])) then
    begin
      Application.MessageBox(PWideChar('Você não tem permissão exibir registros da tabela ' + StringReplace(Name,'CLDS','',[])),'Permissão insuficiente',MB_ICONWARNING);
      Abort;
    end;
  end;

  inherited;
end;

procedure TClientDataSet.DoBeforeExecute(var OwnerData: OleVariant);
begin
  OwnerData := DAMOPrincipal.CurrentSession.ID;
  inherited;
end;

procedure TClientDataSet.DoBeforeGetParams(var OwnerData: OleVariant);
begin
  OwnerData := DAMOPrincipal.CurrentSession.ID;
  inherited;
end;

procedure TClientDataSet.DoBeforeGetRecords(var OwnerData: OleVariant);
begin
  OwnerData := DAMOPrincipal.CurrentSession.ID;
  inherited;
end;

procedure TClientDataSet.DoBeforeRowRequest(var OwnerData: OleVariant);
begin
  OwnerData := DAMOPrincipal.CurrentSession.ID;
  inherited;
end;

procedure TClientDataSet.DoOnNewRecord;
var
  i: Byte;
begin
  inherited;
  for i := 0 to Pred(Fields.Count) do
    if pfInKey in Fields[i].ProviderFlags then
      Break;

  if i < Fields.Count then
  begin
    Tag := Pred(Tag);
    Fields[i].AsInteger := Tag;
  end;
end;

function TClientDataSet.GetMyParams: String;
begin
  Result := ClientDataSetParams(Self);
end;

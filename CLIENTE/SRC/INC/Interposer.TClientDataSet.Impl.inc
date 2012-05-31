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

  SaveTextFile(OleVariantByteArrayToString(Result),'c:\_testes\reset.txt');

  if Configuracoes.UsarCompressao then
    OleVariantByteArrayUCLDecompress(Result);
end;

procedure TClientDataSet.DoBeforeDelete;
begin
  { Atualmente esta validação não faz nada! }
  FKRKValidationChecks.ValidateBeforeDelete;
  inherited;
end;

procedure TClientDataSet.DoBeforePost;
begin
  inherited;
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
    Tag := Tag - 1;
    Fields[i].AsInteger := Tag;
  end;
end;

function TClientDataSet.GetMyParams: String;
begin
  Result := ClientDataSetParams(Self);
end;

procedure TDBNavigator.BtnClick(Index: TNavigateBtn);
begin
  if Index = nbRefresh then
  begin
    if DataSource.DataSet.State in [dsEdit, dsInsert] then
    begin
      Application.MessageBox('Você parece estar no meio de uma operação de inserção ou edição no conjunto de dados atual. Não é possível atualizar os dados agora. Conclua a operação em execução e tente novamente','Operação em curso. Não é possível atualizar',MB_ICONWARNING);
      Abort;
    end;

    if TClientDataSet(DataSource.DataSet).ChangeCount > 0 then
    begin
//      if TClientDataSet(DataSource.DataSet).Params.Count > 0 then
//        if TClientDataSet(DataSource.DataSet).Params[0].AsInteger = -1 then
//          TClientDataSet(DataSource.DataSet).Params[0].Clear;
//    end
//    else
//    begin
      Application.MessageBox('Não é possível atualizar até que as alterações sejam confirmadas ou revertidas. Utilize os botões no canto superior esquerdo da tela para confirmar ou reverter TODAS AS ALTERAÇÕES na mesma','Existem alterações não confirmadas',MB_ICONWARNING);
      Abort
    end;
  end;

  inherited;
end;

procedure TDBNavigator.BtnClick(Index: TNavigateBtn);
begin
  if Index = nbRefresh then
  begin
    if DataSource.DataSet.State in [dsEdit, dsInsert] then
    begin
      Application.MessageBox('Voc� parece estar no meio de uma opera��o de inser��o ou edi��o no conjunto de dados atual. N�o � poss�vel atualizar os dados agora. Conclua a opera��o em execu��o e tente novamente','Opera��o em curso. N�o � poss�vel atualizar',MB_ICONWARNING);
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
      Application.MessageBox('N�o � poss�vel atualizar at� que as altera��es sejam confirmadas ou revertidas. Utilize os bot�es no canto superior esquerdo da tela para confirmar ou reverter TODAS AS ALTERA��ES na mesma','Existem altera��es n�o confirmadas',MB_ICONWARNING);
      Abort
    end;
  end;

  inherited;
end;

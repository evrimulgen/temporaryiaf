procedure TDBNavigator.BtnClick(Index: TNavigateBtn);
begin
  if Index = nbRefresh then
    if TClientDataSet(DataSource.DataSet).ChangeCount = 0 then
    begin
      if TClientDataSet(DataSource.DataSet).Params[0].AsInteger = -1 then
        TClientDataSet(DataSource.DataSet).Params[0].Clear;
    end
    else
    begin
      Application.MessageBox('Não é possível atualizar até que as alterações sejam confirmadas ou revertidas. Utilize os botões no canto superior esquerdo da tela para confirmar ou reverter TODAS AS ALTERAÇÕES na mesma','Existem alterações não confirmadas',MB_ICONWARNING);
      Abort
    end;

  inherited;
end;

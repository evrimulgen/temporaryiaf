procedure TActionList.SyncActionsWithPermissions;
var
  i: Word;
begin
  for i := 0 to Pred(ActionCount) do
    TAction(Actions[i]).Enabled := TAction(Actions[i]).Enabled;
end;


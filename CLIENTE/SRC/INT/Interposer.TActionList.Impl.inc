procedure TActionList.SyncActionsWithPermissions;
var
  i: Word;
begin
  for i := 0 to Pred(ActionCount) do
  begin
    TAction(Actions[i]).Enabled := TAction(Actions[i]).Enabled;

    if TAction(Actions[i]).ToggleVisibility then
      TAction(Actions[i]).Visible := TAction(Actions[i]).Visible;
  end;
end;


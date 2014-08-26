procedure TTabSheet.ActionChange(Sender: TObject; CheckDefaults: Boolean);
begin
  { Abaixo estão todas as propriedades do TTabSheet que devem ser alteradas no
  momento da atribuição de uma ação }
  inherited;
  if Sender is TCustomAction then
  begin
    if not CheckDefaults or (Self.Caption = '') or (Self.Caption = Self.Name) then
      Self.Caption := TCustomAction(Sender).Caption;

    if not CheckDefaults or (Self.Enabled = True) then
      Self.Enabled := TCustomAction(Sender).Enabled;

    if not CheckDefaults or (Self.Hint = '') then
      Self.Hint := TCustomAction(Sender).Hint;

    if not CheckDefaults or (Self.TabVisible = True) then
      Self.TabVisible := TCustomAction(Sender).Visible;

    if not CheckDefaults or not Assigned(Self.OnShow) then
      Self.OnShow := TCustomAction(Sender).OnExecute;

    if not CheckDefaults or (Self.HelpContext = 0) then
      Self.HelpContext := TCustomAction(Sender).HelpContext;
  end;
end;

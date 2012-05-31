constructor TAction.Create(aOwner: TComponent);
begin
  inherited;
  FPermitida := True;
end;

function TAction.GetEnabled: Boolean;
begin
  Result := inherited Enabled;
end;

procedure TAction.SetEnabled(const Value: Boolean);
begin
  inherited Enabled := FPermitida and Value;
end;

procedure TAction.SetPermitida(const Value: Boolean);
begin
  FPermitida := Value;
end;


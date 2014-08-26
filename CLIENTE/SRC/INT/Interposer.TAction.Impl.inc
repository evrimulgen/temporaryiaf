constructor TAction.Create(aOwner: TComponent);
begin
  inherited;
  FPermitida := True;
  FPermissionTogglesVisibility := False;
end;

function TAction.Execute: Boolean;
begin
  if FPermitida then
    Result := inherited
  else
    raise Exception.Create('Você não tem permissão para executar esta ação (' + Name + ')');
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

function TAction.GetVisible: Boolean;
begin
  Result := inherited Visible;
end;

type
  TWCALH = class(TWinControlActionLink);
  TALH = class(TActionLink);

procedure TAction.SetVisible(const Value: Boolean);
var
  I: Integer;
  Link: TActionLink;
begin
  if Value <> inherited Visible then
  begin
    for I := 0 to Pred(Clients.Count) do
    begin
      Link := TObject(Clients.List[I]) as TActionLink;

      if Assigned(Link) then
      begin
        if (Link is TWinControlActionLink) and (TWCALH(Link).FClient is TTabSheet) then
          TTabSheet(TWCALH(Link).FClient).TabVisible := FPermitida and Value
        else
          TALH(Link).SetVisible(FPermitida and Value);
      end;
    end;
    { Isso estava comentado, mas estava causando problemas, pois getvisible
    estava retornando sempre false. Ao ativar esta linha novamente os tabsheets
    aparecem errados, mas esta linha tem de permanecer ativa, então foi feita
    uma gambiarra para que o page control funcionasse direito }
    inherited Visible := FPermitida and Value;
    Change;
  end;
end;


procedure TDBRadioGroup.Paint;
var
  H: Integer;
  R: TRect;
  Flags: Longint;
begin
  if ThemeControl(Self) then
    inherited
  else
    with Canvas do
    begin
      Font := Self.Font;
      H := 0;

      if Text <> '' then
      begin
        H := TextHeight('Wg');
        R := Rect(0, H div 2 - 1, Width, Height);
      end
      else
        R := Rect(0, 0, Width, Height);

      if Ctl3D then
      begin
        Inc(R.Left);
        Inc(R.Top);
        Brush.Color := clBtnHighlight;
        FrameRect(R);
        OffsetRect(R, -1, -1);
        Brush.Color := clBtnShadow;
      end
      else
        Brush.Color := clWindowFrame;

      FrameRect(R);

      if Text <> '' then
      begin
        if not UseRightToLeftAlignment then
          R := Rect(8, 0, 0, H)
        else
          R := Rect(R.Right - Canvas.TextWidth(Text) - 8, 0, 0, H);

        Flags := DrawTextBiDiModeFlags(DT_SINGLELINE);
        DrawText(Handle, Text, Length(Text), R, Flags or DT_CALCRECT);
        Brush.Color := Color;
        DrawText(Handle, Text, Length(Text), R, Flags);
      end;
    end;
end;


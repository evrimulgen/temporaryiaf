unit UKRFMDialogBasico;

{ Anak Krakatoa Form. Copyright 2012 / 2013 Zetta-�mnis Solu��es Tecnol�gicas Ltda. }

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms
   , KRK.Wizards.Form, StdCtrls, ExtCtrls, ToolWin, ComCtrls, Buttons;

type
  TKRFMDialogBasico = class(TKRKForm)
  private
    { Declara��es privadas }
  protected
    { Declara��es protegidas }
  public
    { Declara��es p�blicas }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TKRFMDialogBasico)

end.
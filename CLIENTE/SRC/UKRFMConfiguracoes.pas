unit UKRFMConfiguracoes;

{ Anak Krakatoa Form. Copyright 2012 / 2013 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  KRK.Wizards.Form;

type
  TKRFMConfiguracoes = class(TKRKForm)
  private
    { Declarações privadas }
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TKRFMConfiguracoes)

end.
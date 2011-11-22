unit UKRDMSegurancaEPermissoes;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  KRK.Wizards.DataModule;

type
  TKRDMSegurancaEPermissoes = class(TKRKDataModule)
  private
    { Declarações privadas }
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
  end;

implementation

uses UKRFMSegurancaEPermissoes;

{$R *.dfm}

end.

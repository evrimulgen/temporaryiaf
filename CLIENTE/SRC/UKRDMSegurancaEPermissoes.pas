unit UKRDMSegurancaEPermissoes;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-�mnis Solu��es Tecnol�gicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  KRK.Wizards.DataModule;

type
  TKRDMSegurancaEPermissoes = class(TKRKDataModule)
  private
    { Declara��es privadas }
  protected
    { Declara��es protegidas }
  public
    { Declara��es p�blicas }
  end;

implementation

uses UKRFMSegurancaEPermissoes;

{$R *.dfm}

end.

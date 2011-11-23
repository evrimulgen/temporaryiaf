unit UKRDMSegurancaEPermissoes;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  KRK.Wizards.DataModule, DB, DBClient;

type
  TKRDMSegurancaEPermissoes = class(TKRKDataModule)
    CLDSUsuarios: TClientDataSet;
    DTSRUsuarios: TDataSource;
  private
    { Declarações privadas }
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
  end;

implementation

{$R *.dfm}

uses UKRFMSegurancaEPermissoes
   , UDAMOPrincipal;

end.

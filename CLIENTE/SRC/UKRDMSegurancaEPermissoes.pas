unit UKRDMSegurancaEPermissoes;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-�mnis Solu��es Tecnol�gicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  KRK.Wizards.DataModule, DB, DBClient;

type
  TKRDMSegurancaEPermissoes = class(TKRKDataModule)
    CLDSUsuarios: TClientDataSet;
    DTSRUsuarios: TDataSource;
  private
    { Declara��es privadas }
  protected
    { Declara��es protegidas }
  public
    { Declara��es p�blicas }
  end;

implementation

{$R *.dfm}

uses UKRFMSegurancaEPermissoes
   , UDAMOPrincipal;

end.

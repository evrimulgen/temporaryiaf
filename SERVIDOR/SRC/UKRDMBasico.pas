unit UKRDMBasico;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-�mnis Solu��es Tecnol�gicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  KRK.Wizards.DataModule, DB, ZAbstractRODataset, ZDataset, ZAbstractDataset,
  ZStoredProcedure;

type
  TKRDMBasico = class(TKRKDataModule)
    ZROQAux: TZReadOnlyQuery;
    ZSTPAux: TZStoredProc;
  private
    { Declara��es privadas }
  protected
    { Declara��es protegidas }
  public
    { Declara��es p�blicas }
  end;

implementation

{$R *.dfm}

end.
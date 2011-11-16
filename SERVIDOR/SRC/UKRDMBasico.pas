unit UKRDMBasico;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

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
    { Declarações privadas }
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
  end;

implementation

{$R *.dfm}

end.
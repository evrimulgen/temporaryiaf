unit UKRDMBasico;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  KRK.Wizards.DataModule, ActnList, ImgList, DBClient, UReconcileErrorDialog,
  DB;

type
  TClientDataSet = class (DBClient.TClientDataSet)
  protected
    procedure DoBeforeApplyUpdates(var OwnerData: OleVariant); override;
    procedure DoBeforeGetParams(var OwnerData: OleVariant); override;
    procedure DoBeforeGetRecords(var OwnerData: OleVariant); override;
    procedure DoBeforeRowRequest(var OwnerData: OleVariant); override;
    procedure DoBeforeExecute(var OwnerData: OleVariant); override;
  end;

  TKRDMBasico = class(TKRKDataModule)
    ACLI: TActionList;
    IMLI: TImageList;
  private
    { Declarações privadas }
    procedure DoReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
    constructor Create(aOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

uses UDAMOPrincipal;

{ TClientDataSetHelper }

procedure TClientDataSet.DoBeforeApplyUpdates(var OwnerData: OleVariant);
begin
  OwnerData := DAMOPrincipal.CurrentSession.ID;
  inherited;
end;

procedure TClientDataSet.DoBeforeExecute(var OwnerData: OleVariant);
begin
  OwnerData := DAMOPrincipal.CurrentSession.ID;
  inherited;
end;

procedure TClientDataSet.DoBeforeGetParams(var OwnerData: OleVariant);
begin
  OwnerData := DAMOPrincipal.CurrentSession.ID;
  inherited;
end;

procedure TClientDataSet.DoBeforeGetRecords(var OwnerData: OleVariant);
begin
  OwnerData := DAMOPrincipal.CurrentSession.ID;
  inherited;
end;

procedure TClientDataSet.DoBeforeRowRequest(var OwnerData: OleVariant);
begin
  OwnerData := DAMOPrincipal.CurrentSession.ID;
  inherited;
end;

constructor TKRDMBasico.Create(aOwner: TComponent);
var
  CI: TCollectionItem;
begin
  inherited;
  for CI in DataSets do
    if TDataSetItem(CI).DataSet.ClassNameIs('TClientDataset') then
      TClientDataset(TDataSetItem(CI).DataSet).OnReconcileError := DoReconcileError;
end;

procedure TKRDMBasico.DoReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  HandleReconcileError(DataSet,UpdateKind,E);
end;

end.
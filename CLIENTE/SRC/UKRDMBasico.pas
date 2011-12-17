unit UKRDMBasico;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  KRK.Wizards.DataModule, ActnList, ImgList, DBClient, UReconcileErrorDialog,
  DB, KRK.Components.DataControls.ValidationChecks,
  KRK.Components.AdditionalControls.BalloonHint;

type
  TClientDataSet = class (DBClient.TClientDataSet)
  private
    FKRKValidationChecks: TKRKValidationChecks;
    function GetMyParams: String;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    property KRKValidationChecks: TKRKValidationChecks read FKRKValidationChecks;
    property MyParams: String read GetMyParams;
  protected
    procedure DoBeforeApplyUpdates(var OwnerData: OleVariant); override;
    procedure DoBeforeGetParams(var OwnerData: OleVariant); override;
    procedure DoBeforeGetRecords(var OwnerData: OleVariant); override;
    procedure DoBeforeRowRequest(var OwnerData: OleVariant); override;
    procedure DoBeforeExecute(var OwnerData: OleVariant); override;
    procedure DoBeforePost; override;
    procedure DoBeforeDelete; override;
  end;

  TKRDMBasico = class(TKRKDataModule)
    ACLI: TActionList;
    IMLI: TImageList;
    KRBH: TKRKBalloonHint;
  private
    { Declarações privadas }
    procedure DoReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
  protected
    { Declarações protegidas }
    procedure ConfigureErrorHint(aTitle, aText: String; aWinControl: TWinControl; aShowHint: Boolean); virtual;
  public
    { Declarações públicas }
    constructor Create(aOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

uses UDAMOPrincipal
   , UExtraMethods
   , KRK.Win32.Rtl.Common.FileUtils
   , KRK.Win32.Db.Utils;

{ TClientDataSetHelper }

constructor TClientDataSet.Create(aOwner: TComponent);
begin
  inherited;
  FKRKValidationChecks := TKRKValidationChecks.Create(Self);
end;

destructor TClientDataSet.Destroy;
begin
  FKRKValidationChecks.Free;
  inherited;
end;

procedure TClientDataSet.DoBeforeApplyUpdates(var OwnerData: OleVariant);
begin
  OwnerData := DAMOPrincipal.CurrentSession.ID;
  inherited;
end;

procedure TClientDataSet.DoBeforeDelete;
begin
  { Atualmente esta validação não faz nada! }
  FKRKValidationChecks.ValidateBeforeDelete;
  inherited;
end;

procedure TClientDataSet.DoBeforePost;
begin
  inherited;
  try
    if Assigned(FKRKValidationChecks.DataSet) then
      FKRKValidationChecks.ValidateBeforePost;
  except
    on EIFV: EInvalidFieldValue do
    begin
      EIFV.CheckableField.Field.FocusControl;
      TKRDMBasico(Owner).ConfigureErrorHint('Campo incorreto'
                                           ,EIFV.Message
                                           ,TKRDMBasico(Owner).MyForm.ActiveControl
                                           ,True);
      Abort;
    end;
  end;
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

function TClientDataSet.GetMyParams: String;
begin
  Result := ClientDataSetParams(Self);
end;

constructor TKRDMBasico.Create(aOwner: TComponent);
var
  CI: TCollectionItem;
  KRKValidationChecks: String;
begin
  inherited;
  for CI in DataSets do
    if TDataSetItem(CI).DataSet.ClassNameIs('TClientDataset') then
    begin
      TClientDataset(TDataSetItem(CI).DataSet).OnReconcileError := DoReconcileError;

      KRKValidationChecks := GetConstraintsFor(TClientDataset(TDataSetItem(CI).DataSet).ProviderName,DAMOPrincipal.CurrentSession.ID);

      if KRKValidationChecks <> '' then
      begin
        TClientDataset(TDataSetItem(CI).DataSet).KRKValidationChecks.FromString(KRKValidationChecks);
        TClientDataset(TDataSetItem(CI).DataSet).KRKValidationChecks.DataSet := TDataSetItem(CI).DataSet;
      end;
    end;
end;

procedure TKRDMBasico.DoReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet,UpdateKind,E);
end;

procedure TKRDMBasico.ConfigureErrorHint(aTitle, aText: String; aWinControl: TWinControl; aShowHint: Boolean);
begin
  with KRBH do
  begin
    AssociatedWinControl := aWinControl;
    TipTitle := aTitle;
    TipText :=  aText;
    MaxWidth := 320;
    TipIcon := tiError;
//    Options := [kbhoActivateOnShow, kbhoSetFocusToAssociatedWinContronOnDeactivate, kbhoHideOnDeactivate, kbhoHideWithEnter, kbhoHideWithEsc, kbhoSelectAllOnFocus];

    if aShowHint then
      Show;
  end;
end;

end.

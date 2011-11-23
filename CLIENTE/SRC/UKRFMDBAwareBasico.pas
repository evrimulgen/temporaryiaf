unit UKRFMDBAwareBasico;

{ Anak Krakatoa Form. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses Windows
   , Messages
   , SysUtils
   , Classes
   , Graphics
   , Controls
   , Forms
   , KRK.Wizards.Form, ToolWin, ActnMan, ActnCtrls, ComCtrls, ImgList, ActnList,
  StdCtrls;

type
  TKRFMDBAwareBasico = class(TKRKForm)
    TLBRAcoes: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    IMLIToolBar: TImageList;
    ACLIToolbar: TActionList;
    ACTNConfirmar: TAction;
    ACTNReverter: TAction;
    LABLCaption: TLabel;
    procedure KRKFormCreate(Sender: TObject);
    procedure ACLIToolbarUpdate(Action: TBasicAction; var Handled: Boolean);
  private
    { Declarações privadas }
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
  end;

implementation

{$R *.dfm}

uses KRK.Wizards.DataModule
   , DBCLient
   , Variants;

procedure TKRFMDBAwareBasico.ACLIToolbarUpdate(Action: TBasicAction; var Handled: Boolean);
var
  DS: TCollectionItem;
begin
  for DS in TKRKDataModule(Owner).DataSets do
  como checar o delta?
    if TDataSetItem(DS).DataSet.Active and TDataSetItem(DS).DataSet.ClassNameIs('TClientDataset') and (not VarIsNull(TClientDataset(TDataSetItem(DS).DataSet).Delta)) then
    begin
      ACTNConfirmar.Enabled := True;
      ACTNReverter.Enabled := True;
      Handled := True;
    end;
end;

procedure TKRFMDBAwareBasico.KRKFormCreate(Sender: TObject);
begin
  LABLCaption.Caption := '  ' + Caption;
end;

end.

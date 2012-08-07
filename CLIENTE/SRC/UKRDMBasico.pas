unit UKRDMBasico;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-�mnis Solu��es Tecnol�gicas Ltda. }

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms
   , ActnList, ImgList, DBClient, DB, ActnMenus, ActnMan
   { Units que n�o pertencem ao Delphi }
   , UReconcileErrorDialog, KRK.Wizards.DataModule
   , KRK.Components.DataControls.ValidationChecks
   , KRK.Components.AdditionalControls.BalloonHint
   , KRK.Lib.Rtl.Common.Classes.Interposer
   , KRK.Components.AdditionalControls.PngImageList;

type
{$I INT\Interposer.TClientDataSet.Intf.inc}

{$I INT\Interposer.TActionList.Intf.inc}

{$I INT\Interposer.TAction.Intf.inc}

  TKRDMBasico = class(TKRKDataModule)
    ACLI: TActionList;
    KRBH: TKRKBalloonHint;
    KPIM: TKRKPngImageList;
    procedure KRKDataModuleBeforeCreateMyForm(const aMyFormClass: string);
  private
    { Declara��es privadas }
    FActionManager: TActionManager;
    procedure DoReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    function CheckPermission(const aTableName, aAction: String): Boolean;
  protected
    { Declara��es protegidas }
    procedure ApplyPermissions; virtual;
  public
    { Declara��es p�blicas }
    constructor Create(aOwner: TComponent); override;
    procedure ConfigureErrorHint(aTitle, aText: String; aWinControl: TWinControl; aShowHint: Boolean); virtual;
    function CanSelect(const aTableName: String): Boolean; virtual;
    function CanInsert(const aTableName: String): Boolean; virtual;
    function CanDelete(const aTableName: String): Boolean; virtual;
    function CanUpdate(const aTableName: String): Boolean; virtual;
    property ActionManager: TActionManager read FActionManager;
  end;

implementation

{$R *.dfm}

uses Variants, ComCtrls
   { Units que n�o pertencem ao Delphi }
   , UDAMOPrincipal, UExtraMethods, UConfiguracoes, KRK.Lib.Rtl.Common.FileUtils
   , KRK.Lib.Db.Utils, KRK.Lib.Rtl.Common.VariantUtils;

constructor TKRDMBasico.Create(aOwner: TComponent);
{ ---------------------------------------------------------------------------- }
procedure GetProviderName(var aProviderName: String; const aDataSetField: TDataSetField);
begin
  if (aProviderName = '') and Assigned(aDataSetField) then
  begin
    { � seguro fazer este Cast aqui, visto que, no cliente, deve haver apenas
    CLDS, logo, todo DataSet no cliente deve ser um CLDS }
    aProviderName := TClientDataSet(aDataSetField.DataSet).ProviderName;
    { No momento em que ProviderName for diferente de vazio a recursividade p�ra.
    No pior dos casos aProviderName vai terminar vazio o que significa que o
    CLDS sendo testado � 100% local }
    GetProviderName(aProviderName,TClientDataSet(aDataSetField.DataSet).DataSetField);
  end;
end;
{ ---------------------------------------------------------------------------- }
var
  CI: TCollectionItem;
  KRKValidationChecks, ProviderName: String;
  DataSetField: TDataSetField;
begin
  inherited;

  for CI in DataSets do
    if TDataSetItem(CI).DataSet.ClassNameIs('TClientDataset') then
    begin
      ProviderName := TClientDataset(TDataSetItem(CI).DataSet).ProviderName;
      DataSetField := TClientDataset(TDataSetItem(CI).DataSet).DataSetField;

      { Ao passar deste ponto, a vari�vel ProviderName vai conter o nome do
      Provider do CLDS atual ou do primeiro CLDS mestre com um ProviderName
      definido. Caso ele esteja vazio ao final significa que � um CLDS 100%
      local e nada precisa ser feito aqui }
      GetProviderName(ProviderName,DataSetField);

      { Se houver um ProviderName, podemos tentar obter seus constraints }
      if ProviderName <> '' then
      begin
        { Todo CLDS que tem um ProviderName definido ou est� em um
        relacionamento mestre/detalhe com um mestre que cont�m um ProviderName
        definido precisa manipular o evento OnReconcileError }
        TClientDataset(TDataSetItem(CI).DataSet).OnReconcileError := DoReconcileError;

        KRKValidationChecks := GetConstraintsFor(ProviderName,TDataSetItem(CI).DataSet.Name,TDAMOPrincipal(Owner).CurrentSession.ID);

        if KRKValidationChecks <> '' then
        begin
          TClientDataset(TDataSetItem(CI).DataSet).KRKValidationChecks.FromString(KRKValidationChecks);
          TClientDataset(TDataSetItem(CI).DataSet).KRKValidationChecks.DataSet := TDataSetItem(CI).DataSet;
        end;
      end;
    end;
end;

procedure TKRDMBasico.DoReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet,UpdateKind,E);
end;

procedure TKRDMBasico.KRKDataModuleBeforeCreateMyForm(const aMyFormClass: string);
var
  i: Word;
begin
  FActionManager := nil;

  { Buscando o TActionManager. Apenas o primeiro encontrado � considerado, pois
  n�o � permitido ou necess�rio mais que um TActionManager por tela }
  for i := 0 to Pred(ComponentCount) do
    if Components[i] is TActionManager then
    begin
      FActionManager := TActionManager(Components[i]);
      Break;
    end;

  if not TDAMOPrincipal(Owner).CurrentSession.Data.bo_superusuario then
    ApplyPermissions;
end;

procedure TKRDMBasico.ApplyPermissions;
var
  i: Word;
begin
  { Oculta todas as a��es dispon�veis em um poss�vel TActionManager. Isso n�o
  oculta as categorias de a��es, apenas as a��es propriamente ditas }
  if Assigned(FActionManager) then
    for i := 0 to Pred(FActionManager.ActionCount) do
      TAction(FActionManager.Actions[i]).Visible := False;

  { Instrui todas as a��es dispon�veis em ACLI a serem n�o permitidas }
  if ACLI.ActionCount > 0 then
    for i := 0 to Pred(ACLI.ActionCount) do
      TAction(ACLI.Actions[i]).Permitida := False;

  { Torna vis�veis ou habilitadas apenas as a��es que forem permitidas }
  TDAMOPrincipal(Owner).CLDSPermissoes.First;
  while not TDAMOPrincipal(Owner).CLDSPermissoes.Eof do
  begin
    { Primeiramente aplicamos a seguran�a em um poss�vel menu principal da janela
    associada. Como para os menus principais � necess�rio um Action Manager,
    verificamos apenas a presen�a deste �ltimo }
    if Assigned(FActionManager) then
      if (TDAMOPrincipal(Owner).CLDSPermissoes.Fields[1].AsInteger = 1) and (Pos(Self.Name + '.',TDAMOPrincipal(Owner).CLDSPermissoes.Fields[0].AsString) = 1) then
        for i := 0 to Pred(FActionManager.ActionCount) do
          if Copy(TDAMOPrincipal(Owner).CLDSPermissoes.Fields[0].AsString,Succ(Pos('.',TDAMOPrincipal(Owner).CLDSPermissoes.Fields[0].AsString)),Length(TDAMOPrincipal(Owner).CLDSPermissoes.Fields[0].AsString)) = FActionManager.Actions[i].Name then
          begin
            TAction(FActionManager.Actions[i]).Visible := TDAMOPrincipal(Owner).CLDSPermissoes.Fields[2].AsBoolean;
            Break;
          end;

    { Em seguida aplicamos as permiss�es ao componente ACLI (TActionList) }
    if (TDAMOPrincipal(Owner).CLDSPermissoes.Fields[1].AsInteger = 1) and (Pos(Self.Name + '.',TDAMOPrincipal(Owner).CLDSPermissoes.Fields[0].AsString) = 1) then
      for i := 0 to Pred(ACLI.ActionCount) do
        if Copy(TDAMOPrincipal(Owner).CLDSPermissoes.Fields[0].AsString,Succ(Pos('.',TDAMOPrincipal(Owner).CLDSPermissoes.Fields[0].AsString)),Length(TDAMOPrincipal(Owner).CLDSPermissoes.Fields[0].AsString)) = ACLI.Actions[i].Name then
        begin
          TAction(ACLI.Actions[i]).Permitida := TDAMOPrincipal(Owner).CLDSPermissoes.Fields[2].AsBoolean;
          Break;
        end;

    TDAMOPrincipal(Owner).CLDSPermissoes.Next;
  end;

  { Ao final fazemos uma esp�cie de sincroniza��o entre as propriedades
  "Permitida" e "Enabled" de ACLI de forma que fiquem desabilitadas apenas as
  a��es n�o permitidas }
  ACLI.SyncActionsWithPermissions;
end;

{ A caracter�stica do compilador conhecida como curto-circuito booleano (boolean
short-circuit) n�o funciona com operandos do tipo Variant. Um cast se torna
obrigat�rio! }

function TKRDMBasico.CheckPermission(const aTableName, aAction: String): Boolean;
var
  Permission: Variant;
begin
  Permission := TDAMOPrincipal(Owner).CLDSPermissoes.Lookup('ENTIDADE',UpperCase(aTableName),UpperCase(aAction));
  Result := (not VarIsNull(Permission)) and Boolean(Permission);
end;

function TKRDMBasico.CanDelete(const aTableName: String): Boolean;
begin
  Result := TDAMOPrincipal(Owner).CurrentSession.Data.bo_superusuario
         or CheckPermission(aTableName,'EXCLUIR')
end;

function TKRDMBasico.CanInsert(const aTableName: String): Boolean;
begin
  Result := TDAMOPrincipal(Owner).CurrentSession.Data.bo_superusuario
         or CheckPermission(aTableName,'INSERIR');
end;

function TKRDMBasico.CanSelect(const aTableName: String): Boolean;
begin
  Result := TDAMOPrincipal(Owner).CurrentSession.Data.bo_superusuario
         or CheckPermission(aTableName,'LER');
end;

function TKRDMBasico.CanUpdate(const aTableName: String): Boolean;
begin
  Result := TDAMOPrincipal(Owner).CurrentSession.Data.bo_superusuario
         or CheckPermission(aTableName,'ALTERAR');
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

    if aShowHint then
      Show;
  end;
end;

{$I INT\Interposer.TClientDataSet.Impl.inc}

{$I INT\Interposer.TActionList.Impl.inc}

{$I INT\Interposer.TAction.Impl.inc}

end.

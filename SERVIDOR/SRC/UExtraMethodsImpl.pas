unit UExtraMethodsImpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, UExtraMethodsIntf;

type
  TExtraMethods = class(TInvokableClass, IExtraMethods)
  public
    function GetConstraintsFor(const aProviderName: WideString; const aSessionID: String): String; stdcall;
  end;

implementation

uses SysUtils
   , Classes
   , KRK.Components.DataControls.ValidationChecks
   , UKRDMBasico
   , UKRDMEntidadesDoSistema
   , UKRDMUsuarios
   , UExtraUtilities;

{ TExtraMethods }

function TExtraMethods.GetConstraintsFor(const aProviderName: WideString; const aSessionID: String): String;
var
  KRDMBasico: TKRDMBasico;
  i: Word;
  DataSetName: String;
begin
  if (not CheckSessions) or SessionExists(aSessionID) then
  begin
    Result := '';

    DataSetName := UpperCase(StringReplace(aProviderName,'DSPR','ZQRY',[rfIgnoreCase]));

    KRDMBasico := CreateDataModule(aProviderName);

    if Assigned(KRDMBasico) then
      with KRDMBasico do
        try
          for i := 0 to Pred(ComponentCount) do
            if Components[i].ClassNameIs(TKRKValidationChecks.ClassName) and (UpperCase(TKRKValidationChecks(Components[i]).DataSet.Name) = DataSetName) then
            begin
              Result := TKRKValidationChecks(Components[i]).ToString;
              Break;
            end;
        finally
          Free;
        end;
  end
  else
    raise Exception.Create('Para usar este m�todo � necess�rio que voc� seja um usu�rio autenticado no sistema');
end;

initialization
  InvRegistry.RegisterInvokableClass(TExtraMethods);

end.

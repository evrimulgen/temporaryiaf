unit UExtraMethodsImpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, UExtraMethodsIntf;

type
  TExtraMethods = class(TInvokableClass, IExtraMethods)
  public
    function GetConstraintsFor(const aProviderName: WideString; aDataSetName: WideString; const aSessionID: String): String; stdcall;
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

function TExtraMethods.GetConstraintsFor(const aProviderName: WideString; aDataSetName: WideString; const aSessionID: String): String;
var
  KRDMBasico: TKRDMBasico;
  i: Word;
begin
  if (not CheckSessions) or SessionExists(aSessionID) then
  begin
    Result := '';

    if aDataSetName = '' then
      aDataSetName := UpperCase(StringReplace(aProviderName,'DSPR','ZQRY',[rfIgnoreCase]))
    else
      aDataSetName := UpperCase(StringReplace(aDataSetName,'CLDS','ZQRY',[rfIgnoreCase]));

    KRDMBasico := CreateDataModule(aProviderName);

    if Assigned(KRDMBasico) then
      with KRDMBasico do
        try
          for i := 0 to Pred(ComponentCount) do
            if Components[i].ClassNameIs(TKRKValidationChecks.ClassName) and (UpperCase(TKRKValidationChecks(Components[i]).DataSet.Name) = aDataSetName) then
            begin
              Result := TKRKValidationChecks(Components[i]).ToString;
              Break;
            end;
        finally
          Free;
        end;
  end
  else
    raise Exception.Create('Para usar este método é necessário que você seja um usuário autenticado no sistema');
end;

initialization
  InvRegistry.RegisterInvokableClass(TExtraMethods);

end.


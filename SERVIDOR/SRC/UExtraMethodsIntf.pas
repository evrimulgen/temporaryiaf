unit UExtraMethodsIntf;

interface

uses InvokeRegistry, Types, XSBuiltIns;

type
  IExtraMethods = interface(IInvokable)
  ['{5DF1C06B-C897-48FC-9011-7E5E2AC4AA9B}']
    function GetConstraintsFor(const aProviderName: WideString; aDataSetName: WideString; const aSessionID: String): String; stdcall;
    function GetPermissions(const aSessionID: String): OleVariant; stdcall;
  end;

implementation

initialization
  InvRegistry.RegisterInterface(TypeInfo(IExtraMethods),'','','Interface que exp�e m�todos adicionais que podem ser usados por clientes autenticados');

end.

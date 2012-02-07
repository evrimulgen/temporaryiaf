unit UExtraMethodsIntf;

interface

uses InvokeRegistry, Types, XSBuiltIns;

type
  IExtraMethods = interface(IInvokable)
  ['{5DF1C06B-C897-48FC-9011-7E5E2AC4AA9B}']
    function GetConstraintsFor(const aProviderName: WideString; aDataSetName: WideString; const aSessionID: String): String; stdcall;
  end;

implementation

initialization
  InvRegistry.RegisterInterface(TypeInfo(IExtraMethods),'','','Descrição de IExtraMethods');

end.

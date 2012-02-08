unit UServerManagerIntf;

interface

uses InvokeRegistry
   , Types
   , XSBuiltIns
   , ZDbcIntfs;

type
  IServerManager = interface(IInvokable)
  ['{54D0695E-FC64-4DAC-B9F1-33356B5CCE27}']
    procedure SetCheckSessions(const aPassword: String; const aValue: Boolean); stdcall;
    function GetCheckSessions: Boolean; stdcall;

    procedure SetUseCompression(const aPassword: string; const aValue: Boolean); stdcall;
    function GetUseCompression: Boolean; stdcall;

    procedure SetDBHostName(const aPassword: string; const aValue: String); stdcall;
    procedure SetDBPortNumb(const aPassword: string; const aValue: Word); stdcall;
    procedure SetDBDatabase(const aPassword: string; const aValue: String); stdcall;
    procedure SetDBUser(const aPassword: string; const aValue: String); stdcall;
    procedure SetDBPassword(const aPassword: string; const aValue: String); stdcall;
    procedure SetDBProtocol(const aPassword: string; const aValue: String); stdcall;
    procedure SetDBTransactIsolationLevel(const aPassword: string; const aValue: TZTransactIsolationLevel); stdcall;
  end;

implementation

initialization
  InvRegistry.RegisterInterface(TypeInfo(IServerManager),'','','Interface que expõe métodos para gerenciamento remoto do Middleware');

end.

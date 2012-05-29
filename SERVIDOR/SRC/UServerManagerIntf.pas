unit UServerManagerIntf;

interface

uses InvokeRegistry, Types, XSBuiltIns, CRAccess, DASQLMonitor;

type
  IServerManager = interface(IInvokable)
  ['{54D0695E-FC64-4DAC-B9F1-33356B5CCE27}']
    procedure SetCheckSessions(const aPassword: String; const aValue: Boolean); stdcall;
    function GetCheckSessions: Boolean; stdcall;

    procedure SetUseCompression(const aPassword: string; const aValue: Boolean); stdcall;
    function GetUseCompression: Boolean; stdcall;

    procedure SetUseDBMonitor(const aPassword: string; const aValue: Boolean); stdcall;
    function GetUseDBMonitor: Boolean; stdcall;

    procedure SetDBMonitorHost(const aPassword: string; const aValue: String); stdcall;
    function GetDBMonitorHost: String; stdcall;

    procedure SetDBMonitorPort(const aPassword: string; const aValue: Word); stdcall;
    function GetDBMonitorPort: Word; stdcall;

    procedure SetDBMonitorReconnectTimeout(const aPassword: string; const aValue: Word); stdcall;
    function GetDBMonitorReconnectTimeout: Word; stdcall;

    procedure SetDBMonitorSendTimeout(const aPassword: string; const aValue: Word); stdcall;
    function GetDBMonitorSendTimeout: Word; stdcall;

    procedure SetDBMonitorTraceFlags(const aPassword: string; const aValue: Word); stdcall;
    function GetDBMonitorTraceFlags: Word; stdcall;

    procedure SetDBHostName(const aPassword: string; const aValue: String); stdcall;
    function GetDBHostName: String; stdcall;

    procedure SetDBPortNumb(const aPassword: string; const aValue: Word); stdcall;
    function GetDBPortNumb: Word; stdcall;

    procedure SetDBDatabase(const aPassword: string; const aValue: String); stdcall;
    function GetDBDatabase: String; stdcall;

    procedure SetDBUser(const aPassword: string; const aValue: String); stdcall;
    procedure SetDBPassword(const aPassword: string; const aValue: String); stdcall;

    procedure SetDBProvider(const aPassword: string; const aValue: String); stdcall;
    function GetDBProvider: String; stdcall;

    procedure SetDBTransactIsolationLevel(const aPassword: string; const aValue: TCRIsolationLevel); stdcall;
    function GetDBTransactIsolationLevel: TCRIsolationLevel; stdcall;
  end;

implementation

initialization
  InvRegistry.RegisterInterface(TypeInfo(IServerManager),'','','Interface que expõe métodos para gerenciamento remoto do Middleware');

end.

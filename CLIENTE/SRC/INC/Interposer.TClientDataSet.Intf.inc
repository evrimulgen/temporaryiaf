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
    procedure DoBeforeInsert; override;
    procedure DoBeforeDelete; override;
    procedure DoBeforeEdit; override;
    procedure DoBeforePost; override;
    procedure DoBeforeOpen; override;
    procedure DoAfterOpen; override;
    procedure DoBeforeApplyUpdates(var OwnerData: OleVariant); override;
    procedure DoBeforeGetParams(var OwnerData: OleVariant); override;
    procedure DoBeforeGetRecords(var OwnerData: OleVariant); override;
    procedure DoBeforeRowRequest(var OwnerData: OleVariant); override;
    procedure DoBeforeExecute(var OwnerData: OleVariant); override;
    procedure DoOnNewRecord; override;
    function DoApplyUpdates(Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer): OleVariant; override;
    function DoGetRecords(Count: Integer; out RecsOut: Integer; Options: Integer; const CommandText: WideString; Params: OleVariant): OleVariant; override;
  end;

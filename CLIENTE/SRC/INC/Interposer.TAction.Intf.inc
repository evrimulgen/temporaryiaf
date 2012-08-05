  TAction = class(ActnList.TAction)
  private
    FPermitida: Boolean;
    FToggleVisibility: Boolean;
    procedure SetPermitida(const Value: Boolean);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetVisible: Boolean;
    procedure SetVisible(const Value: Boolean);
  public
    constructor Create(aOwner: TComponent); override;
    function Execute: Boolean; override;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property Permitida: Boolean read FPermitida write SetPermitida default True;
    property ToggleVisibility: Boolean read FToggleVisibility write FToggleVisibility default False;
    property Visible: Boolean read GetVisible write SetVisible;
  end;


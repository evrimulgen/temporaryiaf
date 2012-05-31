  TAction = class(ActnList.TAction)
  private
    FPermitida: Boolean;
    procedure SetPermitida(const Value: Boolean);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
  public
    constructor Create(aOwner: TComponent); override;
    property Permitida: Boolean read FPermitida write SetPermitida default True;
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;


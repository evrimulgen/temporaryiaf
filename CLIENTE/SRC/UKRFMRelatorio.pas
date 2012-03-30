unit UKRFMRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRFMDBAwareBasico, ActnList, ImgList, StdCtrls, ComCtrls, ToolWin,
  ActnMan, ActnCtrls, ActnMenus, ExtCtrls;

type
  TKRFMRelatorio = class(TKRFMDBAwareBasico)
    ACMB: TActionMainMenuBar;
    BUTN1: TButton;
    BUTN2: TButton;
    BUTN3: TButton;
    BUTN4: TButton;
    BUTN5: TButton;
    BUTN6: TButton;
    BUTN7: TButton;
    procedure BUTN7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses UKRDMRelatorio;

{$R *.dfm}

procedure TKRFMRelatorio.BUTN7Click(Sender: TObject);
begin
  inherited;
  TKRDMRelatorio(owner).ACTN_1.Enabled := not TKRDMRelatorio(owner).ACTN_1.Enabled;
end;

initialization
  RegisterClass(TKRFMRelatorio)

end.

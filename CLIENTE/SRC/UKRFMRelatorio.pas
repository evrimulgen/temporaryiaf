unit UKRFMRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRFMDBAwareBasico, ActnList, ImgList, StdCtrls, ComCtrls, ToolWin,
  ActnMan, ActnCtrls, ActnMenus;

type
  TKRFMRelatorio = class(TKRFMDBAwareBasico)
    ACMB: TActionMainMenuBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TKRFMRelatorio)

end.

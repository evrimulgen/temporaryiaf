unit UKRDMRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UKRDMBasico, KRK.Components.AdditionalControls.BalloonHint, ImgList,
  ActnList, PlatformDefaultStyleActnCtrls, ActnMan;

type
  TKRDMRelatorio = class(TKRDMBasico)
    ACMA: TActionManager;
    ACTN1: TAction;
    ACTN2: TAction;
    ACTN3: TAction;
    ACTN4: TAction;
    ACTN5: TAction;
    ACTN6: TAction;
    procedure ACTN1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TKRDMRelatorio.ACTN1Execute(Sender: TObject);
begin
  inherited;
  Showmessage('oi');
end;

end.

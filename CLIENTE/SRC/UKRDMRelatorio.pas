unit UKRDMRelatorio;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms
   , Dialogs, KRK.Components.AdditionalControls.BalloonHint, ImgList, ActnList
   , PlatformDefaultStyleActnCtrls, ActnMan, UKRDMBasico;

type
  TKRDMRelatorio = class(TKRDMBasico)
    ACMA: TActionManager;
    ACTN1: TAction;
    ACTN2: TAction;
    ACTN3: TAction;
    ACTN4: TAction;
    ACTN5: TAction;
    ACTN6: TAction;
    ACTN_1: TAction;
    ACTN_2: TAction;
    ACTN_3: TAction;
    ACTN_4: TAction;
    ACTN_5: TAction;
    ACTN_6: TAction;
    procedure ACTN1Execute(Sender: TObject);
    procedure ACTN_1Execute(Sender: TObject);
    procedure ACTN_2Execute(Sender: TObject);
    procedure ACTN_3Execute(Sender: TObject);
    procedure ACTN_4Execute(Sender: TObject);
    procedure ACTN_5Execute(Sender: TObject);
    procedure ACTN_6Execute(Sender: TObject);
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

procedure TKRDMRelatorio.ACTN_1Execute(Sender: TObject);
begin
  inherited;
  ShowMessage('A1');
end;

procedure TKRDMRelatorio.ACTN_2Execute(Sender: TObject);
begin
  inherited;
  ShowMessage('A2');
end;

procedure TKRDMRelatorio.ACTN_3Execute(Sender: TObject);
begin
  inherited;
  ShowMessage('A3');
end;

procedure TKRDMRelatorio.ACTN_4Execute(Sender: TObject);
begin
  inherited;
  ShowMessage('A4');
end;

procedure TKRDMRelatorio.ACTN_5Execute(Sender: TObject);
begin
  inherited;
  ShowMessage('A5');
end;

procedure TKRDMRelatorio.ACTN_6Execute(Sender: TObject);
begin
  inherited;
  ShowMessage('A6');
end;

end.

unit UFORMSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFORMSplash = class(TForm)
    IMAGClose: TImage;
    Panel1: TPanel;
    Image1: TImage;
    Shape1: TShape;
    StaticText1: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IMAGCloseClick(Sender: TObject);
  private
    { Private declarations }
    FCloseDelay: Byte;
    procedure DelayedClose(const aSeconds: Byte);
    procedure DoCloseDelayed(var Msg: TMessage);
  public
    { Public declarations }
    class procedure ShowMe(aCloseDelay: Byte = 0);
  end;

implementation

{$R *.dfm}

const
  IDT_DELAYEDCLOSE = 1;

{ TFORMSplash }

procedure TFORMSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFORMSplash.DelayedClose(const aSeconds: Byte);
begin
  SetTimer(Handle,IDT_DELAYEDCLOSE,aSeconds * 1000,Classes.MakeObjectInstance(DoCloseDelayed));
end;

procedure TFORMSplash.DoCloseDelayed(var Msg: TMessage);
begin
  KillTimer(Handle,TWMTimer(Msg).TimerID);
  Close;
end;

procedure TFORMSplash.FormShow(Sender: TObject);
begin
  if FCloseDelay > 0 then
    DelayedClose(FCloseDelay)
  else
    IMAGClose.Show;
end;

procedure TFORMSplash.IMAGCloseClick(Sender: TObject);
begin
  Close;
end;

class procedure TFORMSplash.ShowMe(aCloseDelay: Byte = 0);
begin
  with TFORMSplash.Create(nil) do
  begin
    FCloseDelay := aCloseDelay;
    ShowModal;
  end;
end;

end.

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
    FCloseDelay: SmallInt;
    procedure DelayedClose(const aSeconds: Byte);
    procedure DoCloseDelayed(var Msg: TMessage);
  public
    { Public declarations }
    class function ShowMe(aCloseDelay: SmallInt = -1): TFORMSplash;
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
  case FCloseDelay of
    { Qualquer número maior que zero, fecha automaticamente }
    1..32767: DelayedClose(FCloseDelay);
    { Zero não faz nada, nem mesmo mostra o botão de fechar }
    0: Update;
    { Valores negativos mostram um botão de fechar }
    else
      IMAGClose.Show;
  end;
end;

procedure TFORMSplash.IMAGCloseClick(Sender: TObject);
begin
  Close;
end;

class function TFORMSplash.ShowMe(aCloseDelay: SmallInt = -1): TFORMSplash;
begin
  Result := TFORMSplash.Create(nil);

  with Result do
  begin
    FCloseDelay := aCloseDelay;

    if aCloseDelay = 0 then
    begin
      FormStyle := fsStayOnTop;
      Show;
    end
    else
      ShowModal;
  end;
end;

end.

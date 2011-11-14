unit UFORMLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFORMLogin = class(TForm)
    LAEDLogin: TLabeledEdit;
    Bevel1: TBevel;
    LAEDSenha: TLabeledEdit;
    BUTNLogar: TButton;
    BUTNCancelar: TButton;
    procedure BUTNLogarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FSessionID: String;
  public
    { Public declarations }
    class function ShowMe(out aSessionID: String): TModalResult;
  end;

implementation

uses UAuthenticator;

{$R *.dfm}

{ TFORMLogin }

procedure TFORMLogin.BUTNLogarClick(Sender: TObject);
begin
  if Login(LAEDLogin.Text,LAEDSenha.Text,FSessionID) then
    ModalResult := mrOk
  else
    Application.MessageBox('A autenticação falhou. Verifique seu login e sua senha e tente outra vez','A Autenticação falhou',MB_ICONERROR);
end;

procedure TFORMLogin.FormCreate(Sender: TObject);
begin
  FSessionID := '';
end;

class function TFORMLogin.ShowMe(out aSessionID: String): TModalResult;
begin
  with TFORMLogin.Create(nil) do
    try
      Result := ShowModal;
      aSessionID := FSessionID;
    finally
      Free;
    end;
end;

end.

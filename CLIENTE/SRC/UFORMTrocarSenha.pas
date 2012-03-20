unit UFORMTrocarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFORMTrocarSenha = class(TForm)
    BUTNOk: TButton;
    BUTNCancelar: TButton;
    BVELLayer: TBevel;
    LAEDSenhaAtual: TLabeledEdit;
    LAEDNovaSenha: TLabeledEdit;
    LAEDNovaSenha2: TLabeledEdit;
    procedure BUTNOkClick(Sender: TObject);
  private
    { Private declarations }
    FSessionID: String;
    function ChangePassword: TModalResult;
  public
    { Public declarations }
    class function ShowMe1(const aSessionID: String): TModalResult; static;
  end;

implementation

uses UAuthenticator, KRK.Lib.DCPcrypt.Utilities, KRK.Lib.DCPcrypt.Types;

{$R *.dfm}

procedure TFORMTrocarSenha.BUTNOkClick(Sender: TObject);
begin
  ModalResult := ChangePassword;
end;

function TFORMTrocarSenha.ChangePassword: TModalResult;
begin
  if (LAEDNovaSenha.Text = '') or (LAEDNovaSenha2.Text = '') then
    raise Exception.Create('A nova senha n�o pode ser em branco. Por favor informe a mesma senha nos dois campos nomeados "Nova senha"');

  if LAEDNovaSenha.Text <> LAEDNovaSenha2.Text then
    raise Exception.Create('As senhas n�o conferem. Favor informar a mesma senha nos dois campos nomeados "Nova senha"');

{ 1: A sess�o n�o existe
  2: A senha antiga n�o confere }
  case UAuthenticator.ChangePassword(FSessionID,LAEDSenhaAtual.Text,LAEDNovaSenha.Text) of
    0: Application.MessageBox('Sua senha foi alterada com sucesso!','Altera��o de senha conclu�da!',MB_ICONINFORMATION);
    1: raise Exception.Create('A sess�o do usu�rio n�o existe. N�o � poss�vel continuar');
    2: raise Exception.Create('A senha atual n�o confere. Por favor redigite a senha atual e tente novamente');
  end;

  Result := mrOk;
end;

class function TFORMTrocarSenha.ShowMe1(const aSessionID: String): TModalResult;
begin
  with TFORMTrocarSenha.Create(nil) do
    try
      LAEDSenhaAtual.Enabled := False;
      FSessionID := aSessionID;
      Result := ShowModal;
    finally
      Free;
    end;
end;


end.

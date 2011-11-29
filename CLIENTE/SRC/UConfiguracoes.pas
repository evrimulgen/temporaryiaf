unit UConfiguracoes;

interface

uses KRK.Win32.Rtl.Common.Classes
   , Classes;

type
  TConfiguracoes = class(TObjectFile)
  private
    FServidor: String;
  public
    constructor Create(aOwner: TComponent; aAutoSaveMode: TAutoSaveMode = asNone); override;
  published
    property Servidor: String read FServidor write FServidor;
  end;

var
  Configuracoes: TConfiguracoes;

implementation

uses SysUtils
   , Forms;

const
  SERVIDOR_PADRAO = 'http://127.0.0.1/iaf/IAFServer.dll';

{ TConfiguracoes }

constructor TConfiguracoes.Create(aOwner: TComponent; aAutoSaveMode: TAutoSaveMode);
begin
  inherited;
  FServidor := SERVIDOR_PADRAO;
end;

initialization
  Configuracoes := TConfiguracoes.Create(nil,asText);
  Configuracoes.LoadFromTextFile(ChangeFileExt(Application.ExeName,'.cfg'));

finalization
  Configuracoes.Free;

end.

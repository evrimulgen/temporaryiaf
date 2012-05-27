unit UConfiguracoes;

interface

uses KRK.Lib.Rtl.Common.Classes, Classes;

type
  TConfiguracoes = class(TObjectFile)
  private
    FServidor: String;
    FServico: String;
    FEnderecoProxy: String;
    FUsuarioProxy: String;
    FSenhaProxy: String;
    FModulo: String;
    FUsarCompressao: Boolean;
    function GetServicoWeb: String;
    function GetModuloWeb: String;
  public
    constructor Create(aOwner: TComponent; aAutoSaveMode: TAutoSaveMode = asmNone); override;
    property ServicoWeb: String read GetServicoWeb;
    property ModuloWeb: String read GetModuloWeb;
    property UsarCompressao: Boolean read FUsarCompressao write FUsarCompressao default True;
  published
    property Servico: String read FServico write FServico;
    property Servidor: String read FServidor write FServidor;
    property Modulo: String read FModulo write FModulo;
    property EnderecoProxy: String read FEnderecoProxy write FEnderecoProxy;
    property UsuarioProxy: String read FUsuarioProxy write FUsuarioProxy;
    property SenhaProxy: String read FSenhaProxy write FSenhaProxy;
  end;

var
  Configuracoes: TConfiguracoes;

implementation

uses SysUtils, Forms;

const
  SERVIDOR_PADRAO = 'http://127.0.0.1';
  SERVICO_PADRAO = '/iaf/IAFServer.dll';
  MODULO_PADRAO = '/soap/ISODMPrincipal';

{ TConfiguracoes }

constructor TConfiguracoes.Create(aOwner: TComponent; aAutoSaveMode: TAutoSaveMode = asmNone);
begin
  inherited;
  FServidor       := SERVIDOR_PADRAO;
  FEnderecoProxy  := '';
  FUsuarioProxy   := '';
  FSenhaProxy     := '';
  FServico        := SERVICO_PADRAO;
  FModulo         := MODULO_PADRAO;
  FUsarCompressao := True;
end;

function TConfiguracoes.GetModuloWeb: String;
begin
  Result := GetServicoWeb + FModulo;
end;

function TConfiguracoes.GetServicoWeb: String;
begin
  Result := FServidor + FServico;
end;

initialization
  Configuracoes := TConfiguracoes.Create(nil,asmText);
  Configuracoes.LoadFromTextFile(ChangeFileExt(Application.ExeName,'.Configs'));

finalization
  Configuracoes.Free;

end.

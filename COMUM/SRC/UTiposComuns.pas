unit UTiposComuns;

interface

uses
  KRK.Lib.Rtl.Common.Classes;

type
  { TSessionData precisa ser do tipo TObjectFile de forma a poder usar o método
  LoadFromTextualRepresentation para carregar uma sessão a partir da lista de
  sessões em UAuthenticatorImpl.pas no servidor }
  TSessionData = class(TObjectFile)
  private
    Fsm_usuarios_id: SmallInt;
    Fva_nome: String;
    Fva_login: String;
    Fch_senha: String;
    Fva_email: String;
  published
    property sm_usuarios_id: SmallInt read Fsm_usuarios_id write Fsm_usuarios_id;
    property va_nome: String read Fva_nome write Fva_nome;
    property va_login: String read Fva_login write Fva_login;
    property ch_senha: String read Fch_senha write Fch_senha;
    property va_email: String read Fva_email write Fva_email;
  end;

  { Usado no cliente, este record, guarda os dados da sessão do usuário
  atualmente logado}
  TCurrentSession = record
    ID: String;
    Data: TSessionData;
  end;

implementation

end.

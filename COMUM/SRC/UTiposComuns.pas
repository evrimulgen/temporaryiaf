unit UTiposComuns;

interface

uses
  KRK.Win32.Rtl.Common.Classes;

type
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

  TCurrentSession = record
    ID: String;
    Data: TSessionData;
  end;

implementation

end.

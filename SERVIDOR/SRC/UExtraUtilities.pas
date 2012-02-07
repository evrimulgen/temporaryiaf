unit UExtraUtilities;

interface

uses Classes
   , UKRDMBasico
   , ZConnection;

function CreateDataModule(const aProviderName: WideString; const aOwner: TComponent = nil): TKRDMBasico;
function CheckSessions: Boolean;
function UseCompression: Boolean;
function SessionExists(const aSessionID: String): Boolean;
procedure ConfigureConnection(const aZConnection: TZConnection);
procedure HideInterfaces(var aContent: String; aInterfaces: array of string);
procedure AddDefaultFooter(var aContent: String);

implementation

uses SysUtils
   , UServerConfiguration
   , USessionsManager
   , UKRDMUsuarios
   , UKRDMEntidadesDoSistema
   , UKRDMGrupos;

procedure HideInterfaces(var aContent: String; aInterfaces: array of string);
var
  Intf: String;
  PosInterface, DelStart, DelEnd: Integer;
begin
  { Circula por cada interface que precisa ser ocultada }
  for Intf in aInterfaces do
  begin
    { Procura a interface dentro do conteúdo }
    PosInterface := Pos(Intf,aContent);

    { Se existir a interface continua }
    if PosInterface > 0 then
    begin
      DelEnd := PosEx('</tr>',aContent,PosInterface) + Length('</tr>');
      DelStart := PosEx()
    end;

    salve em um string list
    remova todos os enters
    substituua tudo que é </tr> e <tr> por enter
    cada linha vai ser aquilo que existir entre TR e /TR grosso modo
    varre a lista e busca a interface
    quando achar, remova alinha completa
  end;
end;

procedure AddDefaultFooter(var aContent: String);
begin
  aContent := aContent + 'carlos';
end;


function CreateDataModule(const aProviderName: WideString; const aOwner: TComponent = nil): TKRDMBasico;
begin
  { Não é necessário usar free para destruir, visto que usamos este datamodule
  como dono dos datamodules criados }
  if aProviderName = 'DSPRUsuarios' then
    Result := TKRDMUsuarios.Create(aOwner)
  else if aProviderName = 'DSPREntidadesDoSistema' then
    Result := TKRDMEntidadesDoSistema.Create(aOwner)
  else if aProviderName = 'DSPRGrupos' then
    Result := TKRDMGrupos.Create(aOwner)
  else
    raise Exception.Create('Não há nenhum módulo de dados remoto para o provedor "' + aProviderName + '"');
end;

function CheckSessions: Boolean;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.CheckSessions;
  finally
    CS.Leave;
  end;
end;

function UseCompression: Boolean;
begin
  CS.Enter;
  try
    Result := ServerConfiguration.UseCompression;
  finally
    CS.Leave;
  end;
end;

function SessionExists(const aSessionID: String): Boolean;
begin
  CS.Enter;
  try
    Result := Assigned(SessionsFile.Sessions[aSessionID]);
  finally
    CS.Leave;
  end;
end;

procedure ConfigureConnection(const aZConnection: TZConnection);
begin
  with aZConnection do
  begin
    CS.Enter;
    try
      HostName               := ServerConfiguration.DBHostName;
      Port                   := ServerConfiguration.DBPortNumb;
      Database               := ServerConfiguration.DBDatabase;
      User                   := ServerConfiguration.DBUserName;
      Password               := ServerConfiguration.DBPassword;
      Protocol               := ServerConfiguration.DBProtocol;
      TransactIsolationLevel := ServerConfiguration.DBTransactIsolationLevel;
    finally
      CS.Leave;
    end;

    Properties.Add('codepage=UTF8');
    Properties.Add('client_encoding=UTF8');
  end;
end;

end.

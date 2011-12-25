unit UExtraUtilities;

interface

uses Classes
   , UKRDMBasico
   , ZConnection;

function CreateDataModule(const aProviderName: WideString; const aOwner: TComponent = nil): TKRDMBasico;
function CheckSessions: Boolean;
function SessionExists(const aSessionID: String): Boolean;
procedure ConfigureConnection(const aZConnection: TZConnection);

implementation

uses SysUtils
   , UServerConfiguration
   , USessionsManager
   , UKRDMUsuarios
   , UKRDMEntidadesDoSistema
   , UKRDMGrupos;

function CreateDataModule(const aProviderName: WideString; const aOwner: TComponent = nil): TKRDMBasico;
begin
  { N�o � necess�rio usar free para destruir, visto que usamos este datamodule
  como dono dos datamodules criados }
  if aProviderName = 'DSPRUsuarios' then
    Result := TKRDMUsuarios.Create(aOwner)
  else if aProviderName = 'DSPREntidadesDoSistema' then
    Result := TKRDMEntidadesDoSistema.Create(aOwner)
  else if aProviderName = 'DSPRGrupos' then
    Result := TKRDMGrupos.Create(aOwner)
  else
    raise Exception.Create('N�o h� nenhum m�dulo de dados remoto para o provedor "' + aProviderName + '"');
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
    HostName               := ServerConfiguration.DBHostName;
    Port                   := ServerConfiguration.DBPortNumb;
    Database               := ServerConfiguration.DBDatabase;
    User                   := ServerConfiguration.DBUserName;
    Password               := ServerConfiguration.DBPassword;
    Protocol               := ServerConfiguration.DBProtocol;
    TransactIsolationLevel := ServerConfiguration.DBTransactIsolationLevel;
  end;
end;

end.

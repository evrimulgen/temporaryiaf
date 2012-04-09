unit UKRDMBasico;

{ Anak Krakatoa DataModule. Copyright 2011 / 2012 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  KRK.Wizards.DataModule, DB, DBAccess, Uni, MemDS;

type
  TUniQuery = class(Uni.TUniQuery)
  public
    constructor Create(aOwner: TComponent); override;
    procedure Loaded; override;
  end;

  TKRDMBasico = class(TKRKDataModule)
    UNQY: TUniQuery;
    UNSP: TUniStoredProc;
  private
    { Declarações privadas }
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
  end;

implementation

uses USODMPrincipal;

{$R *.dfm}

{ TUniQuery }

constructor TUniQuery.Create(aOwner: TComponent);
begin
  inherited;
  UniDirectional := True;
  SpecificOptions.Clear;
  SpecificOptions.Add('PostgreSQL.FetchAll=False');
  SpecificOptions.Add('PostgreSQL.UseParamTypes=True');
end;

procedure TUniQuery.Loaded;
begin
  inherited;
  { Todos os TUniQuery têm nomes padronizados na forma UNQY???? onde as ? são o
  nome da tabela }
  UpdatingTable := UpperCase(Copy(Name,5,Length(Name)));
end;

end.
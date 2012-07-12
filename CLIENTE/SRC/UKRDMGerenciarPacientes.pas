unit UKRDMGerenciarPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, KRK.Components.AdditionalControls.PngImageList,
  KRK.Components.AdditionalControls.BalloonHint, ActnList, DB, DBClient,
  UKRDMBasico;

type
  TKRDMGerenciarPacientes = class(TKRDMBasico)
    DTSRPacientes: TDataSource;
    CLDSPacientes: TClientDataSet;
    CLDSPacientesin_pacientes_id: TIntegerField;
    CLDSPacientesva_nome: TWideStringField;
    CLDSPacientesda_datanascimento: TDateField;
    CLDSPacientesva_rg: TWideStringField;
    CLDSPacientesen_orgaoemissorrg: TWideMemoField;
    CLDSPacientesen_ufemissaorg: TWideMemoField;
    CLDSPacientesen_tipologradouro: TWideMemoField;
    CLDSPacientesva_nomelogradouro: TWideStringField;
    CLDSPacientesva_idlogradouro: TWideStringField;
    CLDSPacientesva_complementologradouro: TWideStringField;
    CLDSPacientesva_bairrologradouro: TWideStringField;
    CLDSPacientesva_cidade: TWideStringField;
    CLDSPacientesen_uf: TWideMemoField;
    CLDSPacientesch_foneresidencial: TWideStringField;
    CLDSPacientesch_fonecelular: TWideStringField;
    CLDSPacientestx_observacoes: TWideMemoField;
    CLDSPacientesen_genero: TWideMemoField;
    procedure CLDSPacientesch_foneresidencialGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CLDSPacientesch_fonecelularGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
    function ObterTelefoneResidencialFormatado: String;
    function ObterTelefoneCelularFormatado: String;
  public
    { Public declarations }
  end;

implementation

uses UDAMOPrincipal, UKRFMGerenciarPacientes;

{$R *.dfm}

{ TKRDMGerenciarPacientes }

procedure TKRDMGerenciarPacientes.CLDSPacientesch_fonecelularGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    Text := ObterTelefoneCelularFormatado
  else
    Text := Sender.AsString;
end;

procedure TKRDMGerenciarPacientes.CLDSPacientesch_foneresidencialGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    Text := ObterTelefoneResidencialFormatado
  else
    Text := Sender.AsString;
end;

function TKRDMGerenciarPacientes.ObterTelefoneCelularFormatado: String;
begin
  Result := '';

  if not Assigned(MyForm) then
    Exit;

  Result := TKRFMGerenciarPacientes(MyForm).KLDEFoneCelular.EditText;
end;

function TKRDMGerenciarPacientes.ObterTelefoneResidencialFormatado: String;
begin
  Result := '';

  if not Assigned(MyForm) then
    Exit;

  Result := TKRFMGerenciarPacientes(MyForm).KLDEFoneResidencial.EditText;
end;

end.

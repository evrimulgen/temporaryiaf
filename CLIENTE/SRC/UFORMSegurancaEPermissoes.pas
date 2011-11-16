unit UFORMSegurancaEPermissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBClient, StdCtrls;

type
  TFORMSegurancaEPermissoes = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ClientDataSet1sm_usuarios_id: TSmallintField;
    ClientDataSet1va_nome: TWideStringField;
    ClientDataSet1va_login: TWideStringField;
    ClientDataSet1ch_senha: TWideStringField;
    ClientDataSet1va_email: TWideStringField;
    Button1: TButton;
    Button2: TButton;
    procedure ClientDataSet1BeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure ClientDataSet1BeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure ClientDataSet1BeforeGetParams(Sender: TObject;
      var OwnerData: OleVariant);
    procedure ClientDataSet1BeforeExecute(Sender: TObject;
      var OwnerData: OleVariant);
    procedure ClientDataSet1BeforeRowRequest(Sender: TObject;
      var OwnerData: OleVariant);
    procedure Button1Click(Sender: TObject);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORMSegurancaEPermissoes: TFORMSegurancaEPermissoes;

implementation

uses UDAMOPrincipal, UAuthenticator, UReconcileErrorDialog;

{$R *.dfm}

procedure TFORMSegurancaEPermissoes.Button1Click(Sender: TObject);
begin
  ClientDataSet1.ApplyUpdates(0);
end;

procedure TFORMSegurancaEPermissoes.Button2Click(Sender: TObject);
begin
  ClientDataSet1.Open;
end;

procedure TFORMSegurancaEPermissoes.ClientDataSet1BeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  OwnerData := '{10C97A80-761D-45E3-B192-173D16DE5FAE}';
end;

procedure TFORMSegurancaEPermissoes.ClientDataSet1BeforeExecute(Sender: TObject;
  var OwnerData: OleVariant);
begin
  OwnerData := '{10C97A80-761D-45E3-B192-173D16DE5FAE}';
end;

procedure TFORMSegurancaEPermissoes.ClientDataSet1BeforeGetParams(
  Sender: TObject; var OwnerData: OleVariant);
begin
  OwnerData := '{10C97A80-761D-45E3-B192-173D16DE5FAE}';
end;

procedure TFORMSegurancaEPermissoes.ClientDataSet1BeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  OwnerData := '{10C97A80-761D-45E3-B192-173D16DE5FAE}';
end;

procedure TFORMSegurancaEPermissoes.ClientDataSet1BeforeRowRequest(
  Sender: TObject; var OwnerData: OleVariant);
begin
  OwnerData := '{10C97A80-761D-45E3-B192-173D16DE5FAE}';
end;

procedure TFORMSegurancaEPermissoes.ClientDataSet1ReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  HandleReconcileError(DataSet,UpdateKind,E);
end;

end.

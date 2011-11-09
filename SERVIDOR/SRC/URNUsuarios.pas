unit URNUsuarios;

interface

uses DB
   , Classes
   , KRK.Wizards.SoapDataModule;

type
  TRNUsuarios = class
  private
    FKRKSoapDataModule: TKRKSoapDataModule;
  public
    constructor Create(aKRKSoapDataModule: TKRKSoapDataModule);
  end;

implementation

uses UKRSDIAF;

{ TRNUsuarios }

constructor TRNUsuarios.Create(aKRKSoapDataModule: TKRKSoapDataModule);
begin
  FKRKSoapDataModule := aKRKSoapDataModule
end;

end.

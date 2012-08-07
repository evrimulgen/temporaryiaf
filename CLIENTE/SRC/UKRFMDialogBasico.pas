unit UKRFMDialogBasico;

{ Anak Krakatoa Form. Copyright 2012 / 2013 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms
   , StdCtrls, ExtCtrls, ToolWin, ComCtrls, Buttons, DBClient
   { Units que não pertencem ao Delphi }
   , KRK.Wizards.Form, KRK.Components.DataControls.ValidationChecks;

type
{$I INT\Interposer.TClientDataSet.Intf.inc}

  TKRFMDialogBasico = class(TKRKForm)
  private
    { Declarações privadas }
  protected
    { Declarações protegidas }
  public
    { Declarações públicas }
  end;

implementation

{$R *.dfm}

uses DB
   { Units que não pertencem ao Delphi }
   , UDAMOPrincipal, UConfiguracoes, UKRDMBasico
   , KRK.Lib.Rtl.Common.VariantUtils, KRK.Lib.Rtl.Common.FileUtils
   , KRK.Lib.Db.Utils;

{$I INT\Interposer.TClientDataSet.Impl.inc}

initialization
  RegisterClass(TKRFMDialogBasico)

end.
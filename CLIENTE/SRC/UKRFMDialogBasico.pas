unit UKRFMDialogBasico;

{ Anak Krakatoa Form. Copyright 2012 / 2013 Zetta-Ømnis Soluções Tecnológicas Ltda. }

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms
   , KRK.Wizards.Form, StdCtrls, ExtCtrls, ToolWin, ComCtrls, Buttons, DBClient
   , KRK.Components.DataControls.ValidationChecks;

type
{$I INC\Interposer.TClientDataSet.Intf.inc}

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

uses UDAMOPrincipal, UConfiguracoes, KRK.Lib.Rtl.Common.VariantUtils
   , KRK.Lib.Rtl.Common.FileUtils, UKRDMBasico, DB, KRK.Lib.Db.Utils;

{$I INC\Interposer.TClientDataSet.Impl.inc}

initialization
  RegisterClass(TKRFMDialogBasico)

end.
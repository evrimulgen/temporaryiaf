unit UKRFMDialogBasico;

{ Anak Krakatoa Form. Copyright 2012 / 2013 Zetta-�mnis Solu��es Tecnol�gicas Ltda. }

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms
   , StdCtrls, ExtCtrls, ToolWin, ComCtrls, Buttons, DBClient
   { Units que n�o pertencem ao Delphi }
   , KRK.Wizards.Form, KRK.Components.DataControls.ValidationChecks;

type
{$I INT\Interposer.TClientDataSet.Intf.inc}

  TKRFMDialogBasico = class(TKRKForm)
  private
    { Declara��es privadas }
  protected
    { Declara��es protegidas }
  public
    { Declara��es p�blicas }
  end;

implementation

{$R *.dfm}

uses DB
   { Units que n�o pertencem ao Delphi }
   , UDAMOPrincipal, UConfiguracoes, UKRDMBasico
   , KRK.Lib.Rtl.Common.VariantUtils, KRK.Lib.Rtl.Common.FileUtils
   , KRK.Lib.Db.Utils;

{$I INT\Interposer.TClientDataSet.Impl.inc}

initialization
  RegisterClass(TKRFMDialogBasico)

end.
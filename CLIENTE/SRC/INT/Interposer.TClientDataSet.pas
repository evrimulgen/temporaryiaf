unit Interposer.TClientDataSet;

interface

uses DBClient, Classes
   { Units que n�o pertencem ao Delphi }
   , KRK.Components.DataControls.ValidationChecks;

type
{$I Interposer.TClientDataSet.Intf.inc}

implementation

uses DB, SysUtils, Forms, Windows
   { Units que n�o pertencem ao Delphi }
   , UDAMOPrincipal, UConfiguracoes, KRK.Lib.Rtl.Common.VariantUtils
   , UKRDMBasico, KRK.Lib.Db.Utils;

{$I Interposer.TClientDataSet.Impl.inc}

end.

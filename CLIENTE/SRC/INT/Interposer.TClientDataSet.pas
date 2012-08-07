unit Interposer.TClientDataSet;

interface

uses DBClient, Classes
   { Units que não pertencem ao Delphi }
   , KRK.Components.DataControls.ValidationChecks;

type
{$I Interposer.TClientDataSet.Intf.inc}

implementation

uses DB, SysUtils, Forms, Windows
   { Units que não pertencem ao Delphi }
   , UDAMOPrincipal, UConfiguracoes, KRK.Lib.Rtl.Common.VariantUtils
   , UKRDMBasico, KRK.Lib.Db.Utils;

{$I Interposer.TClientDataSet.Impl.inc}

end.

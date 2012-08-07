unit Interposer.TDBNavigator;

interface

uses DBCtrls;
   { Units que não pertencem ao Delphi }

type
{$I *.Intf.inc}

implementation

uses Forms, Windows, SysUtils, DB
   { Units que não pertencem ao Delphi }
   , Interposer.TClientDataSet;

{$I *.Impl.inc}

end.

{*******************************************************}
{                                                       }
{            Delphi Visual Component Library            }
{                                                       }
{ Copyright(c) 1995-2010 Embarcadero Technologies, Inc. }
{                                                       }
{*******************************************************}

{*******************************************************}
{                Static Midas Library                   }
{*******************************************************}

unit MidasLib;

interface

implementation

uses Windows, ActiveX, DSIntf, crtl;

function DllGetDataSnapClassObject(const CLSID, IID: TGUID; var Obj): HResult; stdcall; external;

{$R midas.res}
{$L midas.obj}
{$L bcd.obj}
{$L cpprtl.obj}

initialization
  RegisterMidasLib(@DllGetDataSnapClassObject);
finalization
end.

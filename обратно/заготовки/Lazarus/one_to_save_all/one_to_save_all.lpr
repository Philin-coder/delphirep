program one_to_save_all;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, lazopenglcontext, umain, uspiral, ufrm, uogl;
  { you can add units after this }

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TFspiral, Fspiral);
  Application.CreateForm(TFrm2, Frm2);
  Application.CreateForm(TFogl, Fogl);
  Application.Run;
end.


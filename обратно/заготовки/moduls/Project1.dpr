program Project1;

uses
  Forms,
  fmain in 'fmain.pas' {Form1},
  serve_f in 'serve_f.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

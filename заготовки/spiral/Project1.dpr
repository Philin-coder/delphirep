program Project1;

uses
  Forms,
  Umain in 'Umain.pas' {Fmain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmain, Fmain);
  Application.Run;
end.

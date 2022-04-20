program Project1;

uses
  Forms,
  main in 'main.pas' {Fmain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmain, Fmain);
  Application.Run;
end.

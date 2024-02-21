program Project1;

uses
  Forms,
  Umain in 'Umain.pas' {Fmain},
  Ureg in 'Ureg.pas' {Form1},
  Udm in 'Udm.pas' {fDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfDM, fDM);
  Application.Run;
end.

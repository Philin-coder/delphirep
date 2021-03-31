program Project1;

uses
  Forms,
  Umain in 'Umain.pas' {Fmain},
  Udm in 'Udm.pas' {fDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TfDM, fDM);
  Application.Run;
end.

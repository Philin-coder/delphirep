program Project1;

uses
  Forms,
  Umain in 'Umain.pas' {fmain},
  Udm in 'Udm.pas' {FDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfmain, fmain);
  Application.CreateForm(TFDM, FDM);
  Application.Run;
end.

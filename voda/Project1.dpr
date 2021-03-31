program Project1;

uses
  Forms,
  Uman in 'Uman.pas' {Fmain},
  Udm in 'Udm.pas' {fDM: TDataModule},
  Ureg in 'Ureg.pas' {Freg},
  Uins in 'Uins.pas' {Fins};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFreg, Freg);
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TfDM, fDM);
  Application.CreateForm(TFins, Fins);
  Application.Run;
end.

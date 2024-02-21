program Project1;

uses
  Forms,
  Umain in 'Umain.pas' {Fmain},
  ureg in 'ureg.pas' {Freg},
  Uadmn in 'Uadmn.pas' {Fadmin},
  Udm in 'Udm.pas' {fDm: TDataModule},
  UUsl in 'UUsl.pas' {FUsl},
  Unom in 'Unom.pas' {Fnom},
  Udog in 'Udog.pas' {Fdog},
  Uopl in 'Uopl.pas' {Fopl},
  Ureport in 'Ureport.pas' {Freport};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TFreg, Freg);
  Application.CreateForm(TFadmin, Fadmin);
  Application.CreateForm(TfDm, fDm);
  Application.CreateForm(TFUsl, FUsl);
  Application.CreateForm(TFnom, Fnom);
  Application.CreateForm(TFdog, Fdog);
  Application.CreateForm(TFopl, Fopl);
  Application.CreateForm(TFreport, Freport);
  Application.Run;
end.

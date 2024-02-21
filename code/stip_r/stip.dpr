program stip;

uses
  Forms,
  Umain in 'Umain.pas' {Fmain},
  Udm in 'Udm.pas' {DM: TDataModule},
  Ugruppa in 'Ugruppa.pas' {Fgruppa},
  Urpv in 'Urpv.pas' {frpv},
  Ureport in 'Ureport.pas' {Freport};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFgruppa, Fgruppa);
  Application.CreateForm(Tfrpv, frpv);
  Application.CreateForm(TFreport, Freport);
  Application.Run;
end.

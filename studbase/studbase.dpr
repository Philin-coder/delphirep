program studbase;

uses
  Forms,
  fmain in 'fmain.pas' {main},
  author in 'author.pas' {authorisze},
  Uvvod in 'Uvvod.pas' {vvod},
  fdm in 'fdm.pas' {DM1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tauthorisze, authorisze);
  Application.CreateForm(Tmain, main);
  Application.CreateForm(Tvvod, vvod);
  Application.CreateForm(TDM1, DM1);
  Application.Run;
end.

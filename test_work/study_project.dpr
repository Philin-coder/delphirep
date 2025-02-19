program study_project;

uses
  Forms,
  Un_main in 'Un_main.pas' {Form1},
  Un_dm in 'Un_dm.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.

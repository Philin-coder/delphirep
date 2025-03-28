program cont_project;

uses
  Forms,
  Un_main in 'Un_main.pas' {Form2},
  Un_func in 'Un_func.pas',
  Un_dm in 'Un_dm.pas' {DM: TDataModule},
  Un_prikaz in 'Un_prikaz.pas' {Frm_prikaz},
  Un_spec in 'Un_spec.pas' {Frm_spec},
  Un_stud in 'Un_stud.pas' {Frm_stud},
  Un_grupp in 'Un_grupp.pas' {Frm_grupp},
  Un_reports in 'Un_reports.pas' {Frm_reports};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_prikaz, Frm_prikaz);
  Application.CreateForm(TFrm_spec, Frm_spec);
  Application.CreateForm(TFrm_stud, Frm_stud);
  Application.CreateForm(TFrm_grupp, Frm_grupp);
  Application.CreateForm(TFrm_reports, Frm_reports);
  Application.Run;
end.

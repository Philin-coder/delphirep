program uspevProject;

uses
  Forms,
  Un_func in 'Un_func.pas',
  Un_main in 'Un_main.pas' {Frm_main},
  Un_dm in 'Un_dm.pas' {DM: TDataModule},
  Un_stud in 'Un_stud.pas' {Frm_stud},
  Un_grade in 'Un_grade.pas' {Frm_grade},
  Un_subject in 'Un_subject.pas' {Frm_subject},
  Un_report in 'Un_report.pas' {Frm_report},
  Un_teacher in 'Un_teacher.pas' {Frm_teacher};

{$R *.res}
 {$R 'resources.RES'}
begin
  Application.Initialize;
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_stud, Frm_stud);
  Application.CreateForm(TFrm_grade, Frm_grade);
  Application.CreateForm(TFrm_subject, Frm_subject);
  Application.CreateForm(TFrm_report, Frm_report);
  Application.CreateForm(TFrm_teacher, Frm_teacher);
  Application.Run;
end.

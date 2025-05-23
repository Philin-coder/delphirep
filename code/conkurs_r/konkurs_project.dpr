program konkurs_project;

uses
  Forms,
  Un_main in 'Un_main.pas' {Frm_main},
  Un_func in 'Un_func.pas',
  Un_dm in 'Un_dm.pas' {DM: TDataModule},
  Un_work in 'Un_work.pas' {Frm_work},
  Un_m_user in 'Un_m_user.pas' {Frm_muser},
  Un_pass_autor in 'Un_pass_autor.pas' {Frm_pass_aut},
  Un_report in 'Un_report.pas' {Frm_report},
  change_pas_quest in 'change_pas_quest.pas' {Frm_change_pass_quest},
  Un_choise_pas in 'Un_choise_pas.pas' {Frm_cript_choise};

{$R *.res}
 {$R resources.RES}
 {$R comment.RES}
 {$R passwd.RES}
 {$R CRYPT.RES}
begin
  Application.Initialize;
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_work, Frm_work);
  Application.CreateForm(TFrm_muser, Frm_muser);
  Application.CreateForm(TFrm_pass_aut, Frm_pass_aut);
  Application.CreateForm(TFrm_report, Frm_report);
  Application.CreateForm(TFrm_change_pass_quest, Frm_change_pass_quest);
  Application.CreateForm(TFrm_cript_choise, Frm_cript_choise);
  Application.Run;
end.

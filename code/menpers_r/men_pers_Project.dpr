program men_pers_Project;

uses
  Forms,
  Un_main in 'Un_main.pas' {Frm_main},
  Un_func in 'Un_func.pas',
  Un_dm in 'Un_dm.pas' {DM: TDataModule},
  Un_report in 'Un_report.pas' {Frm_report},
  Un_user in 'Un_user.pas' {Frm_user},
  Un_klient in 'Un_klient.pas' {Frm_klient},
  Un_manager in 'Un_manager.pas' {Frm_manager},
  Un_mplan in 'Un_mplan.pas' {Frm_plan},
  Un_usl in 'Un_usl.pas' {Frm_usluga},
  Un_autor in 'Un_autor.pas' {frm_autor};

{$R *.res}
{$R 'resources.RES'}
{$R 'iniit_res.RES'}
{$R 'avt_res.RES'}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_report, Frm_report);
  Application.CreateForm(TFrm_user, Frm_user);
  Application.CreateForm(TFrm_klient, Frm_klient);
  Application.CreateForm(TFrm_manager, Frm_manager);
  Application.CreateForm(TFrm_plan, Frm_plan);
  Application.CreateForm(TFrm_usluga, Frm_usluga);
  Application.CreateForm(Tfrm_autor, frm_autor);
  Application.Run;
end.

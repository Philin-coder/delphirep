program Store_project;

uses
  Forms,
  Un_man in 'Un_man.pas' {Frm_main},
  Un_func in 'Un_func.pas',
  Un_dm in 'Un_dm.pas' {DM: TDataModule},
  Un_json_loader in 'Un_json_loader.pas' {Frm_json_loader},
  Un_good in 'Un_good.pas' {Frm_good},
  Un_m_order in 'Un_m_order.pas' {Frm_m_order},
  Un_report in 'Un_report.pas' {Frm_report},
  Un_csv_loader in 'Un_csv_loader.pas' {Frm_csv_loader},
  Un_xml_loader in 'Un_xml_loader.pas' {Frm_xml_loader},
  Un_about in 'Un_about.pas' {Frm_about},
  Un_hlp in 'Un_hlp.pas' {Frm_help},
  Un_iniEditor in 'Un_iniEditor.pas' {Frm_ini_editor};

{$R *.res}
{$R resources.RES}
{$R about.RES}
{$R HLP.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_json_loader, Frm_json_loader);
  Application.CreateForm(TFrm_good, Frm_good);
  Application.CreateForm(TFrm_m_order, Frm_m_order);
  Application.CreateForm(TFrm_report, Frm_report);
  Application.CreateForm(TFrm_csv_loader, Frm_csv_loader);
  Application.CreateForm(TFrm_xml_loader, Frm_xml_loader);
  Application.CreateForm(TFrm_about, Frm_about);
  Application.CreateForm(TFrm_help, Frm_help);
  Application.CreateForm(TFrm_ini_editor, Frm_ini_editor);
  Application.Run;
end.

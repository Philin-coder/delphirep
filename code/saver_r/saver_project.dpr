program saver_project;

uses
  Forms,
  Un_func in 'Un_func.pas',
  Un_main in 'Un_main.pas' {Frm_main},
  Un_dm in 'Un_dm.pas' {DM: TDataModule},
  Un_ts in 'Un_ts.pas' {Frm_ts},
  Un_lang in 'Un_lang.pas' {Frm_lang};

{$R *.res}
{$R 'resources.RES'}
{$R 'saver_icons.RES'}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_ts, Frm_ts);
  Application.CreateForm(TFrm_lang, Frm_lang);
  Application.Run;
end.

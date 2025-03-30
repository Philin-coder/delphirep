program linrary;
uses
  Windows,
  Forms,
  Un_main in 'Un_main.pas' {Frm_main},
  Un_func in 'Un_func.pas',
  Un_dm in 'Un_dm.pas' {DM: TDataModule},
  Un_autorize in 'Un_autorize.pas' {Frm_author};

{$R *.res}
{$R resources.res}
{$R autor_res.RES}


begin
  Application.Initialize;
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_author, Frm_author);
  Application.Run;
end.

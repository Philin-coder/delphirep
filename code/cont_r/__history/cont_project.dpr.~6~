program cont_project;

uses
  Forms,
  Un_main in 'Un_main.pas' {Form2},
  Un_func in 'Un_func.pas',
  Un_dm in 'Un_dm.pas' {DM: TDataModule},
  Un_grupp in 'Un_grupp.pas' {Frm_grupp},
  Un_spec in 'Un_spec.pas' {Frm_spec},
  Un_stud in 'Un_stud.pas' {Frm_stud};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_grupp, Frm_grupp);
  Application.CreateForm(TFrm_spec, Frm_spec);
  Application.CreateForm(TFrm_stud, Frm_stud);
  Application.Run;
end.

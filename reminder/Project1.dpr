program Project1;

uses
  Forms,
  main in 'main.pas' {Fmain},
  Ulog in 'Ulog.pas' {Flog},
  fadm_pass in 'fadm_pass.pas' {Fadm_passs},
  Serv_f in 'Serv_f.pas',
  User_creator in 'User_creator.pas' {user_creation},
  Udm in 'Udm.pas' {fdm: TDataModule},
  logged_users in 'logged_users.pas' {flogged_users};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tflogged_users, flogged_users);
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TFlog, Flog);
  Application.CreateForm(TFadm_passs, Fadm_passs);
  Application.CreateForm(Tuser_creation, user_creation);
  Application.CreateForm(Tfdm, fdm);
  Application.Run;
end.

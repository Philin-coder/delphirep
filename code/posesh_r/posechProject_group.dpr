program posechProject_group;

uses
  Forms,
  Un_main in 'Un_main.pas' {Frm_main},
  U_dm in 'U_dm.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_main, Frm_main);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.

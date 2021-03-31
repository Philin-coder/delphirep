program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  dm in 'dm.pas' {fDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfDM, fDM);
  Application.Run;
end.

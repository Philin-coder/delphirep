program library_project;

uses
  Forms,
  Un_main in 'Un_main.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

program chess_Project;

uses
  Forms,
  Un_main in 'Un_main.pas' {Form2},
  Un_func in 'Un_func.pas',
  chess_func in 'chess_func.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

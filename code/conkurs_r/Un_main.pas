unit Un_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm2 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  var
   Num1, Num2, CorrectAnswer, UserAnswer: Integer;
  InputStr: string;

implementation

{$R *.dfm}
function AddNumbers(Num1, Num2: Integer; var ResultVar: Integer): Boolean; stdcall;
external 'mylib.dll';


procedure TForm2.FormCreate(Sender: TObject);
begin
   Randomize;
  Num1 := Random(100);
  Num2 := Random(100);
ShowMessage( Format('Сколько будет %d + %d?', [Num1, Num2]));
   if not InputQuery('Ответ', 'Введите ваш ответ:', InputStr) then
  begin
    ShowMessage('Операция отменена пользователем.');
    Exit;
  end;

  // Преобразование введенного ответа в число
  try
    UserAnswer := StrToInt(InputStr);
  except
    on E: EConvertError do
    begin
      ShowMessage('Ошибка: введенные данные не являются числом.');
      Exit;
    end;
  end;

  // Проверка правильности ответа
  if UserAnswer = CorrectAnswer then
    ShowMessage('Правильно!')
  else
    ShowMessage(Format('Неправильно! Правильный ответ: %d.', [CorrectAnswer]));
end;



end.

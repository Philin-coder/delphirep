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
ShowMessage( Format('������� ����� %d + %d?', [Num1, Num2]));
   if not InputQuery('�����', '������� ��� �����:', InputStr) then
  begin
    ShowMessage('�������� �������� �������������.');
    Exit;
  end;

  // �������������� ���������� ������ � �����
  try
    UserAnswer := StrToInt(InputStr);
  except
    on E: EConvertError do
    begin
      ShowMessage('������: ��������� ������ �� �������� ������.');
      Exit;
    end;
  end;

  // �������� ������������ ������
  if UserAnswer = CorrectAnswer then
    ShowMessage('���������!')
  else
    ShowMessage(Format('�����������! ���������� �����: %d.', [CorrectAnswer]));
end;



end.

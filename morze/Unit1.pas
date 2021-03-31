unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    RadioGroup1: TRadioGroup;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  Rus: String = 'àáöäåôãõèéêëìíîïùðñòóæâüûç÷øýþÿ1234567890.,:;|/?!@';
  Eng: String = 'abcdefghijklmnopqrstuvwxyz'#1#1#1#1#1'1234567890.,:;|/?!@';

var
  Form1: TForm1;
  Alf: String;
  Morze: TStringList;
  
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i, k: Integer;
begin
  Memo2.Clear;
  for i := 1 to Length(Memo1.Text) do
  begin
    k := Pos(LowerCase(Memo1.Text[i]), Rus);
    if k = 0 then
      k := Pos(LowerCase(Memo1.Text[i]), Eng);
    if k > 0 then
      Memo2.Text := Memo2.Text + Morze[k-1] + '   ';
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
begin
  Memo3.Clear;
  with TStringList.Create do
  try
    DelimitedText := Memo2.Text;
    for i := 0 to Count - 1 do
      Memo3.Text := Memo3.Text + Alf[Morze.IndexOf(Strings[i]) + 1];
  finally
    Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Alf := Rus;
  Morze := TStringList.Create;
  Morze.DelimitedText := '.- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. '   +
                         '-- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.--' +
                         ' --.. ---. ---- ..-.. ..-- .-.- .---- ..--- ...-- '   +
                         '....- ..... -.... --... ---.. ----. ----- ...... '    +
                         '.-.-.- ---... -.-.-. -.--.- -..-. ..--.. --..-- .--.-.';
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Morze.Free;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0: Alf := Rus;
    1: Alf := Eng;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 1 to Length(Memo2.Text) do
    case Memo2.Text[i] of
      '.': begin
             Windows.Beep(1000, 200);
             Sleep(200);
           end;
      '-': begin
             Windows.Beep(1000, 600);
             Sleep(200);
           end;
      else Continue;
    end;
  Sleep(400);
end;

end.

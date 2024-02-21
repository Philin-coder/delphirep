unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i, l, c, h, j, y: integer;
    t, k, g, v, p: string;
begin
z:=0;
t:=LabeledEdit1.Text;
k:=LabeledEdit2.Text;
l:=Length(t);
h:=StrToInt(k);
if (h>1)or(h>32) then
begin
LabeledEdit2.font.Color:=$0000FF;
LabeledEdit2.Text:='Ошибка! Неверно введен сдвиг!';
z:=1;
end
else
begin
for I :=1 to High do

y:=ord(t[i])+h;
case t[i] of
'а'..'я': begin
if y>ord('я') then y:=y-32;
g:=g+chr(y);
end;
'a'..'z':
begin
if y>ord('z') then y:=y-26;
g:=g+chr(y);
end;
'A'..'Z': begin
if y>ord('Z') then y:=y-26;
g:=g+chr(y);
end
else
g:=g+t[i];

end;//case

end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Memo1.Clear;
LabeledEdit1.Clear;
LabeledEdit2.Clear;
end;

end.

unit serve_f;

interface
type mx=array[1..155] of Byte;
var n:Integer;
Procedure get_rnd_char(n:Integer);
implementation

uses fmain,SysUtils;
Procedure get_rnd_char(n:Integer);
var x:mx;
var i:Integer;
begin
for I:=1 to n do
begin
Randomize;
x[i]:=Random(59)+64;
end;
for I := 1 to n do
begin
//if (x[i]>97)and (x[i]<122) then

//fmain.Form1.LabeledEdit1.Text:=fmain.Form1.LabeledEdit1.Text+' '+IntToStr(x[i]);
fmain.Form1.LabeledEdit1.Text:=fmain.Form1.LabeledEdit1.Text+' '+chr(x[i]);

end;
end;
//Random(delta) + base
//где:
//delta = (20-15) + 1 = 6
//base = 15
//    15 до 20:
//97-122
//64-122
end.

unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  i:Integer;
  x,a:real;
  b:String;
  h:Array[1..5] of real=(1, 0.2, 0.1, 0.01, 0.001);
  p1,p2,p3: array [1..5] of real;

implementation

{$R *.lfm}

{ TForm1 }
function y(x:Real):real;
begin
  y:=ln((2*x*x+x-3)/(3*x*x+15*x+12));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0,0]:='h';
  StringGrid1.Cells[0,1]:='p1';
  StringGrid1.Cells[0,2]:='p2';
  StringGrid1.Cells[0,3]:='p2';
  StringGrid1.Cells[1,0]:='1';
  StringGrid1.Cells[2,0]:='0.2';
  StringGrid1.Cells[3,0]:='0.1';
  StringGrid1.Cells[4,0]:='0.01';
  StringGrid1.Cells[5,0]:='0.001';



end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  x:=5; //начало
  for i:=1 to 5 do
  begin
  p1[i]:=(y(x+h[i])-y(x))/h[i];// btnjls счета
    p2[i]:=(y(x)-y(x-h[i]))/h[i];
    p3[i]:=(y(x+h[i])-y(x-h[i]))/(2*h[i]);
end;
  for i:=1 to 5 do
  begin
    a:=p1[i];
    str(a:4:4,b);
     StringGrid1.Cells[i,1]:=b;
      a:=p2[i];
   str(a:4:4,b);
   StringGrid1.Cells[i,2]:=b;
   a:=p3[i];
   str(a:4:4,b);
   StringGrid1.Cells[i,3]:=b;
   end;

  end;
end;

end.


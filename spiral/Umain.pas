unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,math, StdCtrls, ExtCtrls;

type
  TFmain = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;

implementation

{$R *.dfm}
procedure spiral(var x0:Integer; var y0:Integer; var a:Integer; var q:Integer; var x:Integer; var y:integer;var fi:real);
  begin
x0:=clientwidth div 2;
y0:=clientheight div 2;
a:=20;
q:=10;  //���������� ������
//������ ����� ������� +sqrt(fi)
fi:=0;
while(fi<=q*2*pi) do
 begin
  x:=x0+trunc(a*sqrt(fi)*cos(fi));
  y:=y0-trunc(a*sqrt(fi)*sin(fi));
  with  canvas do
   begin
    pen.Color:=clred;
    if fi=0 then moveto(x,y) else lineto(x,y);
    fi:=fi+0.1;
    end;
 end;
//������ ����� �������  -sqrt(fi)
fi:=0;
while(fi<=q*2*pi) do
 begin
  x:=x0-trunc(a*sqrt(fi)*cos(fi));
  y:=y0+trunc(a*sqrt(fi)*sin(fi));
  with  canvas do
   begin
    pen.Color:=clred;
    if fi=0 then moveto(x,y) else lineto(x,y);
    fi:=fi+0.1;
    end;
  end;
  

procedure TFmain.Button1Click(Sender: TObject);
//var x0,y0,a,q,x,y:integer;
//    var fi:real;
begin
//x0:=clientwidth div 2;
//y0:=clientheight div 2;
//a:=20;
//q:=10;  //���������� ������
////������ ����� ������� +sqrt(fi)
//fi:=0;
//while(fi<=q*2*pi) do
// begin
//  x:=x0+trunc(a*sqrt(fi)*cos(fi));
//  y:=y0-trunc(a*sqrt(fi)*sin(fi));
//  with  canvas do
//   begin
//    pen.Color:=clred;
//    if fi=0 then moveto(x,y) else lineto(x,y);
//    fi:=fi+0.1;
//    end;
// end;
////������ ����� �������  -sqrt(fi)
//fi:=0;
//while(fi<=q*2*pi) do
// begin
//  x:=x0-trunc(a*sqrt(fi)*cos(fi));
//  y:=y0+trunc(a*sqrt(fi)*sin(fi));
//  with  canvas do
//   begin
//    pen.Color:=clred;
//    if fi=0 then moveto(x,y) else lineto(x,y);
//    fi:=fi+0.1;
//    end;
//
//end;
spiral();

end;

end.
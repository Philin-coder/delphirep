unit uspiral;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  { TFspiral }

  TFspiral = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    procedure MenuItem1Click(Sender: TObject);



  private

  public

  end;

var
  Fspiral: TFspiral;

implementation

{$R *.lfm}

{ TFspiral }




procedure TFspiral.MenuItem1Click(Sender: TObject);
var x0,y0,a,q,x,y:integer;
    var fi:real;
begin
  x0:=clientwidth div 2;
  y0:=clientheight div 2;
  a:=20;
  q:=10;  //количество витков
  //первая ветка спирали +sqrt(fi)
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
  //вторая ветка спирали  -sqrt(fi)
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
end;

end.


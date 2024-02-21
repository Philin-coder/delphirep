unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    QRImage1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit5: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit7: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
   
    procedure QRImage1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure QRImage1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure QRImage1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
Type1: Byte;
r:real;
x_min,y_min,x_max,y_max:Real;
n: Integer;
imagemouse: boolean;
imageRect: TRect;
ia,ib:real;
  a,b:real;
  Form1: TForm1;

implementation

{$R *.dfm}


function Julia(x0,y0: real): TColor;
var
  x,y,x2,y2,xy: real;
  r1: Real;
  speed,k: integer;
begin
    r1:=1;
         //Заданный коэффицент
    x:=x0;
    y:=y0;
    k:=100; // Колличество итераций
    while (k>0)and(r1<4) do
      begin
           r1:=x*x+y*x;
           X2:=X;
           x:=x*x-y*y+a;
           y:=2*x2*y+b;
           dec(k)
      end;
    k:=round((k/100)*255);// приведение полученного K цвету на экране
          Julia:=RGB(K-40,k*3,k)

end;

procedure TForm1.Button1Click(Sender: TObject);
var
      hx,hy,x,y: real;
      i,j,n: integer;
      color: TColor;
begin
  Type1:=1;
  x_min:=-1.5; x_max:=2;
  y_min:=-1.5; y_max:=1.5;
  n:=600;
  y:=y_min;
  a:=-0.55;
  b:=-0.55;
  hx:=(x_max - x_min)/n;
  hy:=(y_max - y_min)/n;
  for j:=0 to n do
  begin
       x:=x_min;
       for i:=0 to n do
       begin
            color:=Julia(x,y);
            Form1.QRImage1.Canvas.Pixels[i,j]:=color;
            x:=x+hx;
       end;
       y:=y+hy;
       Form1.QRImage1.Refresh;
  end;
end;

function MeFraktal(x0,y0: real): TColor;
var
  x,y,x2,y2,xy: real;
  r1: Real;
  speed,k: integer;
begin
    r1:=1;
   // a:=0.024421414515;      //Заданный коэффицент
   // b:=+0.1;      //Заданный коэффицент
    x:=x0;
    y:=y0;
    k:=255; // Колличество итераций
    while (k>0)and(r1<r) do
      begin
           r1:=(X*X+Y*Y);
            X2:=X;
           X:=Ln(4)*Exp(X)*cos(y)+a;
          // X:=(X*X-Y*Y)/((X*X+Y*Y)*(X*X+Y*Y))-X+A;

          // Y:=(2*X2*Y)/((X2*X2+Y*Y)*(X2*X2+Y*Y))-Y+B;
           y:=Ln(4)*Exp(x2)*sin(y)+b;
           dec(k)
      end;
    k:=round((k/255)*255);// приведение полученного K цвету на экране

           MeFraktal:=RGB(K*14,k*24,k*7);
end;


procedure TForm1.Button2Click(Sender: TObject);
var
      hx,hy,x,y: real;
      i,j,ii: integer;
      color: TColor;
begin
  Type1:=2;
  r:=StrToInt(Form1.Edit3.Text);
  A:=StrToFloat(Form1.Edit1.Text);
  B:=StrToFloat(Form1.Edit2.Text);
//  Label1.Caption:=IntToStr(II);
//  Label1.Refresh;
  x_min:=-4; x_max:=4;
  y_min:=-4; y_max:=4;
  n:=600;

  y:=y_min;
  hx:=(x_max - x_min)/n;
  hy:=(y_max - y_min)/n;
  for j:=0 to n do
  begin
       x:=x_min;
       for i:=0 to n do
       begin

            If (X=0) And (Y=0) Then
              BEGIN
                X:=0.00000001;
                y:=0.00000001;
              END;
            color:=MeFraktal(x,y);
            Form1.QRImage1.Canvas.Pixels[i,j]:=color;

            x:=x+hx;
       end;

       y:=y+hy;
  end;
   Form1.QRImage1.Refresh;
end;



procedure TForm1.QRImage1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     ImageMouse := True;
     ImageRect.Left := X;
     ImageRect.Top  := Y;
     ImageRect.Right := X;
     ImageRect.Bottom  := Y;
     QRImage1.Canvas.DrawFocusRect(ImageRect);
     
end;

procedure TForm1.QRImage1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var
   hx,hy,x1,y1: real;
   i,j,ii: integer;
   color: TColor;
begin
If Type1<>3 Then
BEGIN
    ImageRect.Right := X;
    ImageRect.Bottom := Y;
    QRImage1.Canvas.DrawFocusRect(ImageRect);
    ImageMouse := False;
    x_min:=x_min+(abs(-(x_min)+(x_max))/600)*(ImageRect.Left);
    y_min:=y_min+(abs(-(y_min)+(y_max))/600)*(ImageRect.Top);
    x_max:=x_min+(abs(-(x_min)+(x_max))/600)*(ImageRect.Right) ;
    y_max:=y_min+(abs(-(y_min)+(y_max))/600)*(ImageRect.Bottom);

If Type1=1 Then
   BEGIN
       n:=600;
       y1:=y_min;
       a:=-0.55;
       b:=-0.55;
       hx:=(x_max - x_min)/n;
       hy:=(y_max - y_min)/n;
       for j:=0 to n do
            begin
                 x1:=x_min;
            for i:=0 to n do
            begin
                 color:=Julia(x1,y1);
                 Form1.QRImage1.Canvas.Pixels[i,j]:=color;
                 x1:=x1+hx;
            end;
       y1:=y1+hy;
       Form1.QRImage1.Refresh;
  end;
  END;

If Type1=2 Then
BEGIN
  y1:=y_min;
  hx:=(x_max - x_min)/n;
  hy:=(y_max - y_min)/n;
  for j:=0 to n do
  begin
       x1:=x_min;
       for i:=0 to n do
       begin
            If (X1=0) And (Y1=0) Then
              BEGIN
                X1:=0.00000000000000001;
                y1:=0.00000000000000001;
              END;
            color:=MeFraktal(x1,y1);  
            Form1.QRImage1.Canvas.Pixels[i,j]:=color;
            x1:=x1+hx;
       end;
      y1:=y1+hy;
  end;
   Form1.QRImage1.Refresh;
END;
END;
end;


procedure TForm1.QRImage1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);

begin

    if ImageMouse then
       If (X > ImageRect.Left) AND (Y > ImageRect.Top) then
          begin
              {Восстанавливаем фон}
              QRImage1.Canvas.DrawFocusRect(ImageRect);
              {Меняем прямоугольник}
              ImageRect.Right := X;
              ImageRect.Bottom := Y;
              {Рисуем прямоугольник фокуса}
              QRImage1.Canvas.DrawFocusRect(ImageRect);
          End;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     Type1:=3;
     n:=StrToInt(Form1.Edit4.Text);
     a:=StrToFloat(Form1.Edit1.Text);
     b:=StrToFloat(Form1.Edit2.Text);
     r:=StrToInt(Form1.Edit3.Text);
     x_min:=-20; x_max:=20;
     y_min:=-20; y_max:=20;
     Form1.QRImage1.Refresh;
end;

end.


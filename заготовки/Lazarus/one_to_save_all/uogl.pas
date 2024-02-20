unit uogl;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  OpenGLContext,Gl,glu;

type

  { TFogl }

  TFogl = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
       OpenGLControl1: TOpenGLControl;
  end;

var
  Fogl: TFogl;

implementation

{$R *.lfm}

{ TFogl }

procedure TFogl.FormActivate(Sender: TObject);
begin
//nop
end;

procedure TFogl.Button1Click(Sender: TObject);
begin
  glClearColor (0, 0, 0, 0); // цвет фона
 glClear (GL_COLOR_BUFFER_BIT);      // очистка буфера цвета
 glMatrixMode(GL_MODELVIEW);  // Выбор видовой матрицы
 glLoadIdentity();   //  Установка в единичные значения
 glOrtho(0, 1, 0, 1, -1 ,1); // Установка проекции окна
 //glTranslatef(0.5,0.5,0);  // Сдвиг
 //glRotatef(10, 0, 0, 0);   // Вращение
 glBegin(GL_TRIANGLES);      // Рисование треугольника
       glColor3f(1.0,0.0,0.0);     // Красный
       glVertex3f(1,0,0 ); // Верх треугольника (Передняя)
       glColor3f(0.0,1,0.0);
       glVertex3f( 0,1,0);
       glColor3f(0,0,1);
       glVertex3f( 0,0,0);
 glEnd;
 OpenGLControl1.SwapBuffers; // Отрисовка из буффера
end;

procedure TFogl.FormCreate(Sender: TObject);
begin
   OpenGLControl1:=TOpenGLControl.Create(Self);
   with openGLControl1 do
begin
  Name:='OPenglControl';
   Align:=alClient;
   Parent:=Panel1;
end;

end;

end.


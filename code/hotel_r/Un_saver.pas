unit Un_saver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpenGL, ExtCtrls;

type
  TFrm_saver = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    DC: HDC;
    RC: HGLRC;
    Angle: GLfloat;
    procedure InitializeOpenGL;
    procedure RenderScene;
  public
  end;

var
  Frm_saver: TFrm_saver;

implementation

{$R *.dfm}
procedure DrawSphere(radius: GLfloat; slices, stacks: Integer);
var
  i, j: Integer;
  theta1, theta2, phi: GLfloat;
  x1, y1, z1, x2, y2, z2: GLfloat;
begin
  for i := 0 to stacks - 1 do
  begin
    theta1 := i * Pi / stacks;
    theta2 := (i + 1) * Pi / stacks;

    glBegin(GL_TRIANGLE_STRIP);
    for j := 0 to slices do
    begin
      phi := j * 2 * Pi / slices;

      x1 := radius * sin(theta1) * cos(phi);
      y1 := radius * cos(theta1);
      z1 := radius * sin(theta1) * sin(phi);

      x2 := radius * sin(theta2) * cos(phi);
      y2 := radius * cos(theta2);
      z2 := radius * sin(theta2) * sin(phi);

      glNormal3f(x1 / radius, y1 / radius, z1 / radius);
      glVertex3f(x1, y1, z1);

      glNormal3f(x2 / radius, y2 / radius, z2 / radius);
      glVertex3f(x2, y2, z2);
    end;
    glEnd;
  end;
end;

procedure DrawCube(size: GLfloat);
var
  hs: GLfloat; // half-size
begin
  hs := size / 2.0;

  glBegin(GL_QUADS);
  
  // Front face (z = +hs)
  glNormal3f(0.0, 0.0, 1.0);
  glVertex3f(-hs, -hs,  hs);
  glVertex3f( hs, -hs,  hs);
  glVertex3f( hs,  hs,  hs);
  glVertex3f(-hs,  hs,  hs);

  // Back face (z = -hs)
  glNormal3f(0.0, 0.0, -1.0);
  glVertex3f(-hs, -hs, -hs);
  glVertex3f(-hs,  hs, -hs);
  glVertex3f( hs,  hs, -hs);
  glVertex3f( hs, -hs, -hs);

  // Top face (y = +hs)
  glNormal3f(0.0, 1.0, 0.0);
  glVertex3f(-hs,  hs, -hs);
  glVertex3f(-hs,  hs,  hs);
  glVertex3f( hs,  hs,  hs);
  glVertex3f( hs,  hs, -hs);

  // Bottom face (y = -hs)
  glNormal3f(0.0, -1.0, 0.0);
  glVertex3f(-hs, -hs, -hs);
  glVertex3f( hs, -hs, -hs);
  glVertex3f( hs, -hs,  hs);
  glVertex3f(-hs, -hs,  hs);

  // Right face (x = +hs)
  glNormal3f(1.0, 0.0, 0.0);
  glVertex3f( hs, -hs, -hs);
  glVertex3f( hs,  hs, -hs);
  glVertex3f( hs,  hs,  hs);
  glVertex3f( hs, -hs,  hs);

  // Left face (x = -hs)
  glNormal3f(-1.0, 0.0, 0.0);
  glVertex3f(-hs, -hs, -hs);
  glVertex3f(-hs, -hs,  hs);
  glVertex3f(-hs,  hs,  hs);
  glVertex3f(-hs,  hs, -hs);

  glEnd;
end;

procedure TFrm_saver.InitializeOpenGL;
var
  pfd: TPixelFormatDescriptor;
  PixelFormat: Integer;
begin
  DC := GetDC(Handle);
  ZeroMemory(@pfd, SizeOf(pfd));
  pfd.nSize := SizeOf(pfd);
  pfd.nVersion := 1;
  pfd.dwFlags := PFD_DRAW_TO_WINDOW or PFD_SUPPORT_OPENGL or PFD_DOUBLEBUFFER;
  pfd.iPixelType := PFD_TYPE_RGBA;
  pfd.cColorBits := 32;
  pfd.cDepthBits := 16;

  PixelFormat := ChoosePixelFormat(DC, @pfd);
  SetPixelFormat(DC, PixelFormat, @pfd);

  RC := wglCreateContext(DC);
  wglMakeCurrent(DC, RC);

  glClearColor(0.1, 0.1, 0.1, 1.0);
  glEnable(GL_DEPTH_TEST);
end;

procedure TFrm_saver.RenderScene;
begin
  glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);
  glLoadIdentity;
  glTranslatef(0.0, 0.0, -8.0);

  glRotatef(Angle, 1.0, 1.0, 0.0);

  // Куб (слева)
  glPushMatrix;
  glTranslatef(-2.5, 0.0, 0.0);
  glColor3f(1.0, 0.0, 0.0);
// glutSolidCube(1.0);
  glPopMatrix;

  // Пирамида (в центре)
  glPushMatrix;
  glColor3f(0.0, 1.0, 0.0);
  glBegin(GL_TRIANGLES);
    glVertex3f( 0.0,  1.0, 0.0);
    glVertex3f(-1.0, -1.0, 1.0);
    glVertex3f( 1.0, -1.0, 1.0);

    glVertex3f( 0.0,  1.0, 0.0);
    glVertex3f( 1.0, -1.0, 1.0);
    glVertex3f( 1.0, -1.0, -1.0);

    glVertex3f( 0.0,  1.0, 0.0);
    glVertex3f( 1.0, -1.0, -1.0);
    glVertex3f(-1.0, -1.0, -1.0);

    glVertex3f( 0.0,  1.0, 0.0);
    glVertex3f(-1.0, -1.0, -1.0);
    glVertex3f(-1.0, -1.0, 1.0);
  glEnd;
  glPopMatrix;

  // Призма (справа)
  glPushMatrix;
  glTranslatef(2.5, 0.0, 0.0);
  glScalef(1.0, 1.0, 2.0);
  glColor3f(0.0, 0.0, 1.0);
  DrawCube(1.0);
  glPopMatrix;

glPushMatrix;
glTranslatef(-3.5, -2.0, 0.0);
glColor3f(0.0, 1.0, 0.0);
DrawSphere(-1.5, 20, 20);
glPopMatrix;
  SwapBuffers(DC);
end;

procedure TFrm_saver.FormCreate(Sender: TObject);
begin
  InitializeOpenGL;
  FormResize(Self);
  Angle := 0;
end;

procedure TFrm_saver.FormDestroy(Sender: TObject);
begin
  wglMakeCurrent(0, 0);
  wglDeleteContext(RC);
  ReleaseDC(Handle, DC);
end;

procedure TFrm_saver.FormResize(Sender: TObject);
begin
  if DC = 0 then Exit;

  glViewport(0, 0, ClientWidth, ClientHeight);
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity;
  gluPerspective(45.0, ClientWidth / ClientHeight, 1.0, 100.0);
  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity;
end;

procedure TFrm_saver.FormPaint(Sender: TObject);
begin
  RenderScene;
  Angle := Angle + 1;
  if Angle > 360 then Angle := 0;
  Sleep(16);
  Invalidate;
end;

procedure TFrm_saver.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Close;
end;

procedure TFrm_saver.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Close;
end;

end.


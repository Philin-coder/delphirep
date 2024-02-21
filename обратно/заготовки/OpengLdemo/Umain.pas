unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,opengl;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  HRC:HGLRC;

implementation

{$R *.dfm}
procedure SetDCPixelFormat ( hdc : HDC );
 var
  pfd : TPixelFormatDescriptor;
  nPixelFormat : Integer;
 begin
  FillChar (pfd, SizeOf (pfd), 0);
   nPixelFormat := ChoosePixelFormat (hdc, @pfd);
  SetPixelFormat (hdc, nPixelFormat, @pfd);
 end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SetDCPixelFormat(Canvas.Handle);  //Применяем формат пиксела заданный ранее
  hrc := wglCreateContext(Canvas.Handle); //Выделяем контекст устройства
  wglMakeCurrent(Canvas.Handle, hrc);
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
 glClearColor (0.5, 0.5, 0.75, 1.0);
 glClear (GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT); // очистка буфера цвета и глубины

 wglMakeCurrent (0, 0);
end;

end.

unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, OpenGLContext, Forms, Controls, Graphics,
  Dialogs, ExtCtrls,gl,glu,LCLType;

type

  { TForm3 }

  TForm3 = class(TForm)
    OpenGLControl1: TOpenGLControl;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;
  W:Integer=640;
  H:Integer=480;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.FormCreate(Sender: TObject);
begin
  Width:=w;
  Height:=h;
  Position:=poScreenCenter;

end;

end.


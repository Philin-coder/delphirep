unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    TrayIcon1: TTrayIcon;
    procedure ApplicationProperties1Minimize(Sender: TObject);
    procedure FormWindowStateChange(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
  private


  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ApplicationProperties1Minimize(Sender: TObject);
begin

end;

procedure TForm1.FormWindowStateChange(Sender: TObject);
begin
  if   WindowState=wsMinimized then
  begin
    Hide;
    TrayIcon1.Visible:=True;
    trayicon1.balloontitle:=('Текст 1');
trayicon1.balloonhint:=('Текст 2');
trayicon1.showballoonHint;
  end;
end;

procedure TForm1.TrayIcon1Click(Sender: TObject);
begin
  TrayIcon1.Visible:=False;
  WindowState:=wsNormal;
  Show;
end;

end.


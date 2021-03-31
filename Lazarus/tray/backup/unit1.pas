unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    TrayIcon1: TTrayIcon;

    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  var s:string;

implementation
uses Unit2;
{$R *.lfm}

{ TForm1 }


procedure TForm1.TrayIcon1Click(Sender: TObject);
begin
  Form1.Show;
  TrayIcon1.Visible:=False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  TrayIcon1.Visible:=True;
  TrayIcon1.Hint:='test';
  TrayIcon1.BalloonHint:='первый текст';
  TrayIcon1.ShowBalloonHint;
  s:=FormatDateTime('yyyy/mm/dd', now);
  Form1.Caption:=s;
  Form1.Width:=1024;
  Form1.Height:=768;
  Form1.Hide;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

end.


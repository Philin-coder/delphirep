unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var xn:Integer;
var xk: Integer;
var x:Real;
var y:Integer;
var i:Integer;

begin
xn:=StrToInt(Edit1.Text);
xk:=StrToInt(Edit2.Text);
Memo1.Lines.Clear;
 for i:=xn to xk do
 begin
   y:=77*cos(sqr(x))+1;
   Memo1.Lines.add(FloatToStr(y));
 end;
end;

end.


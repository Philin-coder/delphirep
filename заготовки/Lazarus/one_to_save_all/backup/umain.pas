unit umain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  ExtCtrls, StdCtrls,uspiral;

type

  { TFmain }

  TFmain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);


  private

  public

  end;

var
  Fmain: TFmain;

implementation

{$R *.lfm}

{ TFmain }

procedure TFmain.FormActivate(Sender: TObject);
begin
     with Fmain do
begin
  Width:=2048;
  Height:=1024;
  Position:=poScreenCenter;
end;



end;

procedure TFmain.MenuItem1Click(Sender: TObject);
begin
  Fspiral.ShowModal;
end;



procedure TFmain.Button1Click(Sender: TObject);
begin
  ShowMessage('First programm');
end;

procedure TFmain.Button2Click(Sender: TObject);
var xn:Integer;
var xk:Integer;
var x:Integer;
var y:real;
  var i:Integer;
begin
xn:=StrToInt(Edit1.Text);
xk:=StrToInt(Edit2.Text);
Memo1.Clear;
for i:=xn to xk do
begin
  y:=77*Cos(Sqr(x)+1);
  Memo1.Lines.Add(FloatToStr(y));
end;

end;


end.


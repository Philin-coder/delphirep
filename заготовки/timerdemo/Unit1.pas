unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Timer1: TTimer;
    Panel1: TPanel;
    Button2: TButton;
    ProgressBar1: TProgressBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Timer1.Enabled:=true;
ShowMessage('????????? ');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Timer1.Enabled:=False;
ShowMessage('????');
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var k:Integer;
begin
k:=0;
ProgressBar1.Position:=ProgressBar1.Position+1;
inc(k);
if k=5 then

begin
ShowMessage('?????? ???????? 5 ??????');
Timer1.Enabled:=False;
ShowMessage('?????? ?????????? ');
end;

end;

end.

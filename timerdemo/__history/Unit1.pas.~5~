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
    ProgressBar1: TProgressBar;
    Button2: TButton;
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
ShowMessage('стартовал ');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Timer1.Enabled:=False;
ShowMessage('стоп');
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var k:Integer;
begin
ProgressBar1.Position:=ProgressBar1.Position+1;
begin
ShowMessage('таймер работает 5 секунд');
Timer1.Enabled:=False;

end;

end;

end.

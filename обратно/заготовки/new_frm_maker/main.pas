unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFmain = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;
  btn:TButton;
  edt:TEdit;

implementation

{$R *.dfm}

procedure TFmain.Button1Click(Sender: TObject);
begin
Fmain.Height:=Fmain.Height+40;
Button1.Enabled:=False;
btn:=TButton.Create(Fmain);
btn.Parent:=Fmain;
btn.Top:=Fmain.Height div 2+20;
btn.Left:=10;
btn.Width:=100;
btn.Height:=25;
btn.Caption:='flybtn';
end;

end.

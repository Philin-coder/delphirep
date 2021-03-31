unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  var pol:Integer;
  var pobelka:Integer;
  var potolok:Integer;
  var oboi:Integer;


implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var k:Integer;
begin
k:=0;
s:=0;
pol:=1000;
pobelka:=2000;
potolok:=3000;
oboi:=4000;
case RadioGroup1.ItemIndex  of
0:
begin
k:=k+pol;
ShowMessage('ремонт пола обошелся в'+ IntToStr(k));
end;
1:
begin
k:=k+pobelka;
ShowMessage('побелка стен обошлась в'+ IntToStr(k));
end;
2:
begin
k:=k+potolok;
ShowMessage('потолок   обошелся в'+ IntToStr(k));
end;
3:
begin
k:=k+potolok;
ShowMessage('обои   обошелись в'+ IntToStr(k));
end;

end; // case

end;

end.

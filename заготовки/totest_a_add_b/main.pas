unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function to_summ(a,b:Integer):integer;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
//ShowMessage(IntToStr(to_summ(StrToInt(LabeledEdit1.Text), StrToInt(LabeledEdit2.Text))));
to_summ(14, 14);
end;

function TForm1.to_summ(a, b: Integer): integer;
begin
Result:=a+b;;
end;

end.

unit fmain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,serve_f, ComCtrls;

type
  TForm1 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Button1: TButton;
    LabeledEdit2: TLabeledEdit;
    UpDown1: TUpDown;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
get_rnd_char(UpDown1.Position);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
UpDown1.Associate:=LabeledEdit2;
end;

end.

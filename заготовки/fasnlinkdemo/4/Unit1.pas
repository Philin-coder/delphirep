unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    fasm1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Panel1: TPanel;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    Memo1: TMemo;
    N11: TMenuItem;
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);

    procedure N1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  var a,b,c,d,x:integer;

implementation

{$R *.dfm}

procedure TForm1.N11Click(Sender: TObject);
begin
// x=(B*D) / (C-D-A)
asm
xor eax,eax
xor ebx,ebx
xor ecx,ecx
xor edx,edx
mov eax,b
mul d
mov ebx,c
sub ebx,d
sub ebx,a
div ebx
mov x,eax
end;
Memo1.Lines.Add ('Ass  X =(B*D) / (C-D-A)= '+ IntToStr((x)));
end;

procedure TForm1.N1Click(Sender: TObject);
begin
A:=StrToInt(LabeledEdit4.Text);
B:=StrToInt(LabeledEdit2.Text);
C:=StrToInt(LabeledEdit3.Text);
D:=StrToInt(LabeledEdit1.Text);

end;

procedure TForm1.N2Click(Sender: TObject);
begin
LabeledEdit4.Clear;
LabeledEdit3.Clear;
LabeledEdit2.Clear;
LabeledEdit1.Clear;
D:=0;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
Form1.Close;
end;

end.

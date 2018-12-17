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
    Memo1: TMemo;
    N11: TMenuItem;
    Button1: TButton;
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
var a,b,max:integer;
begin
a:=StrToInt(LabeledEdit4.text);
b:=StrToInt(LabeledEdit2.Text);
asm
mov eax,a
mov ebx,b
cmp eax,b
jg @m1
mov max,ebx
jmp  @m2
@m1: mov  max,eax
@m2:
end;
showmessage(' max='+ inttostr(max));
end;

procedure TForm1.N2Click(Sender: TObject);
begin
LabeledEdit4.Clear;
LabeledEdit2.Clear;

end;

procedure TForm1.N3Click(Sender: TObject);
begin
Form1.Close;
end;

end.

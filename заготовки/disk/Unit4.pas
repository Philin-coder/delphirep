unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    LabeledEdit1: TLabeledEdit;
    Button1: TButton;
    Memo1: TMemo;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var x:real;
var i:Integer;

begin
i:=StrToInt(LabeledEdit1.Text);
x:=DiskFree(i)/1024;
MessageDlg('????????: '+ floatToStr(X)+' ??', mtInformation, [mbOk], 0);
if x<>0 then
begin

if SaveDialog1.Execute then
begin
Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;
end
else
begin
ShowMessage('????? ????, ????'+','+OpenDialog1.FileName+'?????? ???? ??????');
DeleteFile(OpenDialog1.FileName);

end;

end;
procedure TForm4.Button2Click(Sender: TObject);
begin
if OpenDialog1.Execute then
begin
ShowMessage('????? ????, ????'+','+OpenDialog1.FileName+'?????? ???? ??????');
DeleteFile(OpenDialog1.FileName);
ShowMessage(OpenDialog1.FileName+' ??????');
end;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
Form4.Close;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
       LabeledEdit1.Text:=IntToStr(0);
end;

end.

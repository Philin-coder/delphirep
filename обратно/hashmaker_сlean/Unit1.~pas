unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, md5Hash;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  edit1.Text:=md5UTF8(trim(memo1.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.Text:=md5(trim(memo1.Text));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  memo1.Text:='hello worldÿ';
end;

end.

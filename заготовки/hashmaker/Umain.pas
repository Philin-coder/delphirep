unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses md5Hash;

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
memo1.Text:='hello worldя';
end;

end.

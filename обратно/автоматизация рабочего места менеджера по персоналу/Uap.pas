unit Uap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses ureg, uins_pas2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if (Form1.Edit2.Text='admin') and  (Form1.Edit1.Text='admin')   then
begin
Fins_pass.ShowModal;
end
else
ShowMessage('пароль некорректен');
exit;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
Edit2.Text:='admin';
Edit1.Text:='admin';
end;

end.

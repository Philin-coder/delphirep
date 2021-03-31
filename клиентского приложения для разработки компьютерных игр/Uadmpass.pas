unit Uadmpass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFadminpass = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fadminpass: TFadminpass;

implementation

uses Ureg, Uadmis;

{$R *.dfm}

procedure TFadminpass.Button1Click(Sender: TObject);
begin
if (LabeledEdit1.Text='Admin') and (LabeledEdit2.Text='Admin') then
begin
Fadmins.ShowModal;
end
else
begin
ShowMessage('неверный пароль ');
Exit;
end;

end;

procedure TFadminpass.FormActivate(Sender: TObject);
var i:Integer;
begin
with GroupBox2 do
for I := 0 to ControlCount - 1 do
begin
if (Controls[i] is TLabeledEdit) then
begin
(Controls[i] as TLabeledEdit).Text:='Admin';
(Controls[i] as TLabeledEdit).PasswordChar:='*';

end;
end;

end;

end.

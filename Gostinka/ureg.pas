unit ureg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFreg = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Freg: TFreg;

implementation

uses Umain;

{$R *.dfm}

procedure TFreg.Button1Click(Sender: TObject);
begin
if (Edit1.Text='????????????')and(ComboBox1.ItemIndex=0)  then
begin
Freg.Close;
end
else if (Edit1.Text='?????????')and(ComboBox1.ItemIndex=1) then
begin
Freg.Close;
end
else if (Edit1.Text='?????????????')and (ComboBox1.ItemIndex=2) then
begin
 Freg.Close;
end
else
begin
  ShowMessage('???????? ??????');
  exit;
end;


end;

procedure TFreg.FormActivate(Sender: TObject);
begin
ComboBox1.SelText:='????????';
Edit1.PasswordChar:='*';
Edit1.Text:='????????????';
end;

end.

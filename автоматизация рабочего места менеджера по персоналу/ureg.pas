unit ureg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,jpeg, DBCtrls;

type
  TFreg = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Panel1: TPanel;
    Button2: TButton;
    Label1: TLabel;
    ed: TLabel;
    Edit1: TEdit;
    Image1: TImage;
    Edit2: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Freg: TFreg;

implementation

uses Udm, DB, Umain, Uap;

{$R *.dfm}







procedure TFreg.Button1Click(Sender: TObject);
begin
fdm.Querypas.Open;
if (Edit2.Text=fdm.Querypas.FieldByName('usver_name').AsString)  and (Edit1.Text=fdm.Querypas.FieldByName('user_pas').AsString) then
begin
 Fmain.Show;
end
else
begin
showMessage('?????? ???????????');
end;


end;

procedure TFreg.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TFreg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   fdm.Querypas.Active:=false;
end;

procedure TFreg.FormShow(Sender: TObject);
begin
Image1.Picture.LoadFromFile('dog.jpg');
Edit1.Text:='test';
Edit2.Text:='test';
end;

procedure TFreg.Image1DblClick(Sender: TObject);
begin
Form1.ShowModal;
end;

end.

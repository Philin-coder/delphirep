unit Ulog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFlog = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    LabeledEdit1: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flog: TFlog;

implementation

uses main, fadm_pass;

{$R *.dfm}

procedure TFlog.Button1Click(Sender: TObject);
begin
if (ComboBox1.Text='Admin') and (LabeledEdit1.Text='Pass') then
BEGIN
//Flog.hide;
Flog.Close;
Fadm_passs.ShowModal;
END
ELSE
BEGIN
  MessageDlg('пароль неверен ',mtError, mbOKCancel, 0);

END;

end;

procedure TFlog.FormActivate(Sender: TObject);
begin
ComboBox1.Text:='Admin';
LabeledEdit1.Text:='Pass';
end;

end.

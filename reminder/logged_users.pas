unit logged_users;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls;

type
  Tflogged_users = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    procedure Button1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  flogged_users: Tflogged_users;

implementation

uses fadm_pass, main, Serv_f, Ulog, Udm, DB;

{$R *.dfm}

procedure Tflogged_users.Button1Click(Sender: TObject);
begin
if (ComboBox1.Text=fdm.Query_pass.FieldByName('usver_name').AsString)and (Edit2.Text=fdm.Query_pass.FieldByName('usver_pass').AsString) then
begin
 Fmain.ShowModal;
end
else
begin
MessageDlg('?????? ???????????',mtWarning,[mbAbort],0);
end;
end;

procedure Tflogged_users.Button1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=115) then
begin
Fadm_passs.ShowModal;
end;

end;

procedure Tflogged_users.ComboBox1Select(Sender: TObject);
begin
  fdm.Query_pass.First;
  Edit2.Text:=fdm.Query_pass.Fields[2].AsString;
  Edit2.PasswordChar:=#0;
end;

procedure Tflogged_users.FormActivate(Sender: TObject);
  var i:Integer;
begin
fdm.Query_pass.Open;
with ComboBox1.Items, fdm.Query_pass do
begin
Clear;
First;
while not eof  do
begin
add (Fields[1].AsString);
Next;
end;
end;
fdm.Query_pass.First;





//ComboBox1.Text:=fdm.Query_pass.FieldByName('usver_name').AsString;
//Edit2.Text:=fdm.Query_pass.FieldByName('usver_pass').AsString;
with GroupBox1 do for I := 0 to ControlCount - 1 do
if Controls[i] is TEdit then
begin
(Controls[i] as TEdit).Clear;
(Controls[i] as TEdit).PasswordChar:='*';
end;
end;

procedure Tflogged_users.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdm.Query_pass.close;
end;

end.

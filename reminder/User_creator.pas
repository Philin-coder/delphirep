unit User_creator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Serv_f, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  Tuser_creation = class(TForm)
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  user_creation: Tuser_creation;

implementation

uses fadm_pass, main,  Ulog, Udm;

{$R *.dfm}

procedure Tuser_creation.Button1Click(Sender: TObject);
begin
try
fdm.ins_pass.Parameters.ParamByName('@usver_name').Value:=LabeledEdit1.Text;
fdm.ins_pass.Parameters.ParamByName('@usver_pass').Value:=LabeledEdit2.Text;
if (LabeledEdit1.Text='')or(LabeledEdit2.Text='') then
begin
  MessageDlg('?? ????????? ???? ?????',mtError,[mbOK],0);
  Exit;
end;
  fdm.ins_pass.ExecProc;
  fdm.Query_pass.Close;
  fdm.Query_pass.SQL.Clear;
  fdm.Query_pass.SQL.Text:='select * from users';
  fdm.Query_pass.Open;
  fdm.Query_pass.Next;
  fdm.Query_pass.First;
  fdm.Query_pass.Last;
except on E: Exception do
begin
  MessageDlg('?????? ?? ?????????',mtError,[mbOK],0);
  Exit;
end;
end;

end;



procedure Tuser_creation.FormActivate(Sender: TObject);
begin
fdm.ADOConnection1.Connected:=True;
fdm.Query_pass.Open;
end;

procedure Tuser_creation.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdm.ADOConnection1.Connected:=False;
fdm.Query_pass.CLOSE;
end;

end.

unit Uadmis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFadmins = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    GroupBox3: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
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
  Fadmins: TFadmins;

implementation

uses Uadmpass, Udm;

{$R *.dfm}

procedure TFadmins.Button1Click(Sender: TObject);
begin
try
dm.ins_user.Parameters.ParamByName('@usver_role').Value:=LabeledEdit1.Text;
dm.ins_user.Parameters.ParamByName('@usver_pass').Value:=LabeledEdit2.Text;
if ((LabeledEdit1.Text='')or(LabeledEdit2.Text='')) then
begin
 MessageDlg('проверьте ввод  ',mtWarning,[mbAbort],0);
 exit;
end;
 MessageDlg('Изменеия сохранены ',mtWarning,[mbAbort],0);
 dm.ins_user.ExecProc;
 dm.Querypass.Close;
 dm.Querypass.SQL.Clear;
 dm.Querypass.SQL.Text:='select * from usver';
 dm.Querypass.Open;
 dm.Querypass.Next;
 dm.Querypass.First;
 dm.Querypass.Last;
EXCEPT ON E:EXCEPTION DO
BEGIN
 MessageDlg('Сбой процелуры ',mtWarning,[mbAbort],0);
Exit;
END;


end;
end;

procedure TFadmins.FormActivate(Sender: TObject);
begin
dm.Querypass.Open;
end;

procedure TFadmins.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.Querypass.Close;
end;

end.

unit Usotr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls, ComCtrls,DateUtils;

type
  TFsotr = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Button2: TButton;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox5: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    function DateToStr_(Dat : TDate): String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsotr: TFsotr;

implementation

uses Udm, Ureg, DB;

{$R *.dfm}
function Tfsotr.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;


procedure TFsotr.Button1Click(Sender: TObject);
var i:Integer;
var sel:string;
begin
//ShowMessage(IntToStr(DBGrid1.DataSource.DataSet.Fields[i].Value));
sel:='select  Zadanie.N_Zad,Zadanie.Sr_vip, Rabotnik.fio,'+
'Zadanie.St_rab, Zadanie.Data_nash, Proect.Nam_proect, Work.Nam_work'+' '+
 'from Zadanie'+' '+
 'join Proect on Zadanie.N_Proekta=Proect.N_Proekta'+' '+
 'join Rabotnik on Rabotnik.N_Rab=Zadanie.N_Rab'+' '+
 'join Work on Work.N_Work=Zadanie.N_Work'+ ' '+
  'where Zadanie.Date_fakt is not  null and Rabotnik.Date_yv is   null and Rabotnik.N_Rab= '+
    dm.Queryrabotnik.FieldByName('N_rab').AsString;
I:=DBGrid1.SelectedIndex;
  try
  dm.vip_zadan.Parameters.ParamByName('@N_zad').Value:=DBGrid1.DataSource.DataSet.Fields[i].Value;
  dm.vip_zadan.Parameters.ParamByName('@date_fakt').Value:=DateToStr_(DateTimePicker1.Date);
  MessageDlg('Выполнено ',mtInformation,[mbOK],0);
  dm.vip_zadan.ExecProc;
  dm.queryvip.Close;
  dm.queryvip.sql.Clear;
  dm.queryvip.sql.text:=sel;
  dm.queryvip.open;
  dm.queryvip.Next;
  dm.queryvip.first;
  dm.queryvip.Last;
except on e:Exception do
begin
MessageDlg('сбой процедуры ',mtWarning,[mbAbort],0);
exit;
end;
end;

end;

procedure TFsotr.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TFsotr.DBLookupComboBox1Click(Sender: TObject);
var sel,sel2:string;
begin
sel:='select  Zadanie.N_Zad,Zadanie.Sr_vip, Rabotnik.fio,'+
'Zadanie.St_rab, Zadanie.Data_nash, Proect.Nam_proect, Work.Nam_work'+' '+
 'from Zadanie'+' '+
 'join Proect on Zadanie.N_Proekta=Proect.N_Proekta'+' '+
 'join Rabotnik on Rabotnik.N_Rab=Zadanie.N_Rab'+' '+
 'join Work on Work.N_Work=Zadanie.N_Work'+ ' '+
  'where Zadanie.Date_fakt is null and Rabotnik.Date_yv is null and Rabotnik.N_Rab= '+
  dm.Queryrabotnik.FieldByName('N_rab').AsString;
  sel2:='select  Zadanie.N_Zad,Zadanie.Sr_vip, Rabotnik.fio,'+
'Zadanie.St_rab, Zadanie.Data_nash, Proect.Nam_proect, Work.Nam_work'+' '+
 'from Zadanie'+' '+
 'join Proect on Zadanie.N_Proekta=Proect.N_Proekta'+' '+
 'join Rabotnik on Rabotnik.N_Rab=Zadanie.N_Rab'+' '+
 'join Work on Work.N_Work=Zadanie.N_Work'+ ' '+
  'where Zadanie.Date_fakt is not null and Rabotnik.Date_yv is null and Rabotnik.N_Rab= '+
  dm.Queryrabotnik.FieldByName('N_rab').AsString;

try
dm.sel_task.Parameters.ParamByName('@n_rab').Value:=dm.Queryrabotnik.FieldByName('n_rab').AsString;
dm.sel_task.ExecProc;
dm.Querytasklist.Close;
dm.Queryvip.Close;
dm.Queryvip.sql.Clear;
dm.Querytasklist.SQL.Clear;
dm.Querytasklist.SQL.text:=sel;
dm.Queryvip.sql.text:=sel2;
dm.Queryvip.Open;
dm.Queryvip.Next;
dm.Queryvip.first;
dm.Queryvip.last;
dm.Querytasklist.Open;
dm.Querytasklist.Next;
dm.Querytasklist.first;
dm.Querytasklist.last;
except  on e:Exception do
begin
MessageDlg('сбой процедуры ',mtWarning,[mbAbort],0);
exit;
end;

end;
end;

procedure TFsotr.FormActivate(Sender: TObject);
begin
dm.Querytasklist.Open;
dm.Queryrabotnik.Open;
dm.queryvip.open;
end;

procedure TFsotr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.Querytasklist.close;
dm.Queryrabotnik.Close;
dm.queryvip.Close;
end;

end.

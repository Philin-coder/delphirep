unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,DateUtils, DBCtrls,
  Menus;

type
  TFmain = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Button1: TButton;
    DBGrid1: TDBGrid;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    UpDown1: TUpDown;
    Edit1: TEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox6: TGroupBox;
    LabeledEdit5: TLabeledEdit;
    GroupBox7: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    RadioButton1: TRadioButton;
    GroupBox8: TGroupBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DateTimePicker3: TDateTimePicker;
    GroupBox9: TGroupBox;
    DBGrid2: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Label8: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Button4: TButton;
    N2: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    function DateToStr_(Dat : TDate): String;
    function   CommaPoint (X: String) : String;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox3Click(Sender: TObject);
    procedure LabeledEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }

  end;

var
  Fmain: TFmain;

implementation

uses Udm, ADODB, DB, Ugruppa, Urpv, Ureport;



{$R *.dfm}
function TFmain.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;

procedure TFmain.Button2Click(Sender: TObject);
var ot_stql:string;
begin
  try
dm.Query_ot.Close;
ot_stql:=dm.Query_ot.SQL.Text;
dm.Query_ot.SQL.Clear;
dm.Query_ot.SQL.Text:='update stud set date_o='+QuotedStr(DateToStr_(DateTimePicker3.Date))+' where stud.ntab='+dm.Query_stud.FieldByName('ntab').AsString+' and stud.n_gr='+dm.Query_grupp.FieldByName('n_gr').AsString+'and stud.date_o is null';
dm.Query_ot.ExecSQL;
dm.Query_ot.SQL.Text:='select  stud.ntab , stud.fio,'+
'stud.stip,stud.uder, stud.nach,'
+'stud.date_n , stud.date_k ,'+
'stud.ball , groupp.naim  from stud join groupp on stud.n_gr=groupp.n_gr where stud.date_o is not null';
dm.Query_ot.Open;
dm.Query_stud.Close;
dm.Query_stud.Open;
  Except
  begin
  ShowMessage('wrong situation');
  end;
  end;
end;

procedure TFmain.Button3Click(Sender: TObject);
begin
try
dm.Query_back.Active:=false;
dm.Query_back.SQL.Clear;
dm.Query_back.SQL.Text:='update stud set date_o=null'+' where stud.ntab='+dm.Query_ot.FieldByName('ntab').AsString;
dm.Query_back.ExecSQL;
dm.Query_ot.Close;
dm.Query_ot.Open;
dm.Query_stud.Close;
dm.Query_stud.Open;
Except
ShowMessage('wrong situation');
end;
end;

procedure TFmain.Button4Click(Sender: TObject);
begin
frpv.ShowModal;
end;

procedure TFmain.CheckBox1Click(Sender: TObject);

begin
if CheckBox1.Checked=True then
begin
CheckBox2.Checked:=False;
CheckBox3.Checked:=False;
dm.Query_stud.SQL.Clear;
dm.Query_stud.SQL.Text:='select  stud.ntab, stud.fio ,'+
'stud.stip ,stud.uder , stud.nach ,'
+'stud.date_n , stud.date_k ,'+
'stud.ball , groupp.naim  from stud join groupp on stud.n_gr=groupp.n_gr where stud.date_o is null'+' '+ 'order by fio asc';
dm.Query_stud.Close;
dm.Query_stud.Open;
end
else if CheckBox1.Checked=False then
begin
dm.Query_stud.SQL.Clear;
dm.Query_stud.SQL.Text:='select  stud.ntab, stud.fio ,'+
'stud.stip ,stud.uder , stud.nach ,'
+'stud.date_n , stud.date_k ,'+
'stud.ball , groupp.naim  from stud join groupp on stud.n_gr=groupp.n_gr where stud.date_o is null';
dm.Query_stud.Close;
dm.Query_stud.Open;
end;
end;


procedure TFmain.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked=True then
begin
CheckBox1.Checked:=False;
CheckBox3.Checked:=False;
dm.Query_stud.SQL.Clear;
dm.Query_stud.SQL.Text:='select  stud.ntab , stud.fio ,'+
'stud.stip ,stud.uder , stud.nach ,'
+'stud.date_n , stud.date_k ,'+
'stud.ball , groupp.naim as [Группа] from stud join groupp on stud.n_gr=groupp.n_gr where stud.date_o is null'+' '+ 'order by ball desc';
dm.Query_stud.Close;
dm.Query_stud.Open;
end
else if CheckBox2.Checked=False then
begin
dm.Query_stud.SQL.Clear;
dm.Query_stud.SQL.Text:='select  stud.ntab , stud.fio ,'+
'stud.stip ,stud.uder , stud.nach ,'
+'stud.date_n , stud.date_k ,'+
'stud.ball as [оценка], groupp.naim  from stud join groupp on stud.n_gr=groupp.n_gr where stud.date_o is null';
dm.Query_stud.Close;
dm.Query_stud.Open;
end;

end;

procedure TFmain.CheckBox3Click(Sender: TObject);
begin
if CheckBox3.Checked=True then
begin
CheckBox1.Checked:=False;
CheckBox2.Checked:=False;
dm.Query_stud.SQL.Clear;
dm.Query_stud.SQL.Text:='select  stud.ntab , stud.fio ,'+
'stud.stip ,stud.uder , stud.nach ,'
+'stud.date_n , stud.date_k ,'+
'stud.ball , groupp.naim  from stud join groupp on stud.n_gr=groupp.n_gr where stud.date_o is null'+' '+ 'order by stip desc';
dm.Query_stud.Close;
dm.Query_stud.Open;
end
else if CheckBox3.Checked=False then
begin
dm.Query_stud.SQL.Clear;
dm.Query_stud.SQL.Text:='select  stud.ntab , stud.fio ,'+
'stud.stip ,stud.uder , stud.nach, '
+'stud.date_n , stud.date_k ,'+
'stud.ball, groupp.naim  from stud join groupp on stud.n_gr=groupp.n_gr where stud.date_o is null';
dm.Query_stud.Close;
dm.Query_stud.Open;
end;

end;

function   TFmain.CommaPoint (X: String) : String;
var iii : Integer;
begin
 iii:=pos(',',X) ;
 if iii<>0 then
 Result:=copy(X,1,iii-1)+'.'+copy(X,iii+1,5)
 else
 Result:=x;
end;



procedure TFmain.Button1Click(Sender: TObject);
begin
try
dm.Query_stud.Active:=false;
dm.Query_stud.SQL.Clear;
dm.Query_stud.SQL.Text:='insert into stud(fio,stip, uder,nach,date_n,date_k,ball,n_gr)values('+QuotedStr(LabeledEdit1.Text)+','+CommaPoint(FloatToStr(StrToFloat(LabeledEdit2.Text)))+','+CommaPoint(FloatToStr(StrToFloat(LabeledEdit3.Text)))+','+CommaPoint( FloatToStr(StrToFloat(LabeledEdit4.Text)))+','+QuotedStr(DateToStr_(DateTimePicker1.Date))+','+QuotedStr(DateToStr_(DateTimePicker2.Date))+','+Edit1.Text+','+DM.Query_grupp.FieldByName('n_gr').AsString+')';
dm.Query_stud.ExecSQL;
dm.Query_stud.SQL.Text:='select  stud.ntab , stud.fio ,'+
'stud.stip ,stud.uder , stud.nach,'
+'stud.date_n, stud.date_k,'+
'stud.ball, groupp.naim  from stud join groupp on stud.n_gr=groupp.n_gr where stud.date_o is null';
dm.Query_stud.Active:=true;
dm.Query_ot.Close;
dm.Query_ot.Open;
MessageDlg('Студент добавлен',mtInformation,[mbOK],0);
Beep();
if (LabeledEdit1.Text='')or(LabeledEdit2.Text='')or(LabeledEdit3.Text='')or(LabeledEdit4.Text='')  then
begin
MessageDlg('Проверьте ввод',mtError,[mbOK],0);
Beep();
Exit;
end;
except
ShowMessage('wrong situation');
exit;
end;
end;

procedure TFmain.FormActivate(Sender: TObject);
var i,j,t,k:Integer;
begin
with dm do
for I := 0 to ComponentCount - 1 do
if (Components[i] is TADOQuery) then
begin
  (Components[i]as TADOQuery).Open;
end;
with Fmain do
for j := 0 to ComponentCount - 1 do
if (Components[j] is TDBLookupComboBox)then
begin
  (Components[j] as TDBLookupComboBox).DropDown;
end;

Fmain.DBLookupComboBox1.SetFocus;
Fmain.RadioButton1.Checked:=False;
with Fmain do
for t := 0 to ComponentCount - 1 do
  if (Components[t] is TDateTimePicker) then
  begin
  (Components[t] as TDateTimePicker).Date:=Now;
  end;
With GroupBox2 do
for k := 0 to ControlCount - 1 do
  begin
    if (Controls[k]is TLabeledEdit)  then
    begin
      (Controls[k] as TLabeledEdit).Clear;

    end;

  end;

end;

procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
var  i:Integer;
var j:Integer;
begin
with DM do
for I := 0 to ComponentCount - 1 do
if  (Components[i] is TADOQuery) then
begin
  (Components[i] as TADOQuery).Close;
end;
With GroupBox2 do
for j := 0 to ControlCount - 1 do
  begin
    if (Controls[j]is TLabeledEdit)  then
    begin
      (Controls[j] as TLabeledEdit).Clear;
    end;

  end;
end;

procedure TFmain.FormCreate(Sender: TObject);

begin
with Fmain do
   begin
    Width:=2048;
    Height:=1024;
    Position:=poScreenCenter;
  end;
end;

procedure TFmain.LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if not   (key in ['А'..'Я', 'а'..'я',#8,#13,#32,#45,#127 ] ) then
begin
key:=#0;
   ShowMessage('Проверьте ввод ');
   Exit;
end;

end;

procedure TFmain.LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#10,#13,#32,#34,#36, #44,#46,#45,#8,#127] ) then
begin
  key:=#0;
  ShowMessage('Проверите ввод ');
  Exit;
end;

end;

procedure TFmain.LabeledEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#10,#13,#32,#34,#36, #44,#46,#45,#8,#127] ) then
begin
  key:=#0;
  ShowMessage('Проверите ввод ');
  Exit;
end;

end;

procedure TFmain.LabeledEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#10,#13,#32,#34,#36, #44,#46,#45,#8] ) then
begin
  key:=#0;
  ShowMessage('Проверите ввод ');
  Exit;
end;

end;

procedure TFmain.LabeledEdit5KeyPress(Sender: TObject; var Key: Char);
begin
try
dm.Query_stud.SQL.Text:='select  stud.ntab, stud.fio ,'+
'stud.stip ,stud.uder , stud.nach,'
+'stud.date_n, stud.date_k ,'+
'stud.ball, groupp.naim  from stud join groupp on stud.n_gr=groupp.n_gr where stud.date_o is null'+
' and stud.fio like'+QuotedStr(Concat(LabeledEdit5.Text,#37));
dm.Query_stud.Close;
dm.Query_stud.Open;
except
ShowMessage('wrong situation');
end;
end;

procedure TFmain.N1Click(Sender: TObject);
begin
Fgruppa.ShowModal;
end;

procedure TFmain.N2Click(Sender: TObject);
begin
     Freport.ShowModal;
end;

procedure TFmain.RadioButton1Click(Sender: TObject);
begin
if RadioButton1.Checked=True then
try
begin
LabeledEdit5.Clear;
CheckBox1.Checked:=False;
CheckBox2.Checked:=False;
CheckBox3.Checked:=False;
dm.Query_stud.Open;
dm.Query_stud.SQL.Text:='select  stud.ntab , stud.fio ,'+
'stud.stip ,stud.uder , stud.nach  ,'
+'stud.date_n  , stud.date_k ,'+
'stud.ball , groupp.naim  from stud join groupp on stud.n_gr=groupp.n_gr where stud.date_o is null';
dm.Query_stud.Close;
dm.Query_stud.Open;
end;
except
ShowMessage('wrong situation');
end;
end;

end.

unit Uins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls,DateUtils, DBCtrls ;

type
  TFins = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Button2: TButton;
    DBGrid2: TDBGrid;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit3KeyPress(Sender: TObject; var Key: Char);
    function DateToStr_(Dat : TDate): String;
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fins: TFins;

implementation

uses Udm;

{$R *.dfm}
procedure TFins.Button2Click(Sender: TObject);
var i:Integer;
begin
try
fdm.Querymaster.Open;
if (LabeledEdit4.Text='')or(LabeledEdit5.Text='')or(DateTimePicker1.DateTime=Now)or(DateTimePicker2.Date=Now) then
begin
ShowMessage('????????? ????');
Exit;
end;
fdm.Querymaster.sql.Clear;
fdm.Querymaster.SQL.Text:='insert into master(fio_master,kont_d,dnr,dns,userid)values('+
QuotedStr(LabeledEdit4.Text)+','+QuotedStr(LabeledEdit5.Text)+','+
QuotedStr(DateToStr_(DateTimePicker1.Date))+','
+QuotedStr(DateToStr_(DateTimePicker2.Date))+','+fdm.Querypass.FieldByName('userid').AsString+')';
fdm.Querymaster.ExecSQL;
fdm.Querymaster.Close;
fdm.Querymaster.SQL.Text:='select * from master';
fdm.Querymaster.Open;
fdm.Querymaster.Last;
with GroupBox6 do
for  i := 0 to  ControlCount - 1 do
if(Controls[i] is TLabeledEdit) then
begin
  (Controls[i] as TLabeledEdit).Clear;
end;
except
ShowMessage('???????n? ????');
end;


end;

function TFins.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;


procedure TFins.Button1Click(Sender: TObject);
var i:Integer;
begin
fdm.Querytpe_s.Open;
try
if (LabeledEdit1.Text='')or(LabeledEdit2.Text='')or(LabeledEdit3.Text='') then
begin
ShowMessage('????????? ????');
  Exit;
end;
fDM.Querytpe_s.sql.Clear;
fdm.Querytpe_s.SQL.Text:='insert into type_s(typr_opis,mechan,tochn)values('+
QuotedStr(LabeledEdit1.Text)+','+QuotedStr(LabeledEdit2.Text)+','+QuotedStr(LabeledEdit3.Text)+')';
fdm.Querytpe_s.ExecSQL;
FDM.Querytpe_s.Close;
FDM.Querytpe_s.SQL.Text:=' select * from type_s';
fdm.Querytpe_s.Open;
fdm.Querytpe_s.Last;
with GroupBox1 do
for i := 0 to ControlCount - 1 do
if (Controls[i] is TLabeledEdit) then
begin
(Controls[i] as TLabeledEdit).Clear;
end;
except
ShowMessage('???????? ????');
end;
end;

procedure TFins.FormActivate(Sender: TObject);
var i:Integer;
begin
with fins do
for I := 0 to ControlCount - 1 do
if (Controls[i]is TDBGrid) then
begin
(Controls[i] as TDBGrid).ReadOnly:=true;
end;
with Fins do
for I := 0 to ControlCount - 1 do
  if(Controls[i] is TDateTimePicker) then
  begin
    (Controls[i]as TDateTimePicker).Date:=now;
  end;
  
fDM.Querytpe_s.Open;
fDM.Querymaster.Open;
end;

procedure TFins.FormClose(Sender: TObject; var Action: TCloseAction);
var i:Integer;
begin
with fins do
 for i := 0 to ControlCount - 1 do
if (Controls[i] is TLabeledEdit) then
begin
(Controls[i]as TLabeledEdit).Clear
end;
with fins do
 for i := 0 to ControlCount - 1 do
if (Controls[i] is TDateTimePicker) then
begin
(Controls[i]as TDateTimePicker).Date:=now;
end;

fDM.Querymaster.Close;
fDM.Querytpe_s.Close;
Action:=caFree;
fins.Free;
FreeAndNil(Fins);

end;

procedure TFins.LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if  (Key in ['0'..'9','A'..'Z','a'..'z'] )then
  Begin
    KEY:=#0;
    ShowMessage('????????? ????');
  end
end;

procedure TFins.LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if  (Key in ['0'..'9','A'..'Z','a'..'z'] )then
  Begin
    KEY:=#0;
    ShowMessage('????????? ????');
  end
end;

procedure TFins.LabeledEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if  (Key in ['0'..'9','A'..'Z','a'..'z'] )then
  Begin
    KEY:=#0;
    ShowMessage('????????? ????');
  end
end;

end.

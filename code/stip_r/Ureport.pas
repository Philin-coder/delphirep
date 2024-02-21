unit Ureport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids,DateUtils;

type
  TFreport = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    GroupBox2: TGroupBox;
    Button1: TButton;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    function DateToStr_(Dat : TDate): String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Freport: TFreport;

implementation

uses Udm, Umain;

{$R *.dfm}
function TFreport.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;


procedure TFreport.Button1Click(Sender: TObject);
begin
dm.Query_report.Open;
dm.Query_report.SQL.Text:='select      naim, sum(stip), COUNT(*) otl from stud, groupp where stip>0  and groupp.n_gr=stud.n_gr'+' and stud.date_k <='+QuotedStr(DateToStr_(DateTimePicker1.Date))+' and date_k  <='+QuotedStr(DateToStr_(DateTimePicker2.Date))+  ' group by  naim,stud.date_k';
//ShowMessage(dm.Query_report.SQL.Text);
dm.Query_report.ExecSQL;
dm.Query_report.Close;
dm.Query_report.Open;
end;

procedure TFreport.FormActivate(Sender: TObject);
begin
dm.Query_stud.Open;
dm.Query_grupp.Open;
DateTimePicker1.Date:=Now;
DateTimePicker2.Date:=Now;
end;

end.

unit Ureport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls,DateUtils;

type
  TFreport = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function DateToStr_(Dat : TDate): String;
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Freport: TFreport;

implementation

uses Udm, Umain, DB;

{$R *.dfm}
function TFreport.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;


procedure TFreport.DBComboBox1Change(Sender: TObject);
begin
fdm.Queryot.Close;
fdm.Queryot.SQL.Clear;
fdm.Queryot.SQL.Text:='exec t1'+fDm.Querydog.FieldByName('dogovor_id').AsString+','+QuotedStr(DateToStr_(DateTimePicker1.DateTime));
ShowMessage(fDm.Queryot.SQL.Text);
fdm.Queryot.Open;
end;

procedure TFreport.DBLookupComboBox1Click(Sender: TObject);
begin
fdm.Queryot.Close;
fdm.Queryot.sql.Clear;
fdm.Queryot.sql.Text:='exec t1 '+fdm.Querydog.FieldByName('dogovor_id').AsString+','+QuotedStr(DateToStr_(DateTimePicker1.Date));
ShowMessage(fdm.Queryot.sql.Text);
fdm.Queryot.Open;
end;

procedure TFreport.FormActivate(Sender: TObject);
begin
fdm.Querydog.Open;
fdm.Queryot.Open;
end;

procedure TFreport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdm.Querydog.Close;
fdm.Queryot.Close;
end;

end.

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls,DateUtils, ExtCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Button2: TButton;
    GroupBox6: TGroupBox;
    DBGrid2: TDBGrid;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox7: TGroupBox;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    GroupBox8: TGroupBox;
    Button7: TButton;
    DBGrid3: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    function DateToStr_(Dat : TDate): String;
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var

  Form1: TForm1;

implementation

uses dm;

{$R *.dfm}
function TForm1.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
fDM.ins_rab.Parameters.ParamValues['@naim']:=LabeledEdit1.Text;
fdm.ins_rab.Parameters.ParamValues['@opis']:=LabeledEdit2.Text;
fDM.ins_rab.Parameters.ParamValues['@dater']:=DateToStr(DateTimePicker1.Date);
fdm.ins_rab.ExecProc;
fdm.Queryrab.Close;
fdm.Queryrab.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
fdm.ins_uch.Parameters.ParamValues['@naim']:=LabeledEdit3.Text;
fdm.ins_uch.Parameters.ParamValues['@tel']:=LabeledEdit4.Text;
fdm.ins_uch.Parameters.ParamValues['@id_rab']:=fDM.Queryrab.FieldByName('id_rab').Value;
fdm.ins_uch.ExecProc;
fdm.Queryuch.Close;
fdm.Queryuch.Open;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
fDM.Queryuch.CancelBatch();
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
fdm.Queryuch.UpdateBatch();
end;

procedure TForm1.DateTimePicker2Change(Sender: TObject);
begin
fdm.Queryot.Close;
fdm.Queryot.SQL.Clear;
fDM.Queryot.SQL.Text:='exec REPORT'+QuotedStr(DateToStr_(DateTimePicker2.Date))+','+QuotedStr(DateToStr_(DateTimePicker3.Date));
ShowMessage(fDM.Queryot.SQL.Text);
fdm.Queryot.Open;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
fdm.Queryrab.Open;
fDM.Queryuch.Open;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdm.Queryrab.Close;
fDM.Queryuch.Close;
end;

end.

unit Uopl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, ComCtrls, Grids, DBGrids,DateUtils;

type
  TFopl = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function DateToStr_(Dat : TDate): String;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fopl: TFopl;

implementation

uses Udm, Umain;

{$R *.dfm}
procedure TFopl.Button1Click(Sender: TObject);
begin
fdm.Queryopl.Close;
fdm.ins_opl.Parameters.ParamValues['@id_usl']:=DBLookupComboBox1.KeyValue;
fdm.ins_opl.Parameters.ParamValues['@date_opl']:=DateToStr_(DateTimePicker1.Date);
fdm.ins_opl.Parameters.ParamValues['@kol_d']:=strtoint(LabeledEdit1.Text);
fdm.ins_opl.Parameters.ParamValues['@form_opl']:=LabeledEdit2.Text;
fdm.ins_opl.Parameters.ParamValues['@total_s']:=StrToFloat(LabeledEdit3.Text);
fdm.ins_opl.Parameters.ParamValues['@dogovor_id']:=DBLookupComboBox2.KeyValue;
fdm.ins_opl.ExecProc;
fdm.Queryopl.Open;
end;

function TFopl.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;


procedure TFopl.FormActivate(Sender: TObject);
begin
fdm.Querydog.Open;
fdm.QueryUsl.Open;
fdm.Queryopl.Open;
end;

procedure TFopl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdm.Querydog.Close;
fdm.QueryUsl.Close;
fdm.Queryopl.Close;
end;

end.

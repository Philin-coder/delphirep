unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, DBCtrls,DateUtils;

type
  TFmain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Button2: TButton;
    GroupBox6: TGroupBox;
    LabeledEdit2: TLabeledEdit;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    DBGrid3: TDBGrid;
    Button3: TButton;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet4: TTabSheet;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    DBGrid4: TDBGrid;
    Button5: TButton;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    Label3: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label4: TLabel;
    DateTimePicker3: TDateTimePicker;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    TabSheet5: TTabSheet;
    GroupBox13: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox14: TGroupBox;
    Button4: TButton;
    DBGrid5: TDBGrid;
    Label6: TLabel;
    DateTimePicker4: TDateTimePicker;
    LabeledEdit14: TLabeledEdit;
    Label7: TLabel;
    DateTimePicker5: TDateTimePicker;
    Label8: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    LabeledEdit15: TLabeledEdit;
    Label9: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label10: TLabel;
    DateTimePicker6: TDateTimePicker;
    TabSheet6: TTabSheet;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    DBGrid6: TDBGrid;
    Label11: TLabel;
    Label12: TLabel;
    DateTimePicker7: TDateTimePicker;
    DateTimePicker8: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    function DateToStr_(Dat : TDate): String;
    procedure DateTimePicker7Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;

implementation

uses Ureg, Udm;

{$R *.dfm}
procedure TFmain.DateTimePicker7Change(Sender: TObject);
begin
fdm.Queryreport.Close;
fDM.Queryreport.SQL.Clear;
fdm.Queryreport.SQL.Text:='exec report1 '+QuotedStr(DateToStr_(DateTimePicker7.Date))+','
+QuotedStr(DateToStr_(DateTimePicker8.Date));
fdm.Queryreport.ExecSQL;
fdm.Queryreport.Open;

end;

function Tfmain.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;

procedure TFmain.Button1Click(Sender: TObject);
begin
fdm.Queryprich.Close;
fdm.ins_prich.Parameters.ParamValues['@prich_naim']:=LabeledEdit1.Text;
fdm.ins_prich.ExecProc;
fDM.Queryprich.Open;
fdm.Queryreport.Open;
end;

procedure TFmain.Button2Click(Sender: TObject);
begin
fdm.Querytype_class.Close;
fdm.ins_klass_type.Parameters.ParamValues['@naim_tip']:=LabeledEdit2.Text;
fdm.ins_klass_type.ExecProc;
fdm.Querytype_class.Open;
end;

procedure TFmain.Button3Click(Sender: TObject);
begin
fdm.Queryklass.Close;
fdm.ins_klass.Parameters.ParamByName('@klass_naim').Value:=LabeledEdit5.Text;
fdm.ins_klass.Parameters.ParamByName('@Klass_r').Value:=LabeledEdit4.Text;
fdm.ins_klass.Parameters.ParamByName('@kol_m').Value:=StrToInt(LabeledEdit3.Text);
fdm.ins_klass.Parameters.ParamByName('@TYpe_claass_id').Value:=DBLookupComboBox1.KeyValue;
fdm.ins_klass.ExecProc;
fdm.Queryklass.Open;
end;

procedure TFmain.Button4Click(Sender: TObject);
begin
fdm.Queryprikaz.Close;
fdm.ins_prikaz.Parameters.ParamValues['@prikaz_date']:=DateToStr_(DateTimePicker4.Date);
fdm.ins_prikaz.Parameters.ParamValues['@prikaz_type']:=LabeledEdit14.Text;
fdm.ins_prikaz.Parameters.ParamValues['@date_k']:=DateToStr_(DateTimePicker5.Date);
fdm.ins_prikaz.Parameters.ParamValues['@uchen_id']:=DBLookupComboBox3.KeyValue;
fdm.ins_prikaz.Parameters.ParamValues['@prikaz_sod']:=LabeledEdit15.Text;
fdm.ins_prikaz.Parameters.ParamValues['@prich_id']:=DBLookupComboBox4.KeyValue;
fdm.ins_prikaz.Parameters.ParamValues['@data_n']:=DateToStr_(DateTimePicker6.Date);
fdm.ins_prikaz.ExecProc;
fdm.Queryprikaz.Open;

end;

procedure TFmain.Button5Click(Sender: TObject);
begin
fdm.Queryuchen.Close;
fdm.ins_uchen.Parameters.ParamValues['@fio']:=LabeledEdit6.Text;
fdm.ins_uchen.Parameters.ParamValues['@phone_m']:= STRTOINT(LabeledEdit7.Text);
FDM.ins_uchen.Parameters.ParamValues['@adr']:=LabeledEdit8.Text;
FDM.ins_uchen.Parameters.ParamValues['@DATAR']:=DateToStr_(DateTimePicker1.Date);
FDM.ins_uchen.Parameters.ParamValues['@pol']:=LabeledEdit9.Text;
FDM.ins_uchen.Parameters.ParamValues['@health_group']:=LabeledEdit11.Text;
FDM.ins_uchen.Parameters.ParamValues['@Datap']:=DateToStr_(DateTimePicker2.Date);
FDM.ins_uchen.Parameters.ParamValues['@datav']:=DateToStr_(DateTimePicker3.Date);
FDM.ins_uchen.Parameters.ParamValues['@fio_m']:=LabeledEdit11.Text;
FDM.ins_uchen.Parameters.ParamValues['@citizen']:=LabeledEdit12.Text;
FDM.ins_uchen.Parameters.ParamValues['@phone_o']:=StrToInt(LabeledEdit13.Text);
FDM.ins_uchen.Parameters.ParamValues['@klass_id']:=DBLookupComboBox2.KeyValue;
FDM.ins_uchen.ExecProc;
fdm.Queryuchen.Open;

end;

procedure TFmain.FormActivate(Sender: TObject);

begin
fdm.Queryprich.Open;
fDM.Querytype_class.Open;
fDM.Queryklass.Open;
fdm.Queryuchen.Open;
fdm.Queryprikaz.Open;
end;

procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdm.Queryprich.Close;
fDM.Querytype_class.Close;
fDM.Queryklass.Close;
fdm.Queryuchen.Close;
fdm.Queryprikaz.Close;
end;

procedure TFmain.FormShow(Sender: TObject);
begin
Form1.ShowModal;
end;

end.

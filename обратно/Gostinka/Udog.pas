unit Udog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids,DateUtils;

type
  TFdog = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    Label3: TLabel;
    DateTimePicker3: TDateTimePicker;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DateTimePicker4: TDateTimePicker;
    LabeledEdit8: TLabeledEdit;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Button2: TButton;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    function DateToStr_(Dat : TDate): String;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdog: TFdog;

implementation

uses Udm, Umain;

{$R *.dfm}
function TFdog.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;

procedure TFdog.Button2Click(Sender: TObject);
begin
fdm.Querydog.Close;
fdm.ins_dog.Parameters.ParamValues['@guest_fio']:=LabeledEdit1.Text;
fdm.ins_dog.Parameters.ParamValues['@guest_datar']:=DateToStr_(  (DateTimePicker1.Date));
fdm.ins_dog.Parameters.ParamValues['@guest_passp_n']:=StrToInt(LabeledEdit2.Text);
fdm.ins_dog.Parameters.ParamValues['@guest_passp_s']:=StrToInt(LabeledEdit3.Text);
fdm.ins_dog.Parameters.ParamValues['@guest_dvp']:=DateToStr_(DateTimePicker2.Date);
fdm.ins_dog.Parameters.ParamValues['@guest_kem_vid']:=LabeledEdit4.Text;
fdm.ins_dog.Parameters.ParamValues['@guest_m_r']:=LabeledEdit5.Text;
fdm.ins_dog.Parameters.ParamValues['@guest_data_reg']:=DateToStr_(DateTimePicker3.Date);
fdm.ins_dog.Parameters.ParamValues['@guest_pol']:=LabeledEdit6.Text;
fdm.ins_dog.Parameters.ParamValues['@guest_cel_p']:=LabeledEdit7.Text;
fdm.ins_dog.Parameters.ParamValues['@nomer_id']:=DBLookupComboBox1.KeyValue;
fdm.ins_dog.Parameters.ParamValues['@date_dog']:=DateToStr_(DateTimePicker4.Date);
fdm.ins_dog.Parameters.ParamValues['@srok_d']:=StrToFloat(LabeledEdit8.Text);
fdm.ins_dog.Parameters.ParamValues['@admin_id']:=DBLookupComboBox2.KeyValue;
fdm.ins_dog.ExecProc;
ShowMessage(fdm.Querydog.SQL.Text);
fdm.Querydog.Open;
ShowMessage('Изменения внесены');
end;

procedure TFdog.FormActivate(Sender: TObject);
begin
fdm.Queryadm.Open;
fdm.Querynom.Open;
fdm.Querydog.Open;
end;

procedure TFdog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdm.Queryadm.Close;
fdm.Querynom.Close;
fdm.Querydog.Close;
end;

end.

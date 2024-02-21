unit ins_zadan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls;

type
  TFins_zadan = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    LabeledEdit2: TLabeledEdit;
    GroupBox3: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DateTimePicker2: TDateTimePicker;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label6: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fins_zadan: TFins_zadan;

implementation

uses fdm, main;

{$R *.dfm}

procedure TFins_zadan.Button1Click(Sender: TObject);
begin
DM1.ins_zadanie.Parameters.ParamValues['@Sr_vip']:=DateToStr(DateTimePicker1.Date);
DM1.ins_zadanie.Parameters.ParamValues['@N_Rab']:=DBLookupComboBox1.KeyValue;
dm1.ins_zadanie.Parameters.ParamValues['@st_rab']:=LabeledEdit2.Text;
dm1.ins_zadanie.Parameters.ParamValues['@Data_nash']:=DateToStr(DateTimePicker2.Date);
//dm1.ins_zadanie.Parameters.ParamValues['@Date_fakt']:=DateToStr(DateTimePicker3.Date);
dm1.ins_zadanie.Parameters.ParamValues['@N_Proekta']:=DBLookupComboBox2.KeyValue;
dm1.ins_zadanie.Parameters.ParamValues['@N_Work']:=DBLookupComboBox3.KeyValue;
dm1.ins_zadanie.ExecProc;
DM1.Queryzadanie.Close;
DM1.Queryzadanie.Open;
ShowMessage('Изменения внесены');
end;

procedure TFins_zadan.FormActivate(Sender: TObject);
begin
dm1.Querywoker.Open;
DM1.Querywork.Open;
DM1.Queryproect.Open;
end;

procedure TFins_zadan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm1.Querywoker.close;
DM1.Querywork.close;
DM1.Queryproect.close;
end;

end.

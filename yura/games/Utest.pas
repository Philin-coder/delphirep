unit Utest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, DBCtrls, ExtCtrls;

type
  TFtest = class(TForm)
    Panel1: TPanel;
    LabeledEdit1: TLabeledEdit;
    Должность: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    LabeledEdit2: TLabeledEdit;
    DateTimePicker2: TDateTimePicker;
    Panel2: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    LabeledEdit4: TLabeledEdit;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ftest: TFtest;

implementation

uses fdm, main;

{$R *.dfm}

procedure TFtest.Button1Click(Sender: TObject);
begin
  DM1.Querytest.Close;
    DM1.ins_rabotnic.Parameters.ParamValues['@Fio']:=LabeledEdit1.Text;
    DM1.ins_rabotnic.Parameters.ParamValues['@N_Dol']:=DM1.Querydol.FieldByName('N_Dol').AsString;
    dm1.ins_rabotnic.Parameters.ParamValues['@Iphone']:=LabeledEdit2.Text;
    DM1.ins_rabotnic.Parameters.ParamValues['@St_rab']:=LabeledEdit4.Text;
    DM1.ins_rabotnic.ExecProc;
    dm1.ins_etap.Parameters.ParamValues['@Nam_etap']:=DM1.Queryetap.FieldByName('N_etap').AsString;
    dm1.ins_etap.Parameters.ParamValues['@T_days']:=DateToStr(DateTimePicker1.Date);
    DM1.ins_etap.Parameters.ParamValues['@N_Etap']:=DBLookupComboBox2.KeyValue;
    DM1.ins_etap.ExecProc;


  dm1.Querytest.Open;
end;

procedure TFtest.FormActivate(Sender: TObject);
begin
DM1.Querywork.Open;
DM1.Queryetap.Open;
DM1.Querydol.Open;
dm1.Queryproect.Open;
DM1.Querytest.Open;
end;

procedure TFtest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.Querywork.Close;
DM1.Queryetap.Close;
DM1.Querydol.Close;
dm1.Queryproect.Close;
DM1.Querytest.close;
end;

end.

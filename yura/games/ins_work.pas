unit ins_work;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFins_work = class(TForm)
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    GroupBox3: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fins_work: TFins_work;

implementation

uses fdm;

{$R *.dfm}

procedure TFins_work.Button1Click(Sender: TObject);
begin
DM1.ins_work.Parameters.ParamValues['@Nam_work']:=LabeledEdit1.Text;
DM1.ins_work.Parameters.ParamValues['@T_days']:=DateToStr(DateTimePicker1.Date);
DM1.ins_work.Parameters.ParamValues['@N_Etap']:=DBLookupComboBox1.KeyValue;
DM1.ins_work.ExecProc;
DM1.Querywork.Close;
DM1.Querywork.Open;
ShowMessage('изменения внесены');
end;

procedure TFins_work.FormActivate(Sender: TObject);
begin
dm1.Querywork.Open;
DM1.Queryetap.Open;
end;

procedure TFins_work.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm1.Querywork.close;
DM1.Queryetap.close;
end;

end.

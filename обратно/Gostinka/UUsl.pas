unit UUsl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFUsl = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsl: TFUsl;

implementation

uses Udm, Umain;

{$R *.dfm}

procedure TFUsl.Button1Click(Sender: TObject);
begin
fdm.QueryUsl.Close;
fdm.ins_usluga.Parameters.ParamValues['@usl_naim']:=LabeledEdit1.Text;
fdm.ins_usluga.Parameters.ParamValues['@usl_stoim']:=StrToFloat(LabeledEdit2.Text);
fdm.ins_usluga.Parameters.ParamValues['@usl_ed_izm']:=LabeledEdit3.Text;
fdm.ins_usluga.ExecProc;
fdm.QueryUsl.Open;
ShowMessage('услуга долбавлена');
end;

procedure TFUsl.FormActivate(Sender: TObject);
begin
fdm.QueryUsl.Open;
end;

procedure TFUsl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdm.QueryUsl.Close;
end;

end.

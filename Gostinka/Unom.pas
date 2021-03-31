unit Unom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFnom = class(TForm)
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fnom: TFnom;

implementation

uses Udm, Umain;

{$R *.dfm}

procedure TFnom.Button1Click(Sender: TObject);
begin
fdm.Querynom.Close;
fdm.ins_nomer.Parameters.ParamValues['@nomer_cat']:=LabeledEdit1.Text;
fdm.ins_nomer.Parameters.ParamValues['@nomer_st']:=StrToFloat( LabeledEdit2.Text);
fdm.ins_nomer.Parameters.ParamValues['@nomer_status']:=LabeledEdit3.Text;
fdm.ins_nomer.ExecProc;
fdm.Querynom.Open;
ShowMessage('��������� �������');
end;

procedure TFnom.FormActivate(Sender: TObject);
begin
fdm.Querynom.Open;
end;

procedure TFnom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdm.Querynom.Close;
end;

end.

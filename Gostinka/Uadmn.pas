unit Uadmn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFadmin = class(TForm)
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
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
  Fadmin: TFadmin;

implementation

uses Umain, Udm;

{$R *.dfm}

procedure TFadmin.Button1Click(Sender: TObject);
begin
fdm.Queryadm.Close;
fdm.ins_adm.Parameters.ParamValues['@admin_fio']:=LabeledEdit1.Text;
fdm.ins_adm.Parameters.ParamValues['@admin_smena']:=LabeledEdit2.Text;
fdm.ins_adm.ExecProc;
fdm.Queryadm.Open;
ShowMessage('Изменения внесены');
end;

procedure TFadmin.FormActivate(Sender: TObject);
begin
fdm.Queryadm.Open;
end;

procedure TFadmin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdm.Queryadm.Close;
end;

end.

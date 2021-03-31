unit ins_dol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TFins_dol = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Button1: TButton;
    DBGrid1: TDBGrid;
    LabeledEdit1: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fins_dol: TFins_dol;

implementation

uses main, fdm;

{$R *.dfm}

procedure TFins_dol.Button1Click(Sender: TObject);
begin
DM1.ins_dol.Parameters.ParamValues['@Nam_dol']:=LabeledEdit1.Text;
DM1.ins_dol.ExecProc;
DM1.Querydol.Close;
DM1.Querydol.Open;
ShowMessage('изменения внесены');
end;

procedure TFins_dol.FormActivate(Sender: TObject);
begin
DM1.Querydol.Open;
end;

procedure TFins_dol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.Querydol.close;
end;

end.

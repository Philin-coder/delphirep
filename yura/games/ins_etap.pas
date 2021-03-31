unit ins_etap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TFins_etap = class(TForm)
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    GroupBox3: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fins_etap: TFins_etap;

implementation

uses main, fdm;

{$R *.dfm}

procedure TFins_etap.Button1Click(Sender: TObject);
begin
DM1.ins_etap.Parameters.ParamValues['@Nam_etap']:=LabeledEdit1.Text;
DM1.ins_etap.ExecProc;
DM1.Queryetap.Close;
DM1.Queryetap.Open;
ShowMessage('изменения внесены');

end;

procedure TFins_etap.FormActivate(Sender: TObject);
begin
DM1.Queryetap.Open;
end;

procedure TFins_etap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.Queryetap.Close;
end;

end.

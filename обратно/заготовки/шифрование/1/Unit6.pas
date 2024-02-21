unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm6 = class(TForm)
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Button2: TButton;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses fdm;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
dm.shifr.Parameters.ParamValues['@KOD']:=LabeledEdit1.Text;
dm.shifr.ExecProc;
dm.Queryshifr.Close;
dm.Queryshifr.Open;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
dm.Querypr.Close;
dm.Queryshifr.SQL.Clear;
dm.Querypr.SQL.Text:='exec locker';
dm.Querypr.Open;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
     dm.Queryshifr.Open;
     dm.Querypr.Open;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.Queryshifr.Close;
dm.Querypr.Close;
end;

end.

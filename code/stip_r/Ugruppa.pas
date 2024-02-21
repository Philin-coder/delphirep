unit Ugruppa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFgruppa = class(TForm)
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fgruppa: TFgruppa;

implementation

uses Udm, Umain;

{$R *.dfm}

procedure TFgruppa.Button1Click(Sender: TObject);
begin
dm.Query_grupp.Active:=False;
dm.Query_grupp.SQL.Clear;
dm.Query_grupp.SQL.Text:='insert into groupp(groupp.naim,groupp.spec) values('+QuotedStr(LabeledEdit1.Text)+','+QuotedStr(LabeledEdit2.Text)+')';
dm.Query_grupp.ExecSQL;
dm.Query_grupp.SQL.Text:='select groupp.n_gr,groupp.naim,groupp.spec from groupp';
dm.Query_grupp.Close;
dm.Query_grupp.Open;
dm.Query_grupp.Active:=True;
end;

procedure TFgruppa.FormActivate(Sender: TObject);
begin
dm.Query_grupp.Open;
Fgruppa.DBGrid1.ReadOnly:=True;
end;

procedure TFgruppa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.Query_grupp.Close;
end;

procedure TFgruppa.FormCreate(Sender: TObject);
begin
with Fgruppa do
   begin
    Width:=1043;
    Height:=613;
    Position:=poScreenCenter;
  end;

end;

end.

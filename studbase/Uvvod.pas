unit Uvvod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, ShellAPI, DBCtrls;

type
  Tvvod = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    LabeledEdit2: TLabeledEdit;
    GroupBox5: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox6: TGroupBox;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  vvod: Tvvod;

implementation

uses fmain, fdm;

{$R *.dfm}

procedure Tvvod.Button1Click(Sender: TObject);
begin
dm1.Queryspc.UpdateBatch();
end;

procedure Tvvod.Button2Click(Sender: TObject);
begin
DM1.Queryspc.CancelBatch();
end;

procedure Tvvod.Button3Click(Sender: TObject);
begin
DM1.ins_spec.Parameters.ParamByName('@naimspec').Value:=LabeledEdit1.Text;
DM1.ins_spec.ExecProc;
dm1.Queryspc.Close;
dm1.Queryspc.Open;

end;

procedure Tvvod.FormActivate(Sender: TObject);
begin
dm1.Queryspc.Open;
DM1.Querygruppa.Open;
end;

procedure Tvvod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.Queryspc.Close;
DM1.Querygruppa.close;
end;

end.

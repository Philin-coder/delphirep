unit Un_pfor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TFrm_pfor = class(TForm)
    PfroPage: TPageControl;
    SelPage: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    ConditionBox: TGroupBox;
    DataBox: TGroupBox;
    ButtonoBox: TGroupBox;
    DataGrid: TDBGrid;
    SelButton: TButton;
    selPanel: TPanel;
    Radio_prof_name: TRadioButton;
    Radio_prof_grupp: TRadioButton;
    RadioReset: TRadioButton;
    condPanel: TPanel;
    CondEdit: TLabeledEdit;
    fndPanel: TPanel;
    fndEdit: TLabeledEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pfor: TFrm_pfor;

implementation

uses Un_dm, Unmain;

{$R *.dfm}

procedure TFrm_pfor.FormActivate(Sender: TObject);
begin
with Frm_pfor do
begin
  width:=1024;
  height:=768;
end;
dm.ProfQuery.Open;
end;

procedure TFrm_pfor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.ProfQuery.Close;
end;

end.

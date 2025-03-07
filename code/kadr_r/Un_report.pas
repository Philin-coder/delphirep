unit Un_report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TFrm_report = class(TForm)
    reportPage: TPageControl;
    prof_list_tab: TTabSheet;
    reportbtnPanel: TPanel;
    reportButton: TButton;
    reportGid: TDBGrid;
    procedure reportButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_report: TFrm_report;

implementation

uses Unmain, Un_dm;

{$R *.dfm}

procedure TFrm_report.FormActivate(Sender: TObject);
begin
dm.ProfQuery.Open;
dm.reportQuery.Open;
end;

procedure TFrm_report.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.ProfQuery.Close;
dm.reportQuery.Close;
end;

procedure TFrm_report.reportButtonClick(Sender: TObject);
begin
dm.reportQuery.Open;
dm.reportQuery.SQL.Text:='select id_prof, prof_name, prof_group'+' '+
		'from prof where 1=1';
dm.reportQuery.ExecSQL;
dm.reportQuery. Close;
dm.reportQuery.Open
end;

end.

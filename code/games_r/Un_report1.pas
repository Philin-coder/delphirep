unit Un_report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,ADODB, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls,ActiveX,
  DBCtrls, Mask;

type
  TFrm_report = class(TForm)
    rpPC: TPageControl;
    rplTab: TTabSheet;
    rp_del_data_Box: TGroupBox;
    rp_btn_Box: TGroupBox;
    rp_ipp_Box: TGroupBox;
    rp_btn: TButton;
    rp_b_lbl: TStaticText;
    rpGrid: TDBGrid;
    rp_date_b_inp: TDateTimePicker;
    rp_e_lbl: TStaticText;
    rp_date_e_inp: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rp_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_report: TFrm_report;
  free_st:Integer;
  fire_st:Integer;
implementation

uses Un_dm, Un_func;

{$R *.dfm}



procedure TFrm_report.FormActivate(Sender: TObject);
begin
  dm.reportQuery.Open;
  dm.taskQuery.Open;
  dm.workQuery.Open;
  dm.proektQuery.Open;
  dm.workerQuery.Open;
  AdjustDBGridColumnWidths('Frm_report',6000, 10);
end;

procedure TFrm_report.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_report.FormCreate(Sender: TObject);
begin
  UpdateFormShowHint('Frm_report');
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeComponentAnchors(Self);
  LoadFormState(Self);
end;

procedure TFrm_report.rp_btnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise Exception.Create('���������� � ����� �� �����������');

    with DM.report1 do
    begin
      Close;
           Parameters.ParamByName('@d1').Value
           :=rp_date_b_inp.Date;
           Parameters.ParamByName('@d2').Value
           :=rp_date_e_inp.Date;
      Open;
       DM.reportQuery.Recordset:=dm.report1.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('������: ' + E.Message);
    on E: Exception do
      ShowMessage('������: ' + E.Message);
  end;

end;

end.

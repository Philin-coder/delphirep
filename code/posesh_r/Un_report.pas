unit Un_report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, ExtCtrls,adodb,db, DBCtrls;

type
  TFrm_report = class(TForm)
    reportPC: TPageControl;
    DelTab: TTabSheet;
    rp_inp_Box: TGroupBox;
    rpl_data_b_lBL: TStaticText;
    rp_btn_Box: TGroupBox;
    rpl_btn: TButton;
    rp_data_Box: TGroupBox;
    rp_data_Grid: TDBGrid;
    rpl_data_b_inp: TDateTimePicker;
    rpl_data_e_lBL: TStaticText;
    rpl_data_e_inp: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rpl_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_report: TFrm_report;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_report.FormActivate(Sender: TObject);
begin
  dm.teacherQuery.Open;
  dm.subjQuery.Open;
  dm.reportQuery.Open;
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

procedure TFrm_report.rpl_btnClick(Sender: TObject);
begin
    try
    if not DM.Connection.Connected then
      raise Exception.Create('Соединение с базой не установлено');

    with DM.report1 do
    begin
      Close;
           Parameters.ParamByName('@d1').Value
           :=rpl_data_b_inp.Date;
           Parameters.ParamByName('@d2').Value
           :=rpl_data_e_inp.Date;
      Open;
       DM.reportQuery.Recordset:=dm.report1.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;

end;

end.

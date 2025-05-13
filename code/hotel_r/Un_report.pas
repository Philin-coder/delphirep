unit Un_report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls,adodb,db, DBCtrls,jpeg;

type
  TFrm_report = class(TForm)
    rpPC: TPageControl;
    delTab: TTabSheet;
    rp_inpBox: TGroupBox;
    rp_dataBox: TGroupBox;
    rp_btn_Box: TGroupBox;
    rpl_d_btn: TButton;
    rp_data_b_lbl: TStaticText;
    rp_grd: TDBGrid;
    rp_data_e_lbl: TStaticText;
    rp_date_b_inp: TDateTimePicker;
    rp_date_e_inp: TDateTimePicker;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure rpl_d_btnClick(Sender: TObject);
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
  dm.reportQuery.Open;
  dm.dogQuery.Open;
  dm.nom_query.Open;
  dm.admQuery.Open;
  AdjustDBGridColumnWidths('Frm_report',6000, 10);
end;

procedure TFrm_report.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_report.FormCreate(Sender: TObject);
begin
  Frm_report.KeyPreview:=true;
  Frm_report.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);
end;

procedure TFrm_report.rpl_d_btnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise Exception.Create('Соединение с базой не установлено');

    with DM.report1 do
    begin
      Close;
           Parameters.ParamByName('@d1').Value
           :=DateToStr_(rp_date_b_inp.Date);
           Parameters.ParamByName('@d2').Value
           :=DateToStr_(rp_date_e_inp.Date);
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

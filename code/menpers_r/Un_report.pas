unit Un_report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids,DB,adodb, DBCtrls, Mask;

type
  TFrm_report = class(TForm)
    rpPC: TPageControl;
    updTab: TTabSheet;
    rp_data_Box: TGroupBox;
    rp_upd_Grd: TDBGrid;
    rp_upd_btn_Box: TGroupBox;
    rp_sel_btn: TButton;
    rp_upd_inp_Box: TGroupBox;
    rp1_data_b_lbl: TStaticText;
    rp1_data_e_inp: TDateTimePicker;
    rp1_data_e_lbl: TStaticText;
    delTab: TTabSheet;
    rp2_Usl_data_box: TGroupBox;
    Del_usl_grd: TDBGrid;
    rp2_Usl_inp_box: TGroupBox;
    rp2_Usl_btn_box: TGroupBox;
    rp2_Usl_btn: TButton;
    rp1_data_b_inp: TDateTimePicker;
    rp2_datab_lbl: TStaticText;
    rp2_data_b_inp: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rp_sel_btnClick(Sender: TObject);
    procedure rp2_Usl_btnClick(Sender: TObject);
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
  dm.uslQuery.Open;
  dm.userQuery.Open;
  dm.manQuery.Open;
  dm.klientQuery.Open;
  dm.report1Query.Open;
  dm.report2Query.Open;
  AdjustDBGridColumnWidths('Frm_report',6000, 10);
  rp_upd_Grd.Columns[0].Title.Caption:='����� ����������';
  rp_upd_Grd.Columns[1].Title.Caption:='��������';
  rp_upd_Grd.Columns[2].Title.Caption:='���� ��������';
  rp_upd_Grd.Columns[3].Title.Caption:='����';
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

procedure TFrm_report.rp2_Usl_btnClick(Sender: TObject);
begin
      try
    if not DM.Connection.Connected then
      raise Exception.Create('���������� � ����� �� �����������');
    with DM.report2 do
    begin
      Close;
           Parameters.ParamByName('@d1').Value
           :=DateToStr_(rp2_data_b_inp.Date);

      Open;
       DM.report2Query.Recordset:=dm.report2.Recordset;

    end;
  except
    on E: EDatabaseError do
      ShowMessage('������: ' + E.Message);
    on E: Exception do
      ShowMessage('������: ' + E.Message);
  end;



end;

procedure TFrm_report.rp_sel_btnClick(Sender: TObject);
var i:Integer;
begin
   for I := 0 to rp_upd_Grd.Columns.Count - 1 do
   begin
  with  rp_upd_Grd do
  begin
  Columns[i].Title.Caption:='';
  end;
   end;
   try
    if not DM.Connection.Connected then
      raise Exception.Create('���������� � ����� �� �����������');
    with DM.report1 do
    begin
      Close;
           Parameters.ParamByName('@d1').Value
           :=DateToStr_(rp1_data_b_inp.Date);
           Parameters.ParamByName('@d2').Value
           :=DateToStr_(rp1_data_e_inp.Date);
      Open;
       DM.report1Query.Recordset:=dm.report1.Recordset;
       rp_upd_Grd.Columns[0].Title.Caption:='���';
       rp_upd_Grd.Columns[1].Title.Caption:='��������';
       rp_upd_Grd.Columns[2].Title.Caption:='�������';
       rp_upd_Grd.Columns[3].Title.Caption:='�������� ������';
       rp_upd_Grd.Columns[4].Title.Caption:='����';
       rp_upd_Grd.Columns[5].Title.Caption:='���� ��������';
       rp_upd_Grd.Columns[6].Title.Caption:='�������� �����';
       rp_upd_Grd.Columns[7].Title.Caption:='�������� �����';
       rp_upd_Grd.Columns[8].Title.Caption:='��������';
    end;
  except
    on E: EDatabaseError do
      ShowMessage('������: ' + E.Message);
    on E: Exception do
      ShowMessage('������: ' + E.Message);
  end;
end;

end.

unit Un_report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,db,adodb, ComCtrls, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TFrm_report = class(TForm)
    rpPC: TPageControl;
    delTab: TTabSheet;
    MOdeldataBox: TGroupBox;
    rpobtn_box: TGroupBox;
    rpBtn: TButton;
    rpGrd: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rpBtnClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_report: TFrm_report;

implementation

uses Un_dm, Un_func, Un_man, Un_hlp;

{$R *.dfm}

procedure TFrm_report.FormActivate(Sender: TObject);
begin
  dm.goodQuery.Open;
  dm.m_orderQuery.Open;
  dm.reportQuery.Open;
    rpGrd.Columns[0].Title.Caption:='Номер порядковый';
    rpGrd.Columns[1].Title.Caption:='Адрес';
    rpGrd.Columns[2].Title.Caption:='Количество';
    rpGrd.Columns[3].Title.Caption:='Способ оплаты';
    rpGrd.Columns[4].Title.Caption:='Способ доставки';
    rpGrd.Columns[5].Title.Caption:='Отправлен';
    rpGrd.Columns[6].Title.Caption:='Оплачен';
    rpGrd.Columns[7].Title.Caption:='e-mail';
    rpGrd.Columns[8].Title.Caption:='Товар';
    rpGrd.Columns[9].Title.Caption:='условия';
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

procedure TFrm_report.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=112) then
begin
 try
UpdateFormProperties('Frm_help', 'Форма работы со справкой',
clBtnFace, 1024, 768);
Frm_help.ShowModal;
except
Frm_help.Free;
raise;
end;

end;

end;

procedure TFrm_report.rpBtnClick(Sender: TObject);
begin
try
    if not DM.Connection.Connected then
      raise Exception.Create('соединегие с базой не установлено');

    with DM.REPORT1 do
    begin
      Close;
      ExecProc;
      Open;
       DM.reportQuery.Recordset:=dm.REPORT1.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
  rpGrd.Columns[0].Title.Caption:='Номер порядковый';
    rpGrd.Columns[1].Title.Caption:='Адрес';
    rpGrd.Columns[2].Title.Caption:='Количество';
    rpGrd.Columns[3].Title.Caption:='Способ оплаты';
    rpGrd.Columns[4].Title.Caption:='Способ доставки';
    rpGrd.Columns[5].Title.Caption:='Отправлен';
    rpGrd.Columns[6].Title.Caption:='Оплачен';
    rpGrd.Columns[7].Title.Caption:='e-mail';
    rpGrd.Columns[8].Title.Caption:='Товар';
    rpGrd.Columns[9].Title.Caption:='Условия';
    rpGrd.Columns[10].Title.Caption:='Уплочено';

end;


end.

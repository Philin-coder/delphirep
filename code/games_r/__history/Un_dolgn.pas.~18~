unit Un_dolgn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,ADODB, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls,ActiveX,
  DBCtrls;

type
  TFrm_dol = class(TForm)
    dolPC: TPageControl;
    SelTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    dolcondBox: TGroupBox;
    dolGrouperBox: TGroupBox;
    doldataBox: TGroupBox;
    dolbtnBox: TGroupBox;
    dol_sel_Btn: TButton;
    dol_selGrd: TDBGrid;
    dol_cond_Edit: TLabeledEdit;
    dol_fnd_Edit: TLabeledEdit;
    dol_fio_Radio: TRadioButton;
    dol_reset_Radio: TRadioButton;
    men_data_Box: TGroupBox;
    men_btn_Box: TGroupBox;
    men_inp_Box: TGroupBox;
    men_ins_Btn: TButton;
    ins_men_fio_inp: TLabeledEdit;
    men_upd_data_Box: TGroupBox;
    men_upd_inpBox: TGroupBox;
    men_upd_btnBox: TGroupBox;
    men_upd_btn: TButton;
    men_upd_e_lbl: TStaticText;
    men_upd_u_dbl: TDBLookupComboBox;
    men_del_data_Box: TGroupBox;
    men_del_btn_Box: TGroupBox;
    men_del_ipp_Box: TGroupBox;
    men_del_btn: TButton;
    men_del_e_lbl: TStaticText;
    men_del_e_dbl: TDBLookupComboBox;
    dol_nam_dol_Radio: TRadioButton;
    men_u_fio_inp: TLabeledEdit;
    ins_menGrd: TDBGrid;
    ins_men_log_lbl: TStaticText;
    ins_men_log_dbl: TDBLookupComboBox;
    men_upd_Grd: TDBGrid;
    men_del_Grd: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dol_sel_BtnClick(Sender: TObject);
    procedure dol_fnd_EditKeyPress(Sender: TObject; var Key: Char);
    procedure dol_fio_RadioClick(Sender: TObject);
    procedure dol_nam_dol_RadioClick(Sender: TObject);
    procedure dol_reset_RadioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_dol: TFrm_dol;

implementation

uses Un_dm, Un_func;

{$R *.dfm}



procedure TFrm_dol.dol_fio_RadioClick(Sender: TObject);
begin
   if  dol_fio_Radio.Checked=true then
  begin
    try
     with dm.dolQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
       'select'+' '+
   'Dolshnost.N_Dol,'+' '+
   'Dolshnost.Nam_dol,'+' '+
   'manager.fio'+' '+
   'from Dolshnost'+' '+
   'inner join manager on manager.Id_manager=Dolshnost.Id_manager'+' '+
    'where 1=1'+' '+
     'order by  manager.fio asc';
      Open;
     end;
    except
        on E: EDatabaseError do
  begin
    ShowMessage('Ошибка базы данных: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('Ошибка Ole: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E);
  end;
end;
end;
end;

procedure TFrm_dol.dol_fnd_EditKeyPress(Sender: TObject; var Key: Char);
begin
  try
   dm.dolQuery.SQL.Text:=
   'select'+' '+
   'Dolshnost.N_Dol,'+' '+
   'Dolshnost.Nam_dol,'+' '+
   'manager.fio'+' '+
   'from Dolshnost'+' '+
   'inner join manager on manager.Id_manager=Dolshnost.Id_manager'+' '+
    'where 1=1'+' '+
    'and manager.fio like'+
   QuotedStr(Concat(dol_fnd_Edit.Text,#37));
   dm.dolQuery.close;
   dm.dolQuery.Open;
except
   on E: EDatabaseError do
  begin
    ShowMessage('Ошибка базы данных: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('Ошибка Ole: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка : ' + E.Message);
    HandleException(E);
end;
end;
end;

procedure TFrm_dol.dol_nam_dol_RadioClick(Sender: TObject);
begin
   if  dol_nam_dol_Radio.Checked=true then
  begin
    try
     with dm.dolQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
      'select'+' '+
   'Dolshnost.N_Dol,'+' '+
   'Dolshnost.Nam_dol,'+' '+
   'manager.fio'+' '+
   'from Dolshnost'+' '+
   'inner join manager on manager.Id_manager=Dolshnost.Id_manager'+' '+
    'where 1=1'+' '+
     'order by  Dolshnost.Nam_dol asc';
      Open;
     end;
    except
        on E: EDatabaseError do
  begin
    ShowMessage('Ошибка базы ланных: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('Ошибка  Ole: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E);
  end;
end;
end;
end;

procedure TFrm_dol.dol_reset_RadioClick(Sender: TObject);
var i,j,c:Integer;
begin
   try
  if dol_reset_Radio.Checked then
  begin
    with Frm_dol do
    begin
      for I := 0 to ComponentCount - 1 do
      begin
        if Components[I] is TLabeledEdit then
        begin
          (Components[I] as TLabeledEdit).Clear;
        end;
      end;
      for c := 0 to ComponentCount - 1 do
      begin
        if Components[c] is TCheckBox then
        begin
          (Components[c] as TCheckBox).Checked := False;
        end;
      end;
      for j := 0 to ComponentCount - 1 do
      begin
        if Components[j] is TRadioButton then
        begin
          (Components[j] as TRadioButton).Checked := False;
        end;
      end;
    end;
    with dm.dolQuery do
    begin
      Close;
      sql.Clear;
      sql.Text :=
 'select'+' '+
   'Dolshnost.N_Dol,'+' '+
   'Dolshnost.Nam_dol,'+' '+
   'manager.fio'+' '+
   'from Dolshnost'+' '+
   'inner join manager on manager.Id_manager=Dolshnost.Id_manager'+' '+
    'where 1=1';
    Open;
    end;
  end;
except
  on E: EDatabaseError do
  begin
    ShowMessage('Ошибка базы данных: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('Ошибка  COM: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E);
  end;
end;
end;

procedure TFrm_dol.dol_sel_BtnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise EDatabaseError.Create('Cоединение с базой не установлено',4001);
    with DM.sel_dol_by_naim do
    begin
      Close;
      Parameters.ParamByName('@Nam_dol').Value :=dol_cond_Edit.Text;
      Open;
       DM.dolQuery.Recordset:=dm.sel_dol_by_naim.Recordset;
    end;
  except
  on E: EDatabaseError do
  begin
    ShowMessage('Ошибка базы данных : ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('Ошибка  Ole: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E);
  end;
end;
end;

procedure TFrm_dol.FormActivate(Sender: TObject);
begin
  dm.dolQuery.Open;
  dm.menQuery.Open;
  AdjustDBGridColumnWidths('Frm_dol',6000, 10);
end;

procedure TFrm_dol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_dol.FormCreate(Sender: TObject);
begin
  UpdateFormShowHint('Frm_dol');
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeComponentAnchors(Self);
  LoadFormState(Self);
end;

end.

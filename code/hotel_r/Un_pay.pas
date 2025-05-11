unit Un_pay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls,adodb,db, DBCtrls,jpeg;

type
  TFrm_pay = class(TForm)
    FuslPC: TPageControl;
    seLTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    sel_pay_condBox: TGroupBox;
    m_pay_grupper: TGroupBox;
    selpaymbtnBox: TGroupBox;
    sel_pay_data_box: TGroupBox;
    payselBtn: TButton;
    selpayselgrd: TDBGrid;
    pay_form_cond_edit: TLabeledEdit;
    sel_pay_fnd_Edit: TLabeledEdit;
    pay_Radio_pay_f_grupper: TRadioButton;
    pay_Radio_dateo_grupper: TRadioButton;
    pay_reset_radio: TRadioButton;
    ins_tn_dataBox: TGroupBox;
    ins_usl_inpBox: TGroupBox;
    ins_usl_btn_Box: TGroupBox;
    ins_uslBtn: TButton;
    usl_naim_inp: TLabeledEdit;
    uslliveQuercB: TCheckBox;
    usllqPanel: TPanel;
    usllqsvBtn: TButton;
    upd_usl_inp_Box: TGroupBox;
    upd_usl_btn_Box: TGroupBox;
    upd_usl_data_box: TGroupBox;
    upd_uls_btn: TButton;
    upd_usl_lbl: TStaticText;
    upd_usl_u_dbl: TDBLookupComboBox;
    del_usl_inpBox: TGroupBox;
    del_usl_dataBox: TGroupBox;
    del_usl_btn_Box: TGroupBox;
    del_usl_d_btn: TButton;
    del_dbl_usl_lbl: TStaticText;
    del_dbl_usl_dbl: TDBLookupComboBox;
    usl_ed_ism_inp: TLabeledEdit;
    ins_tn_data_Box: TGroupBox;
    upd_usl_naim_inp: TLabeledEdit;
    ins_usl_grd: TDBGrid;
    usl_cost_inp: TLabeledEdit;
    uslGrd: TDBGrid;
    Del_usl_grd: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure payselBtnClick(Sender: TObject);
    procedure sel_pay_fnd_EditKeyPress(Sender: TObject; var Key: Char);
    procedure pay_reset_radioClick(Sender: TObject);
    procedure pay_Radio_dateo_grupperClick(Sender: TObject);
    procedure pay_Radio_pay_f_grupperClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pay: TFrm_pay;


implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_pay.FormActivate(Sender: TObject);
begin
  dm.UslQuery.Open;
  dm.dogQuery.Open;
  dm.PayQuery.Open;
  AdjustDBGridColumnWidths('Frm_pay',6000, 10);
end;

procedure TFrm_pay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SaveFormState(Self);
   CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_pay.FormCreate(Sender: TObject);
begin
  Frm_pay.KeyPreview:=true;
  Frm_pay.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);
end;

procedure TFrm_pay.payselBtnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise Exception.Create('���������� � ����� �� �����������');
    with DM.sel_pay_by_form do
    begin
      Close;
      Parameters.ParamByName('@pay_from').Value := pay_form_cond_edit.Text;
      Open;
       DM.payQuery.Recordset:=dm.sel_pay_by_form.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('������: ' + E.Message);
    on E: Exception do
      ShowMessage('������: ' + E.Message);
  end;
end;

procedure TFrm_pay.pay_Radio_dateo_grupperClick(Sender: TObject);
begin
if  pay_Radio_dateo_grupper.Checked=true then
  begin
    try
     with dm.payQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
     'select'+' '+
    'pay.pay_id,'+' '+
    'usluga.usl_naim,'+' '+
    'pay.pay_data,'+' '+
    'pay.mdays,'+' '+
    'pay.pay_from,'+' '+
    'pay.total_s,'+' '+
    'dogovor.guest_fio'+' '+
    'from pay'+' '+
    'inner join usluga on usluga.usl_id=pay.usl_id'+' '+
    'inner join dogovor on dogovor.dog_id=pay.dog_id'+' '+
    'where 1=1'+' '+
    'order by pay.pay_data asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������ :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_pay.pay_Radio_pay_f_grupperClick(Sender: TObject);
begin
  if  pay_Radio_pay_f_grupper.Checked=true then
  begin
    try
     with dm.payQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
      'select'+' '+
    'pay.pay_id,'+' '+
    'usluga.usl_naim,'+' '+
    'pay.pay_data,'+' '+
    'pay.mdays,'+' '+
    'pay.pay_from,'+' '+
    'pay.total_s,'+' '+
    'dogovor.guest_fio'+' '+
    'from pay'+' '+
    'inner join usluga on usluga.usl_id=pay.usl_id'+' '+
    'inner join dogovor on dogovor.dog_id=pay.dog_id'+' '+
    'where 1=1'+' '+
     'order by pay.pay_from asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������ :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_pay.pay_reset_radioClick(Sender: TObject);
  var
  i,j,c:Integer;
begin
  if  pay_reset_radio.Checked=true then
with Frm_pay do
for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_pay do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.PayQuery do
     begin
     Close;
     sql.Clear;
       sql.Text:=
    'select'+' '+
    'pay.pay_id,'+' '+
    'usluga.usl_naim,'+' '+
    'pay.pay_data,'+' '+
    'pay.mdays,'+' '+
    'pay.pay_from,'+' '+
    'pay.total_s,'+' '+
    'dogovor.guest_fio'+' '+
    'from pay'+' '+
    'inner join usluga on usluga.usl_id=pay.usl_id'+' '+
    'inner join dogovor on dogovor.dog_id=pay.dog_id'+' '+
    'where 1=1';
     Open;
     end;
    with Frm_pay do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_pay.sel_pay_fnd_EditKeyPress(Sender: TObject; var Key: Char);
begin
try
   dm.payQuery.SQL.Text:=
    'select'+' '+
    'pay.pay_id,'+' '+
    'usluga.usl_naim,'+' '+
    'pay.pay_data,'+' '+
    'pay.mdays,'+' '+
    'pay.pay_from,'+' '+
    'pay.total_s,'+' '+
    'dogovor.guest_fio'+' '+
    'from pay'+' '+
    'inner join usluga on usluga.usl_id=pay.usl_id'+' '+
    'inner join dogovor on dogovor.dog_id=pay.dog_id'+' '+
    'where 1=1'+' '+
   'and dogovor.guest_fio like'+
   QuotedStr(Concat(sel_pay_fnd_Edit.Text,#37));
   dm.payQuery.close;
   dm.payQuery.Open;
except on E: Exception do
  begin
  ShowMessage('������'+' '+E.Message);
  end;
  end;
end;

end.

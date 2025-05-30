unit Un_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls,adodb,db, DBCtrls,jpeg;

type
  TFrm_usl = class(TForm)
    FuslPC: TPageControl;
    seLTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    sel_uslcondBox: TGroupBox;
    m_usl_grupper: TGroupBox;
    seluslmbtnBox: TGroupBox;
    sel_usl_data_box: TGroupBox;
    uslselBtn: TButton;
    seluslselgrd: TDBGrid;
    usl_naim_usl_cond_edit: TLabeledEdit;
    sel_usl_ei_fnd_Edit: TLabeledEdit;
    usl_Radiocostgrupper: TRadioButton;
    usl_Radionaimgrupper: TRadioButton;
    usl_reset_radio: TRadioButton;
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
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure uslselBtnClick(Sender: TObject);
    procedure sel_usl_ei_fnd_EditKeyPress(Sender: TObject; var Key: Char);
    procedure usl_RadiocostgrupperClick(Sender: TObject);
    procedure usl_reset_radioClick(Sender: TObject);
    procedure usl_RadionaimgrupperClick(Sender: TObject);
    procedure ins_uslBtnClick(Sender: TObject);
    procedure uslliveQuercBClick(Sender: TObject);
    procedure usllqsvBtnClick(Sender: TObject);
    procedure upd_uls_btnClick(Sender: TObject);
    procedure del_usl_d_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_usl: TFrm_usl;


implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_usl.del_usl_d_btnClick(Sender: TObject);
var
   AreFieldsEmpty: Boolean;
begin
AreFieldsEmpty:=(
(del_dbl_usl_dbl.Text='')
);
if AreFieldsEmpty then
begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
end;
try
with dm.del_usl do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@usl_id').Value :=
           dm.UslQuery.FieldByName('usl_id').AsString;
           ExecProc;
           dm.uslQuery.Close;
           dm.uslQuery.Open;
        MessageDlg('��������� �������', mtInformation, [mbOK], 0);
      end;
    except
      on E: EADOError do
      begin
        ShowMessage('������: ' + E.Message);
      end;
      on E: Exception do
      begin
        ShowMessage('������: ' + E.Message);
      end;
      end;
end;

procedure TFrm_usl.FormActivate(Sender: TObject);
begin
  dm.UslQuery.Open;
  AdjustDBGridColumnWidths('Frm_usl',6000, 10);
end;

procedure TFrm_usl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm')
end;

procedure TFrm_usl.FormCreate(Sender: TObject);
begin
  Frm_usl.KeyPreview:=true;
  Frm_usl.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);
end;

procedure TFrm_usl.ins_uslBtnClick(Sender: TObject);
const
AllowedChars: TSysCharSet = ['�'..'�', '�'..'�', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
  PriceText: string;
  PriceValue: Int64;
begin
  PriceText:=usl_cost_inp.Text;
  AreFieldsEmpty:=(
  (Trim(usl_naim_inp.Text)='')or
  (TRim(usl_ed_ism_inp.Text)='')or
  (Trim(usl_cost_inp.Text)='')
  );
  AreFieldsValid:=(
  ValidateComponentText(usl_naim_inp,AllowedChars)and
  ValidateComponentText(usl_ed_ism_inp,AllowedChars)and
  IsDigitsOnly(usl_cost_inp.Text)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_usl do
      begin
        PriceValue:=StrToInt64(usl_cost_inp.Text);
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@usl_cost').Value := PriceValue;
           Parameters.ParamByName('@usl_naim').Value:=usl_naim_inp.Text;
           Parameters.ParamByName('@usl_ed_ism').Value:=usl_ed_ism_inp.Text;
           ExecProc;
           dm.UslQuery.Close;
           dm.uslQuery.Open;
        MessageDlg('��������� �������', mtInformation, [mbOK], 0);
      end;
    except
      on E: EADOError do
      begin
        ShowMessage('������: ' + E.Message);
      end;
      on E: Exception do
      begin
        ShowMessage('������: ' + E.Message);
      end;
    end;
end;

procedure TFrm_usl.sel_usl_ei_fnd_EditKeyPress(Sender: TObject; var Key: Char);
begin
try
   dm.uslQuery.SQL.Text:=
     'select'+' '+
     'usluga.usl_id,'+' '+
     'usluga.usl_cost,'+' '+
     'usluga.usl_naim,'+' '+
     'usluga.usl_ed_ism'+' '+
    'from usluga'+' '+
    'where 1=1'+
    'and  usluga.usl_ed_ism like'+
   QuotedStr(Concat(sel_usl_ei_fnd_Edit.Text,#37));
   dm.uslQuery.close;
   dm.uslQuery.Open;
except on E: Exception do
  begin
  ShowMessage('������'+' '+E.Message);
  end;
  end;
end;


procedure TFrm_usl.upd_uls_btnClick(Sender: TObject);
const
AllowedChars: TSysCharSet = ['�'..'�', '�'..'�', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
AreFieldsEmpty:=(
(upd_usl_u_dbl.Text='')or
(Trim(upd_usl_naim_inp.Text)='')
);
AreFieldsValid:=(
ValidateComponentText(upd_usl_naim_inp,AllowedChars)
);
if AreFieldsEmpty or not AreFieldsValid then 
begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
end;
  try
      with dm.upd_usl do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@usl_id').Value :=
           dm.UslQuery.FieldByName('usl_id').AsString;
           Parameters.ParamByName('@usl_naim').Value:=upd_usl_naim_inp.Text;
           ExecProc;
           dm.uslQuery.Close;
           dm.uslQuery.Open;
        MessageDlg('��������� �������', mtInformation, [mbOK], 0);
      end;
    except
      on E: EADOError do
      begin
        ShowMessage('������: ' + E.Message);
      end;
      on E: Exception do
      begin
        ShowMessage('������: ' + E.Message);
      end;
    end;
end;

procedure TFrm_usl.uslliveQuercBClick(Sender: TObject);
begin
case uslliveQuercB.Checked of
true:
begin
  with dm.uslQuery do
begin
  Close;
  LockType:=ltOptimistic;
  CursorType:= ctKeyset;
  CursorLocation := clUseClient;
  open;
end;
  ins_usl_Grd.ReadOnly:=false;
end;
false:
begin
with dm.uslQuery do
begin
  Close;
  LockType:=ltOptimistic;
  CursorType:= ctStatic;
  CursorLocation := clUseClient;
  Open;
end;
  ins_usl_Grd.ReadOnly:=True;
end;

end;//case
end;

procedure TFrm_usl.usllqsvBtnClick(Sender: TObject);
  var
  UserResponse: Integer;
begin
   dm.Connection.BeginTrans;
  try
    if dm.uslQuery.State in [dsEdit, dsInsert] then
      dm.uslQuery.Post;
    UserResponse := MessageDlg('�� ������ c�������� ���������?',
    mtConfirmation, [mbYes, mbNo], 0);
    if UserResponse = mrYes then
    begin
      dm.Connection.CommitTrans;
      dm.uslQuery.DisableControls;
      try
        dm.uslQuery.Close;
        dm.uslQuery.SQL.Text :=
        'select'+' '+
     'usluga.usl_id,'+' '+
     'usluga.usl_cost,'+' '+
     'usluga.usl_naim,'+' '+
     'usluga.usl_ed_ism'+' '+
    'from usluga'+' '+
    'where 1=1';
        dm.uslQuery.Open;
      finally
        dm.uslQuery.EnableControls;
      end;
      ShowMessage('��������� ������� ����������.');
    end
    else
    begin
      dm.Connection.RollbackTrans;
      ShowMessage('���������  ��������.');
    end;
  except
    on E: Exception do
    begin
      dm.Connection.RollbackTrans;
      ShowMessage('������ ��� ���������� ������: ' + E.Message);
    end;
  end;

end;

procedure TFrm_usl.uslselBtnClick(Sender: TObject);
begin
 try
    if not DM.Connection.Connected then
      raise Exception.Create('���������� � ����� �� ����������');
    with DM.sel_usl_by_name do
    begin
      Close;
      Parameters.ParamByName('@usl_naim').Value := usl_naim_usl_cond_edit.Text;
      Open;
       dm.UslQuery.Recordset:=dm.sel_usl_by_name.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('������: ' + E.Message);
    on E: Exception do
      ShowMessage('������: ' + E.Message);
  end;

end;

procedure TFrm_usl.usl_RadiocostgrupperClick(Sender: TObject);
begin
  if  usl_Radiocostgrupper.Checked=true then
  begin
    try
     with dm.uslQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
     'select'+' '+
     'usluga.usl_id,'+' '+
     'usluga.usl_cost,'+' '+
     'usluga.usl_naim,'+' '+
     'usluga.usl_ed_ism'+' '+
    'from usluga'+' '+
    'where 1=1'+
    'order by usl_cost asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_usl.usl_RadionaimgrupperClick(Sender: TObject);
begin
       if  usl_Radionaimgrupper.Checked=true then
  begin
    try
     with dm.uslQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
       'select'+' '+
     'usluga.usl_id,'+' '+
     'usluga.usl_cost,'+' '+
     'usluga.usl_naim,'+' '+
     'usluga.usl_ed_ism'+' '+
    'from usluga'+' '+
    'where 1=1'+
    'order by usluga.usl_naim asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_usl.usl_reset_radioClick(Sender: TObject);
var i,j,c:Integer;
begin
if  usl_reset_radio.Checked=true then
with Frm_usl do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_usl do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.uslQuery do
     begin
     Close;
     sql.Clear;
       sql.Text:=
      'select'+' '+
     'usluga.usl_id,'+' '+
     'usluga.usl_cost,'+' '+
     'usluga.usl_naim,'+' '+
     'usluga.usl_ed_ism'+' '+
    'from usluga'+' '+
    'where 1=1';
     Open;
     end;
    with Frm_usl do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

end.

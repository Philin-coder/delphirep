unit Un_ex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls,ADODB,db, DBCtrls;

type
  TFrm_ex = class(TForm)
    ExPC: TPageControl;
    SelTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    Ex_inp_Box: TGroupBox;
    Ex_Data_Box: TGroupBox;
    Ex_grouper_Box: TGroupBox;
    Ex_btn_Box: TGroupBox;
    Ex_sel_btn: TButton;
    sel_Ex_grid: TDBGrid;
    Ex_data_p_radio: TRadioButton;
    Ex_reset_Radio: TRadioButton;
    Ex_CondEdit: TLabeledEdit;
    Ex_fndEdit: TLabeledEdit;
    ins_ex_data_Box: TGroupBox;
    ins_ex_btn_Box: TGroupBox;
    ins_ex_btn: TButton;
    Upd_ex_data_Box: TGroupBox;
    Upd_ex_inp_Box: TGroupBox;
    Upd_ex_btn_Box: TGroupBox;
    Upd_ex_btn: TButton;
    upd_ex_id_dbl: TDBLookupComboBox;
    upd_ex_id_lbl: TStaticText;
    ex_del_inp_Box: TGroupBox;
    ex_del_btn_Box: TGroupBox;
    ex_del_data_Box: TGroupBox;
    ex_del_inp_lbl: TStaticText;
    ex_del_inp_dbl: TDBLookupComboBox;
    ex_del_btn: TButton;
    Ex_outCB: TCheckBox;
    doc_theme_Radio: TRadioButton;
    ins_ex_Grid: TDBGrid;
    about_exPC: TPageControl;
    about_ex_Tab_one: TTabSheet;
    about_ex_Tab_two: TTabSheet;
    about_ex_Tab_three: TTabSheet;
    about_ex_Tab_four: TTabSheet;
    ins_ex_inp_Box: TGroupBox;
    ex_data_pr_lbl: TStaticText;
    ins_ex_Date_pr_inp: TDateTimePicker;
    ex_data_out_lbl: TStaticText;
    ins_ex_Date_out_inp: TDateTimePicker;
    ins_ex_inp_box_two: TGroupBox;
    ex_c_exit_id_dbl: TDBLookupComboBox;
    ex_doc_id_lbl: TStaticText;
    ex_c_exit_id_lbl: TStaticText;
    ex_doc_id_dbl: TDBLookupComboBox;
    ins_ex_inp_box_three: TGroupBox;
    ex_actout_id_lbl: TStaticText;
    ex_actout_id_dbl: TDBLookupComboBox;
    ex_date_test_lbl: TStaticText;
    ex_test_data_inp: TDateTimePicker;
    ins_ex_inp_box_four: TGroupBox;
    ex_test_mark_lbl: TStaticText;
    ex_test_mark_combo: TComboBox;
    upd_ex_Grid: TDBGrid;
    upd_ex_test_mark_lbl: TStaticText;
    upd_ex_combo: TComboBox;
    ex_del_Grid: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Ex_sel_btnClick(Sender: TObject);
    procedure Ex_fndEditKeyPress(Sender: TObject; var Key: Char);
    procedure Ex_data_p_radioClick(Sender: TObject);
    procedure Ex_outCBClick(Sender: TObject);
    procedure doc_theme_RadioClick(Sender: TObject);
    procedure Ex_reset_RadioClick(Sender: TObject);
    procedure ex_test_mark_comboChange(Sender: TObject);
    procedure ins_ex_btnClick(Sender: TObject);
    procedure upd_ex_comboChange(Sender: TObject);
    procedure Upd_ex_btnClick(Sender: TObject);
    procedure ex_del_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ex: TFrm_ex;
  ex_test_mark_st:Integer;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_ex.doc_theme_RadioClick(Sender: TObject);
begin
     if  doc_theme_Radio.Checked=true then
  begin
    try
     with dm.ex_Query do
     begin
      close;
      sql.Clear;
      sql.Text:=
      'select'+' '+
    'exempl.ex_inv_id,'+' '+
    'exempl.ex_data_pr,'+' '+
    'exempl.ex_data_out,'+' '+
    'doc.doc_theme,'+' '+
    'c_exit.c_exit_desc,'+' '+
    'akt_out.akt_s_nom,'+' '+
    'exempl.ex_test_data,'+' '+
'case when exempl.ex_test_mark=0 then ''��������''  else ''�� ��������'' end as test_mark'+' '+
    'from exempl'+' '+
    'inner join doc on exempl.doc_id=doc.doc_id'+' '+
    'inner join c_exit on exempl.c_exit_id=c_exit.c_exit_id'+' '+
    'inner join akt_out on exempl.exit_akt_id=akt_out.exit_akt_id'+' '+
    'where 1=1'+' '+
    'order by cdoc.doc_theme asc';
      Open;
     end;
    except
        on E: EDatabaseError do
  begin
    ShowMessage('������ ���� ������: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('������  Ole: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������: ' + E.Message);
    HandleException(E);
    Raise;
  end;
end;
end;
end;

procedure TFrm_ex.Ex_data_p_radioClick(Sender: TObject);
begin
     if  Ex_data_p_radio.Checked=true then
  begin
    try
     with dm.ex_query do
     begin
      close;
      sql.Clear;
      sql.Text:=
    'select'+' '+
    'exempl.ex_inv_id,'+' '+
    'exempl.ex_data_pr,'+' '+
    'exempl.ex_data_out,'+' '+
    'doc.doc_theme,'+' '+
    'c_exit.c_exit_desc,'+' '+
    'akt_out.akt_s_nom,'+' '+
    'exempl.ex_test_data,'+' '+
'case when exempl.ex_test_mark=0 then ''��������''  else ''�� ��������'' end as test_mark'+' '+
    'from exempl'+' '+
    'inner join doc on exempl.doc_id=doc.doc_id'+' '+
    'inner join c_exit on exempl.c_exit_id=c_exit.c_exit_id'+' '+
    'inner join akt_out on exempl.exit_akt_id=akt_out.exit_akt_id'+' '+
    'where 1=1'+' '+
    'order by exempl.ex_test_data asc';
      Open;
     end;
    except
        on E: EDatabaseError do
  begin
    ShowMessage('������ ���� ������: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('������  Ole: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������: ' + E.Message);
    HandleException(E);
    Raise;
  end;
end;
end;
end;

procedure TFrm_ex.ex_del_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (ex_del_inp_dbl.Text='')
  );
  if AreFieldsEmpty then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
   try
      with dm.del_ex do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('���������� � ����� �� �����������',4001);
           Parameters.ParamByName('@ex_inv_id').Value :=
           dm.ex_Query.FieldByName('ex_inv_id').AsString;
           ExecProc;
           dm.ex_Query.Close;
           dm.ex_Query.Open;
        MessageDlg('��������� �������', mtInformation, [mbOK], 0);
      end;
    except
      on E: EDatabaseError do
  begin
    ShowMessage('������ ���� ������: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('������ COM: ' + E.Message);
    HandleException(E); // ����������� ������
    raise; // ��������� ������������ ����������
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������: ' + E.Message);
    HandleException(E); // ����������� ������
    raise;
end;
end;
end;

procedure TFrm_ex.Ex_fndEditKeyPress(Sender: TObject; var Key: Char);
begin
  try
   dm.ex_Query.SQL.Text:=
   'select'+' '+
    'exempl.ex_inv_id,'+' '+
    'exempl.ex_data_pr,'+' '+
    'exempl.ex_data_out,'+' '+
    'doc.doc_theme,'+' '+
    'c_exit.c_exit_desc,'+' '+
    'akt_out.akt_s_nom,'+' '+
    'exempl.ex_test_data,'+' '+
'case when exempl.ex_test_mark=0 then ''��������''  else ''�� ��������'' end as test_mark'+' '+
    'from exempl'+' '+
    'inner join doc on exempl.doc_id=doc.doc_id'+' '+
    'inner join c_exit on exempl.c_exit_id=c_exit.c_exit_id'+' '+
    'inner join akt_out on exempl.exit_akt_id=akt_out.exit_akt_id'+' '+
    'where 1=1'+' '+
    'and doc.doc_theme like'+' '+
   QuotedStr(Concat(ex_fndEdit.Text,#37));
   dm.ex_Query.close;
   dm.ex_Query.Open;
except
   on E: EDatabaseError do
  begin
    ShowMessage('������ ���� ������: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('������   Ole: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������  : ' + E.Message);
    HandleException(E);
    raise;
end;
end;
end;

procedure TFrm_ex.Ex_outCBClick(Sender: TObject);
begin
  case Ex_outCB.Checked of
  true:
  begin
    try
     with dm.ex_query do
     begin
      close;
      sql.Clear;
      sql.Text:=
    'select'+' '+
    'exempl.ex_inv_id,'+' '+
    'exempl.ex_data_pr,'+' '+
    'exempl.ex_data_out,'+' '+
    'doc.doc_theme,'+' '+
    'c_exit.c_exit_desc,'+' '+
    'akt_out.akt_s_nom,'+' '+
    'exempl.ex_test_data,'+' '+
'case when exempl.ex_test_mark=0 then ''��������''  else ''�� ��������'' end as test_mark'+' '+
    'from exempl'+' '+
    'inner join doc on exempl.doc_id=doc.doc_id'+' '+
    'inner join c_exit on exempl.c_exit_id=c_exit.c_exit_id'+' '+
    'inner join akt_out on exempl.exit_akt_id=akt_out.exit_akt_id'+' '+
    'where 1=1'+' '+
    'and exempl.ex_test_mark=1';
      Open;
     end;
    except
        on E: EDatabaseError do
  begin
    ShowMessage('������ ���� ������: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('������  Ole: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������: ' + E.Message);
    HandleException(E);
    Raise;
  end;
end;
end;
  false:
  begin
  try
     with dm.ex_query do
     begin
      close;
      sql.Clear;
      sql.Text:=
    'select'+' '+
    'exempl.ex_inv_id,'+' '+
    'exempl.ex_data_pr,'+' '+
    'exempl.ex_data_out,'+' '+
    'doc.doc_theme,'+' '+
    'c_exit.c_exit_desc,'+' '+
    'akt_out.akt_s_nom,'+' '+
    'exempl.ex_test_data,'+' '+
'case when exempl.ex_test_mark=0 then ''��������''  else ''�� ��������'' end as test_mark'+' '+
    'from exempl'+' '+
    'inner join doc on exempl.doc_id=doc.doc_id'+' '+
    'inner join c_exit on exempl.c_exit_id=c_exit.c_exit_id'+' '+
    'inner join akt_out on exempl.exit_akt_id=akt_out.exit_akt_id'+' '+
    'where 1=1'+' '+
    'and exempl.ex_test_mark=0';
      Open;
     end;
    except
        on E: EDatabaseError do
  begin
    ShowMessage('������ ���� ������: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('������  Ole: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������: ' + E.Message);
    HandleException(E);
    Raise;
  end;
end;
end;
end;
end;


procedure TFrm_ex.Ex_reset_RadioClick(Sender: TObject);
var i,j,c:Integer;
begin
  try
  if Ex_reset_Radio.Checked then
  begin
    with Frm_ex do
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
    with dm.ex_Query do
    begin
      Close;
      sql.Clear;
      sql.Text :=
    'select'+' '+
    'exempl.ex_inv_id,'+' '+
    'exempl.ex_data_pr,'+' '+
    'exempl.ex_data_out,'+' '+
    'doc.doc_theme,'+' '+
    'c_exit.c_exit_desc,'+' '+
    'akt_out.akt_s_nom,'+' '+
    'exempl.ex_test_data,'+' '+
'case when exempl.ex_test_mark=0 then ''��������''  else ''�� ��������'' end as test_mark'+' '+
    'from exempl'+' '+
    'inner join doc on exempl.doc_id=doc.doc_id'+' '+
    'inner join c_exit on exempl.c_exit_id=c_exit.c_exit_id'+' '+
    'inner join akt_out on exempl.exit_akt_id=akt_out.exit_akt_id'+' '+
    'where 1=1';
      Open;
    end;
  end;
except
  on E: EDatabaseError do
  begin
    ShowMessage('������ ���� ������: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('������ COM: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������: ' + E.Message);
    HandleException(E);
    raise;
  end;
end;
end;




procedure TFrm_ex.Ex_sel_btnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise EDatabaseError.Create('���������� � ����� �� ����������� ',4001);
    with DM.sel_ex_by_exit_desc do
    begin
      Close;
      Parameters.ParamByName('@c_exit_desc').Value :=ex_CondEdit.Text;
      Open;
       DM.ex_Query.Recordset:=dm.sel_ex_by_exit_desc.Recordset;
    end;
  except
  on E: EDatabaseError do
  begin
    ShowMessage('������ ���� ������: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('������   Ole: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������: ' + E.Message);
    HandleException(E);
    Raise;
  end;
end;
end;

procedure TFrm_ex.ex_test_mark_comboChange(Sender: TObject);
begin
if ex_test_mark_combo.ItemIndex=0 then  ex_test_mark_st:=0
  else  ex_test_mark_st:=1;
end;

procedure TFrm_ex.FormActivate(Sender: TObject);
begin
  dm.ex_Query.Open;
  dm.act_outQuery.Open;
  dm.docQuery.Open;
  dm.exit_cQuery.Open;
  AdjustDBGridColumnWidths('Frm_ex',6000, 10);
end;

procedure TFrm_ex.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
  ex_test_mark_st:=0;
end;

procedure TFrm_ex.FormCreate(Sender: TObject);
begin
  UpdateFormShowHint('Frm_ex');
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeComponentAnchors(Self);
  LoadFormState(Self);
  ex_test_mark_st:=0;
end;

procedure TFrm_ex.ins_ex_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (ex_doc_id_dbl.Text='')or
  (ex_c_exit_id_dbl.Text='')or
  (ex_actout_id_dbl.Text='')or
  (ex_test_mark_combo.Text='')
  );
  if AreFieldsEmpty then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_ex do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('���������� � ����� �� �����������',4001);
           Parameters.ParamByName('@ex_data_pr').Value :=ins_ex_Date_pr_inp.Date;
           Parameters.ParamByName('@ex_data_out').Value:=ins_ex_Date_out_inp.Date;
           Parameters.ParamByName('@doc_id').Value:=
           dm.docQuery.FieldByName('doc_id').AsString;
           Parameters.ParamByName('@c_exit_id').Value:=
           dm.exit_cQuery.FieldByName('c_exit_id').AsString;
           Parameters.ParamByName('@exit_akt_id').Value:=
           dm.act_outQuery.FieldByName('exit_akt_id').AsString;
           Parameters.ParamByName('@ex_test_data').Value:=ex_test_data_inp.Date;
           Parameters.ParamByName('@ex_test_mark').Value:=ex_test_mark_st;
           ExecProc;
           dm.ex_Query.Close;
           dm.ex_Query.Open;
        MessageDlg('��������� �������', mtInformation, [mbOK], 0);
      end;
    except
      on E: EDatabaseError do
  begin
    ShowMessage('������ ���� ������: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('������ COM: ' + E.Message);
    HandleException(E); // ����������� ������
    raise; // ��������� ������������ ����������
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������: ' + E.Message);
    HandleException(E); // ����������� ������
    raise;
end;
end;
end;

procedure TFrm_ex.Upd_ex_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (upd_ex_id_dbl.Text='')
  );
  if AreFieldsEmpty then
  begin
   MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.upd_ex do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('���������� � ����� �� �����������',4001);
           Parameters.ParamByName('@ex_inv_id').Value :=
           dm.ex_Query.FieldByName('ex_inv_id').AsString;
           Parameters.ParamByName('@ex_test_mark').Value:=ex_test_mark_st;
           ExecProc;
           dm.ex_Query.Close;
           dm.ex_Query.Open;
        MessageDlg('��������� �������', mtInformation, [mbOK], 0);
      end;
    except
      on E: EDatabaseError do
  begin
    ShowMessage('������ ���� ������: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: EOleError do
  begin
    ShowMessage('������ COM: ' + E.Message);
    HandleException(E); // ����������� ������
    raise; // ��������� ������������ ����������
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������: ' + E.Message);
    HandleException(E); // ����������� ������
    raise;
end;
end;
end;

procedure TFrm_ex.upd_ex_comboChange(Sender: TObject);
begin
  if upd_ex_combo.ItemIndex=0 then  ex_test_mark_st:=0
    else  ex_test_mark_st:=1;
end;

end.

unit Un_att;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, ExtCtrls,adodb,db, DBCtrls;

type
  TFrm_att = class(TForm)
    AttPC: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    UpdTab: TTabSheet;
    DelTab: TTabSheet;
    att_inp_Box: TGroupBox;
    att_data_Box: TGroupBox;
    att_groupr_Box: TGroupBox;
    att_btn_Box: TGroupBox;
    att_sel_btn: TButton;
    att_sel_grd: TDBGrid;
    att_cond_edit: TLabeledEdit;
    att_fnd_edit: TLabeledEdit;
    att_st_fio_radio: TRadioButton;
    att_les_radio: TRadioButton;
    att_reset_radio: TRadioButton;
    ins_att_data_Box: TGroupBox;
    ins_att_inp_Box: TGroupBox;
    ins_att_btn_Box: TGroupBox;
    ins_att_ins_btn: TButton;
    att_upd_data_Box: TGroupBox;
    att_upd_btn_Box: TGroupBox;
    att_upd_inp_Box: TGroupBox;
    att_upd_sb_lbl: TStaticText;
    att_upd_DBL: TDBLookupComboBox;
    upd_btn: TButton;
    att_del_inp_Box: TGroupBox;
    att_del_btn_Box: TGroupBox;
    att_del_data_Box: TGroupBox;
    att_del_btn: TButton;
    del_att_DBL: TDBLookupComboBox;
    del_att_lBL: TStaticText;
    ins_att_Grid: TDBGrid;
    att_upd_Grid: TDBGrid;
    att_Del_Grid: TDBGrid;
    ins_att_l_lbl: TStaticText;
    ins_att_st_lbl: TStaticText;
    ins_att_m_st_lbl: TStaticText;
    ins_att_l_dbl: TDBLookupComboBox;
    ins_att_st_dbl: TDBLookupComboBox;
    ins_att_M_st_combo: TComboBox;
    ins_att_comment_inp: TLabeledEdit;
    att_upd_note_inp: TLabeledEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure att_sel_btnClick(Sender: TObject);
    procedure att_fnd_editKeyPress(Sender: TObject; var Key: Char);
    procedure att_st_fio_radioClick(Sender: TObject);
    procedure att_les_radioClick(Sender: TObject);
    procedure att_reset_radioClick(Sender: TObject);
    procedure ins_att_ins_btnClick(Sender: TObject);
    procedure ins_att_M_st_comboChange(Sender: TObject);
    procedure upd_btnClick(Sender: TObject);
    procedure att_del_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_att: TFrm_att;
  present_st:Integer;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_att.att_del_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (del_att_DBL.Text='')
  );
  if AreFieldsEmpty then
  begin
   MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
 try
      with dm.del_att do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('���������� � ����� �� �����������',4001);
           Parameters.ParamByName('@id_attendance').Value :=
           dm.attQuery.FieldByName('id_attendance').AsString;
           ExecProc;
           dm.attQuery.Close;
           dm.attQuery.Open;
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

procedure TFrm_att.att_fnd_editKeyPress(Sender: TObject; var Key: Char);
begin
  try
   dm.attQuery.SQL.Text:=
        'select'+' '+
        'Attendance.id_attendance,'+' '+
        'Subject.name,'+' '+
        'Student.fio,'+' '+
'case when Attendance.m_status=1 then ''�������������'' else ''������������'' end as s_state,'+' '+
        'Attendance.note'+' '+
        'from Attendance'+' '+
        'inner join Lesson on Lesson.id_lesson=Attendance.id_lesson'+' '+
        'inner join Subject on Subject.id_subject=Lesson.id_subject'+' '+
'inner join Student on Student.id_student=Attendance.id_student'+' '+
        'where 1=1'+' '+
  'and Student.fio like'+' '+
   QuotedStr(Concat(att_fnd_Edit.Text,#37));
   dm.attQuery.close;
   dm.attQuery.Open;
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
    raise;
end;
end;
end;

procedure TFrm_att.att_les_radioClick(Sender: TObject);
begin
  if  att_les_radio.Checked=true then
  begin
    try
     with dm.attQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
        'select'+' '+
        'Attendance.id_attendance,'+' '+
        'Subject.name,'+' '+
        'Student.fio,'+' '+
'case when Attendance.m_status=1 then ''�������������'' else ''������������'' end as s_state,'+' '+
        'Attendance.note'+' '+
        'from Attendance'+' '+
        'inner join Lesson on Lesson.id_lesson=Attendance.id_lesson'+' '+
        'inner join Subject on Subject.id_subject=Lesson.id_subject'+' '+
'inner join Student on Student.id_student=Attendance.id_student'+' '+
            'where 1=1'+' '+
       'order by Subject.name asc';
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
    ShowMessage('������ Ole: ' + E.Message);
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

procedure TFrm_att.att_reset_radioClick(Sender: TObject);
var i,j,c:Integer;
begin
   try
  if att_reset_radio.Checked then
  begin
    with Frm_att do
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
    with dm.AttQuery do
    begin
      Close;
      sql.Clear;
      sql.Text :=
        'select'+' '+
        'Attendance.id_attendance,'+' '+
        'Subject.name,'+' '+
        'Student.fio,'+' '+
'case when Attendance.m_status=1 then ''�������������'' else ''������������'' end as s_state,'+' '+
        'Attendance.note'+' '+
        'from Attendance'+' '+
        'inner join Lesson on Lesson.id_lesson=Attendance.id_lesson'+' '+
        'inner join Subject on Subject.id_subject=Lesson.id_subject'+' '+
'inner join Student on Student.id_student=Attendance.id_student'+' '+
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

procedure TFrm_att.att_sel_btnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise EDatabaseError.Create('���������� � ����� �� �����������  ',4001);
    with DM.sel_att_by_stud_fio do
    begin
      Close;
      Parameters.ParamByName('@fio').Value :=Att_cond_edit.Text;
      Open;
       DM.attQuery.Recordset:=dm.sel_att_by_stud_fio.Recordset;
    end;
  except
  on E: EDatabaseError do
  begin
    ShowMessage('������  ���� ������: ' + E.Message);
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

procedure TFrm_att.att_st_fio_radioClick(Sender: TObject);
begin
  if  att_st_fio_radio.Checked=true then
  begin
    try
     with dm.attQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
        'select'+' '+
        'Attendance.id_attendance,'+' '+
        'Subject.name,'+' '+
        'Student.fio,'+' '+
'case when Attendance.m_status=1 then ''�������������'' else ''������������'' end as s_state,'+' '+
        'Attendance.note'+' '+
        'from Attendance'+' '+
        'inner join Lesson on Lesson.id_lesson=Attendance.id_lesson'+' '+
        'inner join Subject on Subject.id_subject=Lesson.id_subject'+' '+
'inner join Student on Student.id_student=Attendance.id_student'+' '+
        'where 1=1'+' '+
         'order by Student.fio asc';
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

procedure TFrm_att.FormActivate(Sender: TObject);
begin
  dm.lessonQuery.Open;
  dm.StudQuery.Open;
  dm.attQuery.open;
  dm.subjQuery.Open;
  AdjustDBGridColumnWidths('Frm_att',6000, 10);
end;

procedure TFrm_att.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
  present_st:=0;
end;

procedure TFrm_att.FormCreate(Sender: TObject);
begin
  UpdateFormShowHint('Frm_att');
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeComponentAnchors(Self);
  LoadFormState(Self);
  present_st:=0;
end;

procedure TFrm_att.ins_att_ins_btnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['�'..'�', '�'..'�', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (Trim(ins_att_comment_inp.Text)='')or
  (ins_att_l_dbl.Text='')or
  (ins_att_st_dbl.Text='')or
  (ins_att_M_st_combo.Text='')
  );
  AreFieldsValid:=(
  ValidateComponentText(ins_att_comment_inp,AllowedChars)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_att do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('���������� � ����� �� �����������',4001);
           Parameters.ParamByName('@id_lesson').Value :=
           dm.lessonQuery.FieldByName('id_lesson').AsString;
           Parameters.ParamByName('@id_student').Value:=
           dm.StudQuery.FieldByName('id_student').AsString;
           Parameters.ParamByName('@m_status').Value:=present_st;
           Parameters.ParamByName('@note').Value:=ins_att_comment_inp.Text;
           ExecProc;
           dm.attQuery.Close;
           dm.attQuery.Open;
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

procedure TFrm_att.ins_att_M_st_comboChange(Sender: TObject);
begin
  if ins_att_M_st_combo.ItemIndex=0 then present_st:=1
  else present_st:=0;
end;

procedure TFrm_att.upd_btnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['�'..'�', '�'..'�', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (att_upd_DBL.Text='')or
  (Trim(att_upd_note_inp.Text)='')
  );
  AreFieldsValid:=(
  ValidateComponentText(att_upd_note_inp,AllowedChars)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.upd_att do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('���������� � ����� �� �����������',4001);
           Parameters.ParamByName('@id_attendance').Value :=
           dm.attQuery.FieldByName('id_attendance').AsString;
           Parameters.ParamByName('@note').Value:=att_upd_note_inp.Text;
           ExecProc;
           dm.attQuery.Close;
           dm.attQuery.Open;
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

end.

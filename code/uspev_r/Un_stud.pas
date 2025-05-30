unit Un_stud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls,db,ADODB;

type
  TFrm_stud = class(TForm)
    stud_pc: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    UpdTab: TTabSheet;
    delTab: TTabSheet;
    sel_stud_data_box: TGroupBox;
    stud_gr_box: TGroupBox;
    stud_btnBox: TGroupBox;
    stud_inp_Box: TGroupBox;
    stud_sel_btn: TButton;
    stud_name_Radio: TRadioButton;
    stud_group_name_Radio: TRadioButton;
    stud_reset_Radio: TRadioButton;
    stud_fnd_edit: TLabeledEdit;
    stud_cond_edit: TLabeledEdit;
    sel_stud_Grid: TDBGrid;
    showsbdatabox: TGroupBox;
    showsbDBLList: TDBLookupListBox;
    ins_stud_btn_Box: TGroupBox;
    ins_stud_inp_Box: TGroupBox;
    ins_stud_Btn: TButton;
    ins_stud_data_box: TGroupBox;
    stud_fio_inp: TLabeledEdit;
    upd_stud_dataBox: TGroupBox;
    upd_stud_btnBox: TGroupBox;
    upd_stud_inpBox: TGroupBox;
    stud_upd_btn: TButton;
    upd_stud_st_lbl: TStaticText;
    upd_stud_DBL: TDBLookupComboBox;
    upd_stud_mail_inp: TLabeledEdit;
    del_stud_dataBox: TGroupBox;
    del_stud_btnBox: TGroupBox;
    del_stud_inpBox: TGroupBox;
    del_stud_delBtn: TButton;
    del_stud_s_lbl: TStaticText;
    del_stud_st_dbl: TDBLookupComboBox;
    ins_studGrid: TDBGrid;
    upd_stud_Grid: TDBGrid;
    del_stud_Grid: TDBGrid;
    stud_grup_inp: TLabeledEdit;
    stud_mail_inp: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure stud_sel_btnClick(Sender: TObject);
    procedure stud_fnd_editKeyPress(Sender: TObject; var Key: Char);
    procedure stud_name_RadioClick(Sender: TObject);
    procedure stud_group_name_RadioClick(Sender: TObject);
    procedure stud_reset_RadioClick(Sender: TObject);
    procedure ins_stud_BtnClick(Sender: TObject);
    procedure stud_upd_btnClick(Sender: TObject);
    procedure del_stud_delBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_stud: TFrm_stud;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_stud.del_stud_delBtnClick(Sender: TObject);
  var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (del_stud_st_dbl.Text='')
  );
  if AreFieldsEmpty then
  begin
      MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
   try
      with dm.del_stud do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@id_student').Value :=
           dm.StudQuery.FieldByName('id_student').AsString;
           ExecProc;
           dm.studQuery.Close;
           dm.studQuery.Open;
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

procedure TFrm_stud.FormActivate(Sender: TObject);
begin
  dm.StudQuery.Open;
  dm.gradeQuery.Open;
  dm.teacherQuery.Open;
  dm.subjQuery.Open;
  AdjustDBGridColumnWidths('Frm_stud',6000, 10);
end;

procedure TFrm_stud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_stud.FormCreate(Sender: TObject);
begin
  Frm_stud.KeyPreview:=true;
  Frm_stud.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeDBLookupListBox(Self, 'Arial', 10, clBlack, clWhite);
  LoadFormState(Self);
end;

procedure TFrm_stud.ins_stud_BtnClick(Sender: TObject);
  const
AllowedChars: TSysCharSet = ['�'..'�', '�'..'�', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (Trim(stud_fio_inp.Text)='')or
  (Trim(stud_grup_inp.Text)='')or
  (Trim(stud_mail_inp.Text)='')
  );
  AreFieldsValid:=(
  ValidateComponentText(stud_fio_inp,AllowedChars)and
  ValidateComponentText(stud_grup_inp,AllowedChars)and
  IsValidEmail(stud_mail_inp.Text)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_stud do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@fio').Value :=stud_fio_inp.Text;
           Parameters.ParamByName('@group_name').Value:=stud_grup_inp.Text;
           Parameters.ParamByName('@email').Value:=stud_mail_inp.Text;
           ExecProc;
           dm.studQuery.Close;
           dm.studQuery.Open;
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

procedure TFrm_stud.stud_fnd_editKeyPress(Sender: TObject; var Key: Char);
begin
    try
   dm.studQuery.SQL.Text:=
  'select'+' '+
  'Student.id_student,'+' '+
   'Student.fio,'+' '+
   'Student.group_name,'+' '+
  'Student.email'+' '+
  'from Student'+' '+
    'where 1=1'+' '+
  'and Student.fio like'+
   QuotedStr(Concat(stud_fnd_edit.Text,#37));
   dm.studQuery.close;
   dm.studQuery.Open;
except on E: Exception do
  begin
  ShowMessage('������'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_stud.stud_group_name_RadioClick(Sender: TObject);
begin
  if  stud_group_name_Radio.Checked=true then
  begin
    try
     with dm.StudQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
       'select'+' '+
       'Student.id_student,'+' '+
      'Student.fio,'+' '+
     'Student.group_name,'+' '+
     'Student.email'+' '+
     'from Student'+' '+
     'where 1=1'+' '+' '+
    'order by Student.group_name asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������ :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_stud.stud_name_RadioClick(Sender: TObject);
begin
  if  stud_name_Radio.Checked=true then
  begin
    try
     with dm.studQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
       'select'+' '+
       'Student.id_student,'+' '+
      'Student.fio,'+' '+
     'Student.group_name,'+' '+
     'Student.email'+' '+
     'from Student'+' '+
     'where 1=1'+' '+' '+
    'order by Student.fio asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������ :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_stud.stud_reset_RadioClick(Sender: TObject);
  var i,j,c:Integer;
begin
  if  stud_reset_Radio.Checked=true then
with Frm_stud do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_stud do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.studQuery do
     begin
     Close;
     sql.Clear;
     sql.Text:=
      'select'+' '+
       'Student.id_student,'+' '+
      'Student.fio,'+' '+
     'Student.group_name,'+' '+
     'Student.email'+' '+
     'from Student'+' '+
     'where 1=1';
  Open;
     end;
    with Frm_stud do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_stud.stud_sel_btnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise Exception.Create('���������� � ����� �� �����������');
    with DM.sel_stud do
    begin
      Close;
      Parameters.ParamByName('@group_name').Value :=stud_cond_edit.Text;
      Open;
       DM.studQuery.Recordset:=dm.sel_stud.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('������: ' + E.Message);
    on E: Exception do
      ShowMessage('������: ' + E.Message);
  end;
end;

procedure TFrm_stud.stud_upd_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (upd_stud_DBL.Text='')or
  (Trim(upd_stud_mail_inp.Text)='')
  );
  AreFieldsValid:=(
  IsValidEmail(upd_stud_mail_inp.Text)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
      MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.upd_stud do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@id_student').Value :=
           dm.StudQuery.FieldByName('id_student').AsString;
           Parameters.ParamByName('@email').Value:=upd_stud_mail_inp.Text;
           ExecProc;
           dm.studQuery.Close;
           dm.studQuery.Open;
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

end.

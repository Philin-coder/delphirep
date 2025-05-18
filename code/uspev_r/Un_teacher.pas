unit Un_teacher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls,db,ADODB;

type
  TFrm_teacher = class(TForm)
    teacher_pc: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    UpdTab: TTabSheet;
    delTab: TTabSheet;
    teacher_data_box: TGroupBox;
    teacher_gr_box: TGroupBox;
    TeacherbtnBox: TGroupBox;
    TeacherinpBox: TGroupBox;
    teacher_sel_btn: TButton;
    teacher_fio_Radio: TRadioButton;
    teacher_dep_Radio: TRadioButton;
    teacher_reset_Radio: TRadioButton;
    teacher_fnd_edit: TLabeledEdit;
    teacher_cond_edit: TLabeledEdit;
    teacherGrid: TDBGrid;
    showsbdatabox: TGroupBox;
    showsbDBLList: TDBLookupListBox;
    teacher_btn_Box: TGroupBox;
    teacher_inp_Box: TGroupBox;
    insBtn: TButton;
    ins_teacher_data_box: TGroupBox;
    teacher_ins_Grid: TDBGrid;
    fio_inp: TLabeledEdit;
    dep_inp: TLabeledEdit;
    upd_teacher_dataBox: TGroupBox;
    upd_teacher_btnBox: TGroupBox;
    upd_teacher_inpBox: TGroupBox;
    teacher_upd_btn: TButton;
    upd_teacher_Grid: TDBGrid;
    upd_teacher_t_lbl: TStaticText;
    upd_teacher_DBL: TDBLookupComboBox;
    upd_teacher_dep_inp: TLabeledEdit;
    del_teacher_dataBox: TGroupBox;
    del_teacher_btnBox: TGroupBox;
    del_teacher_inpBox: TGroupBox;
    del_teacher_delBtn: TButton;
    del_teacher_delGrid: TDBGrid;
    del_teacher_t_lbl: TStaticText;
    del_teacher_t_dbl: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure teacher_sel_btnClick(Sender: TObject);
    procedure teacher_fnd_editKeyPress(Sender: TObject; var Key: Char);
    procedure teacher_fio_RadioClick(Sender: TObject);
    procedure teacher_dep_RadioClick(Sender: TObject);
    procedure teacher_reset_RadioClick(Sender: TObject);
    procedure insBtnClick(Sender: TObject);
    procedure teacher_upd_btnClick(Sender: TObject);
    procedure del_teacher_delBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_teacher: TFrm_teacher;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_teacher.del_teacher_delBtnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (del_teacher_t_dbl.Text='')
  );
  if AreFieldsEmpty then
  begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
    try
      with dm.del_teacher do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@id_teacher').Value
           :=dm.teacherQuery.FieldByName('id_teacher').AsString;
           ExecProc;
           dm.teacherQuery.Close;
           dm.teacherQuery.Open;
        MessageDlg('Изменения внесены', mtInformation, [mbOK], 0);
      end;
    except
      on E: EADOError do
      begin
        ShowMessage('Ошибка: ' + E.Message);
      end;
      on E: Exception do
      begin
        ShowMessage('Ошибка: ' + E.Message);
      end;
    end;

end;

procedure TFrm_teacher.FormActivate(Sender: TObject);
begin
  dm.teacherQuery.Open;
  dm.subjQuery.Open;
  dm.StudQuery.Open;
  dm.gradeQuery.Open;
  AdjustDBGridColumnWidths('Frm_teacher',6000, 10);
end;

procedure TFrm_teacher.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_teacher.FormCreate(Sender: TObject);
begin
  Frm_teacher.KeyPreview:=true;
  Frm_teacher.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);
end;

procedure TFrm_teacher.insBtnClick(Sender: TObject);
const
AllowedChars: TSysCharSet = ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
   AreFieldsEmpty:=(
 (Trim(fio_inp.Text)='')or
 (Trim(dep_inp.Text)='')
   );
   AreFieldsValid:=(
   ValidateComponentText(fio_inp,AllowedChars)and
   ValidateComponentText(dep_inp,AllowedChars)
   );
   if AreFieldsEmpty or not AreFieldsValid then
   begin
       MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
   end;
   try
      with dm.ins_teacher do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@fio').Value :=fio_inp.Text;
           Parameters.ParamByName('@department').Value:=dep_inp.Text;
           ExecProc;
           dm.teacherQuery.Close;
           dm.teacherQuery.Open;
        MessageDlg('Изменения внесены', mtInformation, [mbOK], 0);
      end;
    except
      on E: EADOError do
      begin
        ShowMessage('Ошибка: ' + E.Message);
      end;
      on E: Exception do
      begin
        ShowMessage('Ошибка: ' + E.Message);
      end;
    end;
end;

procedure TFrm_teacher.teacher_dep_RadioClick(Sender: TObject);
begin
  if  teacher_dep_Radio.Checked=true then
  begin
    try
     with dm.teacherQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
       'select'+' '+
  'Teacher.id_teacher,'+' '+
  'Teacher.fio,'+' '+
  'Teacher.department'+' '+
  'from Teacher'+' '+
    'where 1=1'+' '+
    'order by Teacher.department asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_teacher.teacher_fio_RadioClick(Sender: TObject);
begin
  if  teacher_fio_Radio.Checked=true then
  begin
    try
     with dm.teacherQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
   'select'+' '+
  'Teacher.id_teacher,'+' '+
  'Teacher.fio,'+' '+
  'Teacher.department'+' '+
  'from Teacher'+' '+
    'where 1=1'+' '+
    'order by Teacher.fio asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_teacher.teacher_fnd_editKeyPress(Sender: TObject; var Key: Char);
begin
    try
   dm.teacherQuery.SQL.Text:=
  'select'+' '+
  'Teacher.id_teacher,'+' '+
  'Teacher.fio,'+' '+
  'Teacher.department'+' '+
  'from Teacher'+' '+
  'where 1=1'+' '+
    'and Teacher.department like'+
   QuotedStr(Concat(teacher_fnd_edit.Text,#37));
   dm.teacherQuery.close;
   dm.teacherQuery.Open;
except on E: Exception do
  begin
  ShowMessage('Ошибка'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_teacher.teacher_reset_RadioClick(Sender: TObject);
  var i,j,c:Integer;
begin
   if  teacher_reset_radio.Checked=true then
with Frm_teacher do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_teacher do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.teacherQuery do
     begin
     Close;
     sql.Clear;
       sql.Text:=
    'select'+' '+
  'Teacher.id_teacher,'+' '+
  'Teacher.fio,'+' '+
  'Teacher.department'+' '+
  'from Teacher'+' '+
  'where 1=1';
     Open;
     end;
    with Frm_teacher do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_teacher.teacher_sel_btnClick(Sender: TObject);
begin
try
    if not DM.Connection.Connected then
      raise Exception.Create('Соединнение с базой не установлено');
    with DM.sel_teacher_by_fio do
    begin
      Close;
      Parameters.ParamByName('@fio').Value :=teacher_cond_edit.Text;
      Open;
       DM.teacherQuery.Recordset:=dm.sel_teacher_by_fio.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;



procedure TFrm_teacher.teacher_upd_btnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (upd_teacher_DBL.Text='')or
   (Trim(upd_teacher_dep_inp.Text)='')
  );
  AreFieldsValid:=(
  ValidateComponentText(upd_teacher_dep_inp,AllowedChars)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.upd_teacher do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
          Parameters.ParamByName('@department').Value :=upd_teacher_dep_inp.Text;
          Parameters.ParamByName('@id_teacher').Value:=
          dm.teacherQuery.FieldByName('id_teacher').AsString;
           ExecProc;
           dm.teacherQuery.Close;
           dm.teacherQuery.Open;
        MessageDlg('Изменения внесены', mtInformation, [mbOK], 0);
      end;
    except
      on E: EADOError do
      begin
        ShowMessage('Ошибка: ' + E.Message);
      end;
      on E: Exception do
      begin
        ShowMessage('Ошибка: ' + E.Message);
      end;
    end;
end;

end.

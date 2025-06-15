unit Un_student;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, ExtCtrls,adodb,db, DBCtrls;

type
  TFrm_stud = class(TForm)
    StudPC: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    UpdTab: TTabSheet;
    DelTab: TTabSheet;
    Stud_inp_Box: TGroupBox;
    stud_data_Box: TGroupBox;
    stud_groupr_Box: TGroupBox;
    stud_btn_Box: TGroupBox;
    stud_sel_btn: TButton;
    stud_sel_grd: TDBGrid;
    stud_cond_edit: TLabeledEdit;
    stud_fnd_edit: TLabeledEdit;
    stud_fio_radio: TRadioButton;
    stud_mail_radio: TRadioButton;
    stud_reset_radio: TRadioButton;
    ins_stud_data_Box: TGroupBox;
    ins_stud_btn_Box: TGroupBox;
    stud_ins_btn: TButton;
    stud_upd_data_Box: TGroupBox;
    stud_upd_btn_Box: TGroupBox;
    stud_upd_inp_Box: TGroupBox;
    stud_u_st_lbl: TStaticText;
    upd_stud_upd_DBL: TDBLookupComboBox;
    stud_upd_btn: TButton;
    stud_del_inp_Box: TGroupBox;
    del_stud_btn_Box: TGroupBox;
    del_stud_data_Box: TGroupBox;
    del_stud_btn: TButton;
    del_stud_DBL: TDBLookupComboBox;
    del_stud_lBL: TStaticText;
    ins_stud_Grid: TDBGrid;
    stud_upd_Grid: TDBGrid;
    Del_stud_Grid: TDBGrid;
    about_studPC: TPageControl;
    about_studTab_one: TTabSheet;
    about_stud_TabTwo: TTabSheet;
    ins_stud_inp_Box: TGroupBox;
    Stud_mail_inp: TLabeledEdit;
    stud_fio_inp: TLabeledEdit;
    ev_date_lbl: TStaticText;
    ev_Date_inp: TDateTimePicker;
    ins_stud_inp_Box_two: TGroupBox;
    ins_atud_st_lbl: TStaticText;
    stud_st_Combo: TComboBox;
    ins_stud_gr_kbl: TStaticText;
    ins_stud_gr_dbl: TDBLookupComboBox;
    Stud_u_upd_lbl: TStaticText;
    stud_st_CB: TComboBox;
    isakademCB: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure stud_sel_btnClick(Sender: TObject);
    procedure stud_fnd_editKeyPress(Sender: TObject; var Key: Char);
    procedure stud_fio_radioClick(Sender: TObject);
    procedure stud_mail_radioClick(Sender: TObject);
    procedure stud_reset_radioClick(Sender: TObject);
    procedure stud_st_ComboChange(Sender: TObject);
    procedure stud_ins_btnClick(Sender: TObject);
    procedure stud_st_CBChange(Sender: TObject);
    procedure isakademCBClick(Sender: TObject);
    procedure stud_upd_btnClick(Sender: TObject);
    procedure del_stud_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_stud: TFrm_stud;
  akadem_st:integer;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_stud.del_stud_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (del_stud_DBL.Text='')
  );
  if AreFieldsEmpty then
  begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.del_stud do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('Соединение с базой не установлено',4001);
           Parameters.ParamByName('@id_student').Value :=
           dm.StudQuery.FieldByName('id_student').AsString;
           ExecProc;
           dm.studQuery.Close;
           dm.studQuery.Open;
        MessageDlg('Изменения внесены', mtInformation, [mbOK], 0);
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
    ShowMessage('Ошибка COM: ' + E.Message);
    HandleException(E); // Логирование ошибки
    raise; // Повторное выбрасывание исключения
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E); // Логирование ошибки
    raise;
end;
end;
end;

procedure TFrm_stud.FormActivate(Sender: TObject);
begin
  dm.groupQuery.Open;
  dm.StudQuery.Open;
  AdjustDBGridColumnWidths('Frm_stud',6000, 10);
end;

procedure TFrm_stud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
  akadem_st:=0;
end;

procedure TFrm_stud.FormCreate(Sender: TObject);
begin
  UpdateFormShowHint('Frm_stud');
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeComponentAnchors(Self);
  LoadFormState(Self);
  akadem_st:=0;
end;

procedure TFrm_stud.isakademCBClick(Sender: TObject);
begin
case isakademCB.Checked  of
  true:
  begin
    begin
      try
    with dm.studQuery do
    begin
      Close;
      sql.Clear;
      sql.Text :=
        'select'+' '+
        'Student.id_student,'+' '+
        'Student.fio,'+' '+
        'Student.email,'+' '+
        'Student.enrollment_date,'+' '+
'case when Student.m_status=1 then ''Обучается'' else ''Академический отпуск'' end as student_st,'+' '+
        'm_Group.group_name'+' '+
        'from Student'+' '+
        'inner join m_Group on m_Group.id_group=Student.id_group'+' '+
        'where 1=1'+' '+
        'and Student.m_status=0';
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
    ShowMessage('Ошибка COM: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E);
    raise;
  end;
  end;
end;//case
end;
  false:
  begin
      try
    with dm.studQuery do
    begin
      Close;
      sql.Clear;
      sql.Text :=
        'select'+' '+
        'Student.id_student,'+' '+
        'Student.fio,'+' '+
        'Student.email,'+' '+
        'Student.enrollment_date,'+' '+
'case when Student.m_status=1 then ''Обучается'' else ''Академический отпуск'' end as student_st,'+' '+
        'm_Group.group_name'+' '+
        'from Student'+' '+
        'inner join m_Group on m_Group.id_group=Student.id_group'+' '+
        'where 1=1'+' '+
        'and Student.m_status=1';
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
    ShowMessage('Ошибка COM: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E);
    raise;
  end;

end;//case
end;
end;
end;

procedure TFrm_stud.stud_fio_radioClick(Sender: TObject);
begin
  if  stud_fio_radio.Checked=true then
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
        'Student.email,'+' '+
        'Student.enrollment_date,'+' '+
'case when Student.m_status=1 then ''Обучается'' else ''Академический отпуск'' end as student_st,'+' '+
        'm_Group.group_name'+' '+
        'from Student'+' '+
        'inner join m_Group on m_Group.id_group=Student.id_group'+' '+
        'where 1=1'+' '+
         'and Student.m_status=1'+' '+
         'order by Student.fio asc';
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
    ShowMessage('Ошибка  Ole: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E);
    Raise;
  end;
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
        'Student.email,'+' '+
        'Student.enrollment_date,'+' '+
'case when Student.m_status=1 then ''Обучается'' else ''Академический отпуск'' end as student_st,'+' '+
        'm_Group.group_name'+' '+
        'from Student'+' '+
        'inner join m_Group on m_Group.id_group=Student.id_group'+' '+
        'where 1=1'+' '+
        'and Student.m_status=1'+' '+
  'and Student.email like'+' '+
   QuotedStr(Concat(stud_fnd_Edit.Text,#37));
   dm.studQuery.close;
   dm.studQuery.Open;
except
   on E: EDatabaseError do
  begin
    ShowMessage('Ошибка базы данных: ' + E.Message);
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
    ShowMessage('Общая ощибка: ' + E.Message);
    HandleException(E);
    raise;
end;
end;
end;

procedure TFrm_stud.stud_ins_btnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (Trim(stud_fio_inp.Text)='')or
  (Trim(Stud_mail_inp.Text)='')or
  (stud_st_Combo.Text='')or
  (ins_stud_gr_dbl.Text='')
  );
  AreFieldsValid:=(
  ValidateComponentText(stud_fio_inp,AllowedChars)and
  IsValidEmail(Stud_mail_inp.Text)
  );
  if AreFieldsEmpty and not AreFieldsValid then
  begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_stud do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('Соединение с базой не установлено',4001);
           Parameters.ParamByName('@fio').Value :=stud_fio_inp.Text;
           Parameters.ParamByName('@email').Value:=Stud_mail_inp.Text;
           Parameters.ParamByName('@enrollment_date').Value:=ev_Date_inp.Date;
           Parameters.ParamByName('@m_status').Value:=akadem_st;
           Parameters.ParamByName('@id_group').Value:=
           dm.groupQuery.FieldByName('id_group').AsString;
           ExecProc;
           dm.studQuery.Close;
           dm.studQuery.Open;
        MessageDlg('Изменения внесены', mtInformation, [mbOK], 0);
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
    ShowMessage('Ошибка COM: ' + E.Message);
    HandleException(E); // Логирование ошибки
    raise; // Повторное выбрасывание исключения
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E); // Логирование ошибки
    raise;
end;
end;
end;

procedure TFrm_stud.stud_mail_radioClick(Sender: TObject);
begin
  if  stud_mail_radio.Checked=true then
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
        'Student.email,'+' '+
        'Student.enrollment_date,'+' '+
'case when Student.m_status=1 then ''Обучается'' else ''Академический отпуск'' end as student_st,'+' '+
        'm_Group.group_name'+' '+
        'from Student'+' '+
        'inner join m_Group on m_Group.id_group=Student.id_group'+' '+
        'where 1=1'+' '+
        'and Student.m_status=1'+' '+
       'order by Student.email asc';
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
    Raise;
  end;
end;
end;
end;

procedure TFrm_stud.stud_reset_radioClick(Sender: TObject);
var i,j,c:Integer;
begin
  try
  if stud_reset_radio.Checked then
  begin
    with Frm_stud do
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
    with dm.studQuery do
    begin
      Close;
      sql.Clear;
      sql.Text :=
        'select'+' '+
        'Student.id_student,'+' '+
        'Student.fio,'+' '+
        'Student.email,'+' '+
        'Student.enrollment_date,'+' '+
'case when Student.m_status=1 then ''Обучается'' else ''Академический отпуск'' end as student_st,'+' '+
        'm_Group.group_name'+' '+
        'from Student'+' '+
        'inner join m_Group on m_Group.id_group=Student.id_group'+' '+
        'where 1=1'+' '+
        'and Student.m_status=1';
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
    ShowMessage('Ошибка COM: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E);
    raise;
  end;
end;
end;

procedure TFrm_stud.stud_sel_btnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise EDatabaseError.Create('Cоединение с базой не установлено ',4001);
    with DM.sel_stud_by_fio do
    begin
      Close;
      Parameters.ParamByName('@fio').Value :=stud_cond_edit.Text;
      Open;
       DM.studQuery.Recordset:=dm.sel_stud_by_fio.Recordset;
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
    ShowMessage('Ошибка  Ole: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E);
    Raise;
  end;
end;
end;

procedure TFrm_stud.stud_st_CBChange(Sender: TObject);
begin
if stud_st_Cb.ItemIndex=0 then  akadem_st:=1
  else  akadem_st:=0;
end;

procedure TFrm_stud.stud_st_ComboChange(Sender: TObject);
begin
if stud_st_Combo.ItemIndex=0 then  akadem_st:=1
  else  akadem_st:=0;
end;

procedure TFrm_stud.stud_upd_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  case akadem_st of
  0:
  begin
   AreFieldsEmpty:=(
   (upd_stud_upd_DBL.Text='')
   );
   if AreFieldsEmpty then
   begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
   end;
    try
      with dm.upd_stud do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('Соединение с базой не установлено',4001);
           Parameters.ParamByName('@id_student').Value :=
           dm.StudQuery.FieldByName('id_student').AsString;
           Parameters.ParamByName('@m_status').Value:=akadem_st;
           ExecProc;
           dm.StudQuery.Close;
           dm.StudQuery.Open;
        MessageDlg('Изменения внесены', mtInformation, [mbOK], 0);
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
    ShowMessage('Ошибка COM: ' + E.Message);
    HandleException(E); // Логирование ошибки
    raise; // Повторное выбрасывание исключения
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E); // Логирование ошибки
    raise;
end;
end;
  end;
  1:
  begin
   AreFieldsEmpty:=(
   (upd_stud_upd_DBL.Text='')
   );
   if AreFieldsEmpty then
   begin
   MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
   end;
   try
      with dm.upd_stud do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('Соединение с базой не установлено',4001);
           Parameters.ParamByName('@id_student').Value :=
           dm.StudQuery.FieldByName('id_student').AsString;
           Parameters.ParamByName('@m_status').Value:=akadem_st;
           ExecProc;
           dm.studQuery.Close;
           dm.studQuery.Open;
        MessageDlg('Изменения внесены', mtInformation, [mbOK], 0);
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
    ShowMessage('Ошибка COM: ' + E.Message);
    HandleException(E); // Логирование ошибки
    raise; // Повторное выбрасывание исключения
  end;
  on E: Exception do
  begin
    ShowMessage('Общая ошибка: ' + E.Message);
    HandleException(E); // Логирование ошибки
    raise;
end;
end;
  end;
  end;          //case
end;

end.

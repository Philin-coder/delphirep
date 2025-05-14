unit Un_fadmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls,adodb,db, DBCtrls;

type
  TFrm_fadmin = class(TForm)
    FadminPC: TPageControl;
    seLTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    sel_admincondBox: TGroupBox;
    m_admin_grupper: TGroupBox;
    seladmbtnBox: TGroupBox;
    sel_adm_data_box: TGroupBox;
    m_adminsekBtn: TButton;
    m_addminselgrd: TDBGrid;
    fio_cond_edit: TLabeledEdit;
    sel_adm_fnd_Edit: TLabeledEdit;
    Radiofiogrupper: TRadioButton;
    Radiosmgrupper: TRadioButton;
    adm_reset_radio: TRadioButton;
    ins_adm_dataBox: TGroupBox;
    ins_adm_inpBox: TGroupBox;
    ins_adm_btn_Box: TGroupBox;
    ins_admBtn: TButton;
    fio_inp: TLabeledEdit;
    ins_adm_dataGid: TDBGrid;
    sm_inp_lbl: TStaticText;
    smena_inp: TComboBox;
    liveQuercB: TCheckBox;
    lqPanel: TPanel;
    lqsvBtn: TButton;
    upd_adm_inp_Box: TGroupBox;
    upd_adm_btn_Box: TGroupBox;
    upd_adm_data_box: TGroupBox;
    upd_adm_btn: TButton;
    upd_adm_grd: TDBGrid;
    upd_adm_adm_lbl: TStaticText;
    upd_adm_u_dbl: TDBLookupComboBox;
    upd_adm_ulbl: TStaticText;
    upd_adm_sm_inp: TComboBox;
    del_adm_inpBox: TGroupBox;
    del_adm_dataBox: TGroupBox;
    del_adm_btn_Box: TGroupBox;
    del_adm_d_btn: TButton;
    del_adm_d_gr: TDBGrid;
    del_dbl_adm_lbl: TStaticText;
    del_dbl_adm_dbl: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadiofiogrupperClick(Sender: TObject);
    procedure RadiosmgrupperClick(Sender: TObject);
    procedure adm_reset_radioClick(Sender: TObject);
    procedure sel_adm_fnd_EditKeyPress(Sender: TObject; var Key: Char);
    procedure m_adminsekBtnClick(Sender: TObject);
    procedure smena_inpChange(Sender: TObject);
    procedure ins_admBtnClick(Sender: TObject);
    procedure smena_inpKeyPress(Sender: TObject; var Key: Char);
    procedure liveQuercBClick(Sender: TObject);
    procedure lqsvBtnClick(Sender: TObject);
    procedure upd_adm_sm_inpChange(Sender: TObject);
    procedure upd_adm_sm_inpKeyPress(Sender: TObject; var Key: Char);
    procedure upd_adm_btnClick(Sender: TObject);
    procedure del_adm_d_btnClick(Sender: TObject);
    procedure m_addminselgrdDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_fadmin: TFrm_fadmin;
  var sm_st:Integer;

implementation

uses Un_dm, Un_func, Un_twiker;

{$R *.dfm}

procedure TFrm_fadmin.adm_reset_radioClick(Sender: TObject);
var i,j,c:Integer;
    begin
if  adm_reset_radio.Checked=true then
with Frm_fadmin do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_fadmin do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.admQuery do
     begin
     Close;
     sql.Clear;
       sql.Text:=
      'select'+' '+
     'm_admin.id_admin,'+
    'm_admin.fio_admin,'+
    'case when m_admin.smena=0 then ''Ночная'' when m_admin.smena=1'+' '+
    'then ''Дневная'' when m_admin.smena=2'+' '+
    'then ''Вечерняя''  else ''Утренняя'' end as smena'+' '+
    'from'+' '+
    'm_admin'+' '+
    'where 1=1';
     Open;
     end;
    with Frm_fadmin do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
    end;




procedure TFrm_fadmin.del_adm_d_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
AreFieldsEmpty:=(
(del_dbl_adm_dbl.Text='')
);
  if AreFieldsEmpty then
  begin
      MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.del_adm do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@id_admin').Value :=
           dm.admQuery.FieldByName('id_admin').AsString;
           ExecProc;
           dm.admQuery.Close;
           dm.admQuery.Open;
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

procedure TFrm_fadmin.FormActivate(Sender: TObject);
begin
  dm.admQuery.Open;
  AdjustDBGridColumnWidths('Frm_fadmin',6000, 10);
end;

procedure TFrm_fadmin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  sm_st:=0;
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_fadmin.FormCreate(Sender: TObject);
begin
Frm_fadmin.KeyPreview:=true;
 Frm_fadmin.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
 sm_st:=0;
end;

procedure TFrm_fadmin.ins_admBtnClick(Sender: TObject);
  const
AllowedChars: TSysCharSet = ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
 AreFieldsEmpty:=(
 (Trim(fio_inp.Text)='')or
 ((smena_inp.Text)='')
 );
 AreFieldsValid:=(
 ValidateComponentText(fio_inp,AllowedChars)
 );
if AreFieldsEmpty or not AreFieldsValid then
begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
end;
try
      with dm.ins_adm do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@fio_admin').Value :=fio_inp.Text;
           Parameters.ParamByName('@smena').Value:=sm_st;
           ExecProc;
           dm.admQuery.Close;
           dm.admQuery.Open;
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

procedure TFrm_fadmin.liveQuercBClick(Sender: TObject);
begin
case liveQuercB.Checked of
true:
begin
  with dm.admQuery do
begin
  Close;
  LockType:=ltOptimistic;
  CursorType:= ctKeyset;
  CursorLocation := clUseClient;
  open;
end;
  ins_adm_dataGid.ReadOnly:=false;
end;
false:
begin
with dm.admQuery do
begin
  Close;
  LockType:=ltOptimistic;
  CursorType:= ctStatic;
  CursorLocation := clUseClient;
  Open;
end;
  ins_adm_dataGid.ReadOnly:=True;
end;

end;//case
end;

procedure TFrm_fadmin.lqsvBtnClick(Sender: TObject);
var
  UserResponse: Integer;
begin
  dm.Connection.BeginTrans;
  try
    if dm.admQuery.State in [dsEdit, dsInsert] then
      dm.admQuery.Post;
    UserResponse := MessageDlg('Вы уверены, что хотите сохранить изменения?',
    mtConfirmation, [mbYes, mbNo], 0);

    if UserResponse = mrYes then
    begin
      dm.Connection.CommitTrans;
      dm.admQuery.DisableControls;
      try
        dm.admQuery.Close;
        dm.admQuery.SQL.Text :=
          'select' + ' ' +
          'm_admin.id_admin,' +
          'm_admin.fio_admin,' +
          'case when m_admin.smena=0 then ''Ночная'' when m_admin.smena=1' + ' ' +
          'then ''Дневная'' when m_admin.smena=2' + ' ' +
          'then ''Вечерняя''  else ''Утренняя'' end as smena' + ' ' +
          'from' + ' ' +
          'm_admin' + ' ' +
          'where 1=1';
        dm.admQuery.Open;
      finally
        dm.admQuery.EnableControls;
      end;
      ShowMessage('Изменения успешно сохранены.');
    end
    else
    begin
      // Отменяем транзакцию, если пользователь отказался
      dm.Connection.RollbackTrans;
      ShowMessage('Изменения отменены.');
    end;
  except
    on E: Exception do
    begin
      dm.Connection.RollbackTrans;
      ShowMessage('Ошибка при сохранении данных: ' + E.Message);
    end;
  end;

end;


procedure TFrm_fadmin.m_addminselgrdDblClick(Sender: TObject);
   var SelectedRowNumber:Integer;
begin
 if (m_addminselgrd.DataSource.DataSet.Active)and
 not(m_addminselgrd.DataSource.DataSet.IsEmpty)  then
 begin
     SelectedRowNumber := m_addminselgrd.DataSource.DataSet.RecNo;
  try
    UpdateFormProperties('frm_twiker', 'Форма работы с настройками',
      clBtnFace, 1024, 768);
      frm_twiker.Number:=SelectedRowNumber;
    frm_twiker.ShowModal;
      dm.admQuery.Close;
        dm.admQuery.SQL.Text :=
          'select' + ' ' +
          'm_admin.id_admin,' +
          'm_admin.fio_admin,' +
          'case when m_admin.smena=0 then ''Ночная'' when m_admin.smena=1' + ' ' +
          'then ''Дневная'' when m_admin.smena=2' + ' ' +
          'then ''Вечерняя''  else ''Утренняя'' end as smena' + ' ' +
          'from' + ' ' +
          'm_admin' + ' ' +
          'where 1=1';
        dm.admQuery.Open;
  except
    frm_twiker.Free;
    raise;
  end;
 end
  else
  begin
      ShowMessage('Набор данных пуст');
       Exit;
  end;

  end;


procedure TFrm_fadmin.m_adminsekBtnClick(Sender: TObject);
begin
try
    if not DM.Connection.Connected then
      raise Exception.Create('Cоединение с базой не установдено');
    with DM.sel_adm_by_fio do
    begin
      Close;
      Parameters.ParamByName('@fio_admin').Value := fio_cond_edit.Text;
      Open;
       DM.admQuery.Recordset:=dm.sel_adm_by_fio.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;

procedure TFrm_fadmin.RadiofiogrupperClick(Sender: TObject);
begin
if  Radiofiogrupper.Checked=true then
  begin
    try
     with dm.admQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
      'select'+' '+
     'm_admin.id_admin,'+
    'm_admin.fio_admin,'+
    'case when m_admin.smena=0 then ''Ночная'' when m_admin.smena=1'+' '+
    'then ''Дневная'' when m_admin.smena=2'+' '+
    'then ''Вечерняя''  else ''Утренняя'' end as smena'+' '+
    'from'+' '+
    'm_admin'+' '+
    'where 1=1'+
    'order by m_admin.fio_admin asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_fadmin.RadiosmgrupperClick(Sender: TObject);
begin
if  Radiosmgrupper.Checked=true then
  begin
    try
     with dm.admQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
      'select'+' '+
     'm_admin.id_admin,'+
    'm_admin.fio_admin,'+
    'case when m_admin.smena=0 then ''Ночная'' when m_admin.smena=1'+' '+
    'then ''Дневная'' when m_admin.smena=2'+' '+
    'then ''Вечерняя''  else ''Утренняя'' end as smena'+' '+
    'from'+' '+
    'm_admin'+' '+
    'where 1=1'+
    'order by m_admin.smena asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка'+' '+E.Message);
    end;
    end;
  end;

end;

procedure TFrm_fadmin.sel_adm_fnd_EditKeyPress(Sender: TObject; var Key: Char);
begin
try
   dm.admQuery.SQL.Text:=
   'select'+' '+
   'm_admin.id_admin,'+
    'm_admin.fio_admin,'+
    'case when m_admin.smena=0 then ''Ночная'' when m_admin.smena=1'+' '+
    'then ''Дневная'' when m_admin.smena=2'+' '+
    'then ''Вечерняя''  else ''Утренняя'' end as smena'+' '+
    'from'+' '+
    'm_admin'+' '+
    'where 1=1'+
    'and  m_admin.fio_admin like'+
   QuotedStr(Concat(sel_adm_fnd_edit.Text,#37));
   dm.admQuery.close;
   dm.admQuery.Open;
except on E: Exception do
  begin
  ShowMessage('Ошибка'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_fadmin.smena_inpChange(Sender: TObject);
begin
case smena_inp.ItemIndex of
0:
begin
 sm_st:=0;
end;
 1:
 begin
    sm_st:=1;
 end;
 2:
 begin
    sm_st:=2;
 end;
 3:
 begin
   sm_st:=3;
 end;
end; // case
end;

procedure TFrm_fadmin.smena_inpKeyPress(Sender: TObject; var Key: Char);
begin
 if not(Key in ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.',#8,#13]) then
 begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
 end;
 
end;

procedure TFrm_fadmin.upd_adm_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
AreFieldsEmpty:=(
(upd_adm_u_dbl.Text='')or
(upd_adm_sm_inp.Text='')
);
if AreFieldsEmpty then
begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
try
      with dm.upd_adm do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@id_admin').Value :=
           dm.admQuery.FieldByName('id_admin').AsString;
           Parameters.ParamByName('@smena').Value:=sm_st;
           ExecProc;
           dm.admQuery.Close;
           dm.admQuery.Open;
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

procedure TFrm_fadmin.upd_adm_sm_inpChange(Sender: TObject);
begin
case upd_adm_sm_inp.ItemIndex of
0:
begin
 sm_st:=0;
end;
 1:
 begin
    sm_st:=1;
 end;
 2:
 begin
    sm_st:=2;
 end;
 3:
 begin
   sm_st:=3;
 end;
end; // case
end;

procedure TFrm_fadmin.upd_adm_sm_inpKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.',#8,#13]) then
 begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
 end;
end;

end.

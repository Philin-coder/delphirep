unit Un_m_user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids,db,ADODB, Mask, ToolWin,
  ImgList, DBCtrls;

type
  TFrm_muser = class(TForm)
    m_user_PC: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    m_user_condBox: TGroupBox;
    m_user_groper: TGroupBox;
    m_user_dataBox: TGroupBox;
    m_user_btndBox: TGroupBox;
    m_user_sel_btn: TButton;
    sel_user_cond_edit: TLabeledEdit;
    sel_userGid: TDBGrid;
    sel_user_fnd_edit: TLabeledEdit;
    selRadioreset: TRadioButton;
    naim_grouper: TRadioButton;
    mu_ins_inpBox: TGroupBox;
    m_user_ntnBox: TGroupBox;
    ins_user_dataBox: TGroupBox;
    user_insBtn: TButton;
    user_ins_grd: TDBGrid;
    fio_inp: TLabeledEdit;
    ins_phone_lbl: TStaticText;
    phone_inp: TMaskEdit;
    user_pas_inp: TLabeledEdit;
    userToolBar: TToolBar;
    showpasbtn: TToolButton;
    hidepasbtn: TToolButton;
    userImageList: TImageList;
    upd_inp_box: TGroupBox;
    usr_upd_dataBox: TGroupBox;
    user_upd_btnBox: TGroupBox;
    upd_usrGrd: TDBGrid;
    upd_usr_Btn: TButton;
    upd_usr_phone_lbl: TStaticText;
    usr_upd_phone_inp: TMaskEdit;
    usr_upd_us_lbl: TStaticText;
    usr_upd_DBL: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure m_user_sel_btnClick(Sender: TObject);
    procedure sel_user_fnd_editKeyPress(Sender: TObject; var Key: Char);
    procedure naim_grouperClick(Sender: TObject);
    procedure selRadioresetClick(Sender: TObject);
    procedure phone_inpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure phone_inpExit(Sender: TObject);
    procedure showpasbtnClick(Sender: TObject);
    procedure hidepasbtnClick(Sender: TObject);
    procedure user_insBtnClick(Sender: TObject);
    procedure usr_upd_phone_inpExit(Sender: TObject);
    procedure upd_usr_BtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_muser: TFrm_muser;

implementation

uses Un_dm, Un_func, Un_main;

{$R *.dfm}

procedure TFrm_muser.FormActivate(Sender: TObject);
begin
  dm.muserQuery.Open
end;

procedure TFrm_muser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_muser.FormCreate(Sender: TObject);
begin
 Frm_muser.KeyPreview:=true;
 Frm_muser.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
 phone_inp.EditMask := '!+7 \(999\) 000-00-00;1;_';
     LoadIconFromResource('IYE',1,userImageList);
     showpasbtn.ImageIndex:=0;
     LoadIconFromResource('DS',1,userImageList);
     hidepasbtn.ImageIndex:=1;
     user_pas_inp.PasswordChar:='*';
     usr_upd_phone_inp.EditMask:='!+7 \(999\) 000-00-00;1;_';
     m_user_PC.ActivePage:=insTab;
end;

procedure TFrm_muser.FormShow(Sender: TObject);
begin
  fio_inp.SetFocus;
end;

procedure TFrm_muser.hidepasbtnClick(Sender: TObject);
begin
  user_pas_inp.PasswordChar:='*';
end;

procedure TFrm_muser.m_user_sel_btnClick(Sender: TObject);
begin
try
    if not DM.Connection.Connected then
      raise Exception.Create('Cоединение с базой не установлено');
    with DM.sel_user_by_fio do
    begin
      Close;
      Parameters.ParamByName('@fio').Value := sel_user_cond_edit.Text;
      Open;
       DM.muserQuery.Recordset:=dm.sel_user_by_fio.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;

procedure TFrm_muser.naim_grouperClick(Sender: TObject);
begin
if  naim_grouper.Checked=true then
  begin
    try
     with dm.muserQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
    'select'+' '+
    'm_user.id_user,'+' '+
    'm_user.fio,'+' '+
    'm_user.user_phone,'+ ' '+
    'm_user.user_pas'+' '+
    'from m_user'+' '+
     'where 1=1'+' '+
    'order by m_user.fio asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_muser.phone_inpExit(Sender: TObject);
begin
 if IsMaskEditEmpty(phone_inp) then
  begin
   phone_inp.Color := clRed;
    ShowMessage('Поле ввода телефона должно быть заполнено ');
    phone_inp.SetFocus;
  end
  else
    phone_inp.Color := clWindow;

end;

procedure TFrm_muser.phone_inpMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
// if IsMaskEditEmpty(phone_inp) then
//  begin
//   phone_inp.Color := clRed;
//    ShowMessage('Поле ввода телефона должно быть заполнено ');
//    phone_inp.SetFocus;
//  end
//  else
//    phone_inp.Color := clWindow;
end;

procedure TFrm_muser.selRadioresetClick(Sender: TObject);
  var i,j,c:Integer;
begin
if selRadioreset.Checked then
  with Frm_muser do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_muser do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.muserQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:=
     'select'+' '+
     'm_user.id_user,'+' '+
    'm_user.fio,'+' '+
    'm_user.user_phone,'+ ' '+
    'm_user.user_pas'+' '+
    'from m_user'+' '+
     'where 1=1';
     Open;
     end;
    with Frm_muser do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_muser.sel_user_fnd_editKeyPress(Sender: TObject; var Key: Char);
begin
 try
   dm.muserQuery.SQL.Text:=
   'select'+' '+
    'm_user.id_user,'+' '+
    'm_user.fio,'+' '+
    'm_user.user_phone,'+ ' '+
    'm_user.user_pas'+' '+
    'from m_user'+' '+
     'where 1=1'+
     'and m_user.fio like'+
   QuotedStr(Concat(sel_user_fnd_edit.Text,#37));
   dm.muserQuery.close;
   dm.muserQuery.Open;
except on E: Exception do
  begin
  ShowMessage('wrong situation'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_muser.showpasbtnClick(Sender: TObject);
begin
user_pas_inp.PasswordChar:=#0;
end;

procedure TFrm_muser.upd_usr_BtnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
AreFieldsEmpty:=(
(usr_upd_DBL.Text='')
);
if AreFieldsEmpty then
begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
end;
try
      with dm.upd_user do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@user_phone').Value :=usr_upd_phone_inp.Text;
           Parameters.ParamByName('@id_user').Value:=
           dm.muserQuery.FieldByName('id_user').AsString;
           ExecProc;
           dm.muserQuery.Close;
           dm.muserQuery.Open;
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

procedure TFrm_muser.user_insBtnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.','A'
  ..'Z','a'..'z'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
AreFieldsEmpty:=(
(Trim(fio_inp.Text)='')or
(Trim(user_pas_inp.Text)='')
);
AreFieldsValid:=(
ValidateComponentText(fio_inp,AllowedChars)and
ValidateComponentText(user_pas_inp,AllowedChars)
);
if AreFieldsEmpty or not AreFieldsValid then
begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
end;
try
      with dm.ins_user do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@fio').Value :=fio_inp.Text;
           Parameters.ParamByName('@user_phone').Value:=phone_inp.Text;
           Parameters.ParamByName('@user_pas').Value:=user_pas_inp.Text;
           ExecProc;
           dm.muserQuery.Close;
           dm.muserQuery.Open;
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
procedure TFrm_muser.usr_upd_phone_inpExit(Sender: TObject);
begin
 if IsMaskEditEmpty(usr_upd_phone_inp) then
  begin
   usr_upd_phone_inp.Color := clRed;
    ShowMessage('Поле ввода телефона должно быть заполнено ');
    usr_upd_phone_inp.SetFocus;
  end
  else
    usr_upd_phone_inp.Color := clWindow;
end;

end.

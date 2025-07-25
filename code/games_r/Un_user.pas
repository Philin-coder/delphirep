unit Un_user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,ADODB, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls,ActiveX,
  DBCtrls;

type
  TFrm_user = class(TForm)
    userPC: TPageControl;
    SelTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    usercondBox: TGroupBox;
    userGrouperBox: TGroupBox;
    userdataBox: TGroupBox;
    userbtnBox: TGroupBox;
    user_sel_Btn: TButton;
    user_selGrd: TDBGrid;
    user_cond_Edit: TLabeledEdit;
    user_fnd_Edit: TLabeledEdit;
    user_role_Radio: TRadioButton;
    user_reset_Radio: TRadioButton;
    user_data_Box: TGroupBox;
    user_btn_Box: TGroupBox;
    user_inp_Box: TGroupBox;
    user_ins_Btn: TButton;
    ins_user_role_inp: TLabeledEdit;
    user_upd_data_Box: TGroupBox;
    user_upd_inpBox: TGroupBox;
    user_upd_btnBox: TGroupBox;
    user_upd_btn: TButton;
    user_upd_e_lbl: TStaticText;
    user_upd_u_dbl: TDBLookupComboBox;
    user_del_data_Box: TGroupBox;
    user_del_btn_Box: TGroupBox;
    user_del_ipp_Box: TGroupBox;
    user_del_btn: TButton;
    user_del_e_lbl: TStaticText;
    user_del_e_dbl: TDBLookupComboBox;
    uaer_pass_Radio: TRadioButton;
    hidepassCB: TCheckBox;
    user_ins_Grd: TDBGrid;
    user_upd_Grd: TDBGrid;
    Del_user_grd: TDBGrid;
    ins_user_pass_inp: TLabeledEdit;
    user_u_pass_inp: TLabeledEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure user_sel_BtnClick(Sender: TObject);
    procedure user_fnd_EditKeyPress(Sender: TObject; var Key: Char);
    procedure user_role_RadioClick(Sender: TObject);
    procedure uaer_pass_RadioClick(Sender: TObject);
    procedure hidepassCBClick(Sender: TObject);
    procedure user_reset_RadioClick(Sender: TObject);
    procedure user_ins_BtnClick(Sender: TObject);
    procedure user_upd_btnClick(Sender: TObject);
    procedure user_del_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_user: TFrm_user;

implementation

uses Un_dm, Un_func;

{$R *.dfm}



procedure TFrm_user.FormActivate(Sender: TObject);
begin
  dm.usverQuery.Open;
  AdjustDBGridColumnWidths('Frm_user',6000, 10);
end;

procedure TFrm_user.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_user.FormCreate(Sender: TObject);
begin
  UpdateFormShowHint('Frm_user');
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeComponentAnchors(Self);
  LoadFormState(Self);
end;

procedure TFrm_user.hidepassCBClick(Sender: TObject);
begin
  case hidepassCB.Checked of
  true:
  begin
   with user_fnd_Edit do
    begin
    PasswordChar:=#0;
    end;
  end;
  false:
  begin
  with user_fnd_Edit do
    begin
    PasswordChar:='*';
    end;
  end;
  end;//case
end;

procedure TFrm_user.uaer_pass_RadioClick(Sender: TObject);
begin
  if  uaer_pass_Radio.Checked=true then
  begin
    try
     with dm.usverQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
         'select'+' '+
        'usver.usverId,'+' '+
        'usver.usver_role,'+' '+
        'usver.usver_pass'+' '+
        'from usver'+' '+
     'order by  usver.usver_pass asc';
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
  end;
end;
end;
end;

procedure TFrm_user.user_del_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (Trim(user_del_e_dbl.Text)='')
  );
  if AreFieldsEmpty then
  begin
      MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.del_user do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('���������� � ����� �� �����������',4001);
           Parameters.ParamByName('@usverId').Value :=
           dm.usverQuery.FieldByName('usverId').AsString;
           ExecProc;
           dm.usverQuery.Close;
           dm.usverQuery.Open;
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
end;
end;
end;

procedure TFrm_user.user_fnd_EditKeyPress(Sender: TObject; var Key: Char);
begin
  try
   dm.usverQuery.SQL.Text:=
   'select'+' '+
  'usver.usverId,'+' '+
  'usver.usver_role,'+' '+
  'usver.usver_pass'+' '+
  'from usver'+' '+
  'where 1=1'+' '+
   'and usver.usver_pass like'+
   QuotedStr(Concat(user_fnd_Edit.Text,#37));
   dm.usverQuery.close;
   dm.usverQuery.Open;
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
    ShowMessage('�����  ������: ' + E.Message);
    HandleException(E);
end;
end;
end;

procedure TFrm_user.user_ins_BtnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['�'..'�', '�'..'�', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (Trim(ins_user_role_inp.Text)='')or
  (Trim(ins_user_pass_inp.Text)='')
  );
  AreFieldsValid:=(
  ValidateComponentText(ins_user_role_inp,AllowedChars)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_user do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('���������� � ����� �� �����������',4001);
           Parameters.ParamByName('@usver_role').Value :=ins_user_role_inp.Text;
           Parameters.ParamByName('@usver_pass').Value:=ins_user_pass_inp.Text;
           ExecProc;
           dm.usverQuery.Close;
           dm.usverQuery.Open;
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
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������: ' + E.Message);
    HandleException(E);
end;
end;
end;

procedure TFrm_user.user_reset_RadioClick(Sender: TObject);
var i,j,c:Integer;
begin
  try
  if user_reset_Radio.Checked then
  begin
    with Frm_user do
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
    with dm.usverQuery do
    begin
      Close;
      sql.Clear;
      sql.Text :=
       'select'+' '+
  'usver.usverId,'+' '+
  'usver.usver_role,'+' '+
  'usver.usver_pass'+' '+
  'from usver'+' '+
  'where 1=1';
      Open;
    end;
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
    ShowMessage('������ COM: ' + E.Message);
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������: ' + E.Message);
    HandleException(E);
  end;
end;
end;

procedure TFrm_user.user_role_RadioClick(Sender: TObject);
begin
  if  user_role_Radio.Checked=true then
  begin
    try
     with dm.usverQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
  'select'+' '+
  'usver.usverId,'+' '+
  'usver.usver_role,'+' '+
  'usver.usver_pass'+' '+
  'from usver'+' '+
  'where 1=1'+' '+
     'order by  usver.usver_role asc';
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
  end;
end;
end;
end;

procedure TFrm_user.user_sel_BtnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise EDatabaseError.Create('C��������� � ����� �� �����������',4001);
    with DM.sel_user_by_role do
    begin
      Close;
      Parameters.ParamByName('@usver_role').Value :=user_cond_Edit.Text;
      Open;
       DM.usverQuery.Recordset:=dm.sel_user_by_role.Recordset;
    end;
  except
  on E: EDatabaseError do
  begin
    ShowMessage('������ ���� ������ : ' + E.Message);
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
  end;
end;
end;

procedure TFrm_user.user_upd_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (Trim(user_u_pass_inp.Text)='')or
  (user_upd_u_dbl.Text='')
  );
  if AreFieldsEmpty then
  begin
   MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
   try
      with dm.upd_usver do
      begin
        if not dm.Connection.Connected then
          raise EDatabaseError.Create('���������� � ����� �� �����������',4001);
           Parameters.ParamByName('@usverId').Value :=
           dm.usverQuery.FieldByName('usverId').AsString;
           Parameters.ParamByName('@usver_pass').Value:=user_u_pass_inp.Text;
           ExecProc;
           dm.usverQuery.Close;
           dm.usverQuery.Open;
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
    HandleException(E);
    raise;
  end;
  on E: Exception do
  begin
    ShowMessage('����� ������: ' + E.Message);
    HandleException(E);
end;
end;
end;

end.

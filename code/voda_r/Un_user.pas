unit Un_user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DB,ADODB, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls;

type
  TFrm_user = class(TForm)
    userPC: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    User_inp_boxBox: TGroupBox;
    user_data_box: TGroupBox;
    User_grouper: TGroupBox;
    User_btn_Box: TGroupBox;
    UserCondEdit: TLabeledEdit;
    USERFNDEdit: TLabeledEdit;
    User_sel_Btn: TButton;
    sel_user_GRD: TDBGrid;
    PassRadio: TRadioButton;
    logRadio: TRadioButton;
    resteRadio: TRadioButton;
    user_gata_Box: TGroupBox;
    userbtnBox: TGroupBox;
    user_inp_Box: TGroupBox;
    user_insBtn: TButton;
    user_log_inp: TLabeledEdit;
    user_pass_inp: TLabeledEdit;
    user_datagrd: TDBGrid;
    u_upd_datapBox: TGroupBox;
    uupd_inpBox: TGroupBox;
    useru_btntBox: TGroupBox;
    u_upd_Btn: TButton;
    u_username_lbl: TStaticText;
    u_upd_Grd: TDBGrid;
    U_upd_DBL: TDBLookupComboBox;
    U_upd_pass_inp: TLabeledEdit;
    u_del_inpBox: TGroupBox;
    U_delbtnBox: TGroupBox;
    u_del_data_Box: TGroupBox;
    u_delDBL: TDBLookupComboBox;
    del_user_lbl: TStaticText;
    u_del_btn: TButton;
    u_del_Grd: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure User_sel_BtnClick(Sender: TObject);
    procedure USERFNDEditKeyPress(Sender: TObject; var Key: Char);
    procedure PassRadioClick(Sender: TObject);
    procedure logRadioClick(Sender: TObject);
    procedure resteRadioClick(Sender: TObject);
    procedure user_insBtnClick(Sender: TObject);
    procedure u_upd_BtnClick(Sender: TObject);
    procedure u_del_btnClick(Sender: TObject);
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
  dm.userQuery.Open;
  AdjustDBGridColumnWidths('Frm_user',6000, 10)
end;

procedure TFrm_user.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SaveFormState(Self);
   CloseAllQueriesOnDataModule('dm');
   Action := caFree;
end;

procedure TFrm_user.FormCreate(Sender: TObject);
begin
  Frm_user.KeyPreview:=true;
  Frm_user.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);
end;

procedure TFrm_user.logRadioClick(Sender: TObject);
begin
  if  logRadio.Checked=true then
  begin
    try
     with dm.userQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
     'select'+' '+
   'usver.userid,'+' '+
   'usver.user_name,'+' '+
   'usver.user_pass'+' '+
    'from usver'+' '+
    'where 1=1'+' '+
    'order by usver.user_name asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������ :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_user.PassRadioClick(Sender: TObject);
begin
    if  passRadio.Checked=true then
  begin
    try
     with dm.userQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
     'select'+' '+
   'usver.userid,'+' '+
   'usver.user_name,'+' '+
   'usver.user_pass'+' '+
    'from usver'+' '+
    'where 1=1'+' '+
    'order by usver.user_pass asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������ :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_user.resteRadioClick(Sender: TObject);
var i,j,c:Integer;
begin
  if resteRadio.Checked=true then
with Frm_user do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_user do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.userQuery do
     begin
     Close;
     sql.Clear;
     sql.Text:=
   'select'+' '+
   'usver.userid,'+' '+
   'usver.user_name,'+' '+
   'usver.user_pass'+' '+
    'from usver'+' '+
    'where 1=1';
  Open;
     end;
    with Frm_user do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_user.USERFNDEditKeyPress(Sender: TObject; var Key: Char);
begin
    try
   dm.userQuery.SQL.Text:=
   'select'+' '+
   'usver.userid,'+' '+
   'usver.user_name,'+' '+
   'usver.user_pass'+' '+
    'from usver'+' '+
    'where 1=1'+' '+
   'and usver.user_pass like'+
   QuotedStr(Concat(userfndedit.Text,#37));
   dm.userQuery.close;
   dm.userQuery.Open;
except on E: Exception do
  begin
  ShowMessage('������'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_user.user_insBtnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (Trim(user_log_inp.Text)='')or
  (Trim(user_pass_inp.Text)='')
  );
  if AreFieldsEmpty then
  begin
       MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_user do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@user_name').Value :=user_log_inp.Text;
           Parameters.ParamByName('@user_pass').Value:=user_pass_inp.Text;
           ExecProc;
           dm.userQuery.Close;
           dm.userQuery.Open;
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

procedure TFrm_user.User_sel_BtnClick(Sender: TObject);
begin
   try
    if not DM.Connection.Connected then
      raise Exception.Create('���������� � ����� �� ������������');
    with DM.sel_user_by_login do
    begin
      Close;
      Parameters.ParamByName('@user_name').Value :=usercondedit.Text;
      Open;
       DM.userQuery.Recordset:=dm.sel_user_by_login.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('������: ' + E.Message);
    on E: Exception do
      ShowMessage('������: ' + E.Message);
  end;
end;

procedure TFrm_user.u_del_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (u_delDBL.Text='')
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
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@userid').Value
           :=dm.userQuery.FieldByName('userid').AsString;
           ExecProc;
           dm.userQuery.Close;
           dm.userQuery.Open;
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

procedure TFrm_user.u_upd_BtnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
    AreFieldsEmpty:=(
    (Trim(U_upd_pass_inp.Text)='')or
    (U_upd_DBL.Text='')
    );
    if AreFieldsEmpty then
    begin
         MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
    end;
    try
      with dm.upd_user do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@userid').Value :=
           DM.userQuery.FieldByName('userid').AsString;
           Parameters.ParamByName('@user_pass').Value:=U_upd_pass_inp.Text;
           ExecProc;
           dm.userQuery.Close;
           dm.userQuery.Open;
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

unit Un_master;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DB,ADODB, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls;

type
  TFrm_master = class(TForm)
    masterPC: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    master_inp_boxBox: TGroupBox;
    master_data_box: TGroupBox;
    master_grouper: TGroupBox;
    master_btn_Box: TGroupBox;
    masterCondEdit: TLabeledEdit;
    masterfndEdit: TLabeledEdit;
    master_sel_Btn: TButton;
    sel_master_GRD: TDBGrid;
    master_fio_Radio: TRadioButton;
    master_dnr_Radio: TRadioButton;
    master_resetRadio: TRadioButton;
    ins_master_data_Box: TGroupBox;
    ins_masterbtnBox: TGroupBox;
    ins_master_insBtn: TButton;
    m_upd_datapBox: TGroupBox;
    m_upd_inpBox: TGroupBox;
    masterr_u_btntBox: TGroupBox;
    m_upd_Btn: TButton;
    m_username_lbl: TStaticText;
    M_upd_DBL: TDBLookupComboBox;
    M_upd_kont_data_inp: TLabeledEdit;
    m_del_inpBox: TGroupBox;
    m_delbtnBox: TGroupBox;
    m_del_data_Box: TGroupBox;
    m_del_lbl: TStaticText;
    m_delDBL: TDBLookupComboBox;
    del_master_lbl: TStaticText;
    m_del_btn: TButton;
    ins_masterGrd: TDBGrid;
    about_masterPC: TPageControl;
    about_master_Tab_one: TTabSheet;
    about_master_Tab_two: TTabSheet;
    ins_master_inp_Box: TGroupBox;
    master_fio_inp: TLabeledEdit;
    master_kont_data_inp: TLabeledEdit;
    ins_master_inpBox_two: TGroupBox;
    dnr_lbl: TStaticText;
    dnr_inp: TDateTimePicker;
    dns_lbl: TStaticText;
    dns_inp: TDateTimePicker;
    userid_lbl: TStaticText;
    userDBL: TDBLookupComboBox;
    m_upd_Grid: TDBGrid;
    del_master_grd: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure master_sel_BtnClick(Sender: TObject);
    procedure masterfndEditKeyPress(Sender: TObject; var Key: Char);
    procedure master_fio_RadioClick(Sender: TObject);
    procedure master_dnr_RadioClick(Sender: TObject);
    procedure master_resetRadioClick(Sender: TObject);
    procedure ins_master_insBtnClick(Sender: TObject);
    procedure m_upd_BtnClick(Sender: TObject);
    procedure m_del_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_master: TFrm_master;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_master.FormActivate(Sender: TObject);
begin
  dm.userQuery.Open;
  dm.masterQuery.Open;
  AdjustDBGridColumnWidths('Frm_master',6000, 10)
end;

procedure TFrm_master.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SaveFormState(Self);
   CloseAllQueriesOnDataModule('dm');
   Action := caFree;
end;

procedure TFrm_master.FormCreate(Sender: TObject);
begin
  Frm_master.KeyPreview:=true;
  Frm_master.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);
  dnr_inp.Format := 'dd/MM/yyyy hh:mm:ss';
  dns_inp.Format := 'dd/MM/yyyy hh:mm:ss';
end;

procedure TFrm_master.ins_master_insBtnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['�'..'�', '�'..'�', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (Trim(master_fio_inp.Text)='')or
  (Trim(master_kont_data_inp.Text)='')or
  (userDBL.Text='')
  );
  AreFieldsValid:=(
  ValidateComponentText(master_fio_inp,AllowedChars)and
  IsValidEmail(master_kont_data_inp.Text)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
    try
      with dm.ins_master do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@fio_master').Value :=master_fio_inp.Text;
           Parameters.ParamByName('@kont_d').Value:=master_kont_data_inp.Text;
           Parameters.ParamByName('@dnr').Value:=dnr_inp.DateTime;
           Parameters.ParamByName('@dns').Value:=dns_inp.DateTime;
           Parameters.ParamByName('@userid').Value:=
           dm.userQuery.FieldByName('userid').AsString;
           ExecProc;
           dm.masterQuery.Close;
           dm.masterQuery.Open;
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

procedure TFrm_master.masterfndEditKeyPress(Sender: TObject; var Key: Char);
begin
  try
   dm.masterQuery.SQL.Text:=
   'select'+' '+
    'm_master.id_master,'+' '+
    'm_master.fio_master,'+' '+
    'm_master.kont_d,'+' '+
    'm_master.dnr,'+' '+
    'm_master.dns,'+' '+
    'usver.user_name'+' '+
    'from m_master'+' '+
    'inner join usver on usver.userid=m_master.userid'+' '+
  'where 1=1'+' '+
  'and usver.user_name like'+
   QuotedStr(Concat(masterfndEdit.Text,#37));
   dm.masterQuery.close;
   dm.masterQuery.Open;
except on E: Exception do
  begin
  ShowMessage('������'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_master.master_dnr_RadioClick(Sender: TObject);
begin
  if  master_dnr_Radio.Checked=true then
  begin
    try
     with dm.masterQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
    'select'+' '+
    'm_master.id_master,'+' '+
    'm_master.fio_master,'+' '+
    'm_master.kont_d,'+' '+
    'm_master.dnr,'+' '+
    'm_master.dns,'+' '+
    'usver.user_name'+' '+
    'from m_master'+' '+
    'inner join usver on usver.userid=m_master.userid'+' '+
    'where 1=1'+' '+
    'order by m_master.dnr asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������ :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_master.master_fio_RadioClick(Sender: TObject);
begin
  if  master_fio_Radio.Checked=true then
  begin
    try
     with dm.masterQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
    'select'+' '+
    'm_master.id_master,'+' '+
    'm_master.fio_master,'+' '+
    'm_master.kont_d,'+' '+
    'm_master.dnr,'+' '+
    'm_master.dns,'+' '+
    'usver.user_name'+' '+
    'from m_master'+' '+
    'inner join usver on usver.userid=m_master.userid'+' '+
  'where 1=1'+' '+
    'order by m_master.fio_master asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������ :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_master.master_resetRadioClick(Sender: TObject);
var
  i,j,c:Integer;
begin
   if  master_resetRadio.Checked=true then
with Frm_master do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_master do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.masterQuery do
     begin
     Close;
     sql.Clear;
     sql.Text:=
      'select'+' '+
    'm_master.id_master,'+' '+
    'm_master.fio_master,'+' '+
    'm_master.kont_d,'+' '+
    'm_master.dnr,'+' '+
    'm_master.dns,'+' '+
    'usver.user_name'+' '+
    'from m_master'+' '+
    'inner join usver on usver.userid=m_master.userid'+' '+
  'where 1=1';
  Open;
     end;
    with Frm_master do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_master.master_sel_BtnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise Exception.Create('���������� � ����� �� �����������');
    with DM.sel_master_by_fio do
    begin
      Close;
      Parameters.ParamByName('@fio_master').Value :=masterCondEdit.Text;
      Open;
       DM.masterQuery.Recordset:=dm.sel_master_by_fio.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('������: ' + E.Message);
    on E: Exception do
      ShowMessage('������ ' + E.Message);
  end;
end;

procedure TFrm_master.m_del_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (m_delDBL.Text='')
  );
  if AreFieldsEmpty then
  begin
      MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
   try
      with dm.del_master do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@id_master').Value :=
           dm.masterQuery.FieldByName('id_master').AsString;
           ExecProc;
           dm.masterQuery.Close;
           dm.masterQuery.Open;
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

procedure TFrm_master.m_upd_BtnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (M_upd_DBL.Text='')or
  (Trim(M_upd_kont_data_inp.Text)='')
  );
  AreFieldsValid:=(
  IsValidEmail(M_upd_kont_data_inp.Text)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.upd_master do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@id_master').Value :=
           dm.masterQuery.FieldByName('id_master').AsString;
           Parameters.ParamByName('@kont_d').Value:=M_upd_kont_data_inp.Text;
           ExecProc;
           dm.masterQuery.Close;
           dm.masterQuery.Open;
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

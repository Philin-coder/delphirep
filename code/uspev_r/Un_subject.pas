unit Un_subject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls,db,ADODB;

type
  TFrm_subject = class(TForm)
    subj_pc: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    UpdTab: TTabSheet;
    delTab: TTabSheet;
    sel_subj_data_box: TGroupBox;
    subj_gr_box: TGroupBox;
    subj_btnBox: TGroupBox;
    subj_inp_Box: TGroupBox;
    subj_sel_btn: TButton;
    subj_name_Radio: TRadioButton;
    subj_credit_Radio: TRadioButton;
    subj_reset_Radio: TRadioButton;
    subj_fnd_edit: TLabeledEdit;
    subj_cond_edit: TLabeledEdit;
    subj_Grid: TDBGrid;
    showsbdatabox: TGroupBox;
    showsbDBLList: TDBLookupListBox;
    ins_subj_btn_Box: TGroupBox;
    ins_subj_inp_Box: TGroupBox;
    ins_subj_Btn: TButton;
    ins_subj_data_box: TGroupBox;
    subj_name_inp: TLabeledEdit;
    subj_credit_inp: TLabeledEdit;
    upd_subj_dataBox: TGroupBox;
    upd_subj_btnBox: TGroupBox;
    upd_subj_inpBox: TGroupBox;
    subj_upd_btn: TButton;
    upd_subj_s_lbl: TStaticText;
    upd_subj_DBL: TDBLookupComboBox;
    upd_subj_cred_inp: TLabeledEdit;
    del_subj_dataBox: TGroupBox;
    del_subj_btnBox: TGroupBox;
    del_subj_inpBox: TGroupBox;
    del_subj_delBtn: TButton;
    del_subj_s_lbl: TStaticText;
    del_subj_s_dbl: TDBLookupComboBox;
    subj_insGrid: TDBGrid;
    subj_upd_Grid: TDBGrid;
    subj_del_grid: TDBGrid;
    credit_grader: TUpDown;
    Upd_subj_cred_grader: TUpDown;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure subj_sel_btnClick(Sender: TObject);
    procedure subj_fnd_editKeyPress(Sender: TObject; var Key: Char);
    procedure subj_name_RadioClick(Sender: TObject);
    procedure subj_credit_RadioClick(Sender: TObject);
    procedure subj_reset_RadioClick(Sender: TObject);
    procedure ins_subj_BtnClick(Sender: TObject);
    procedure subj_upd_btnClick(Sender: TObject);
    procedure del_subj_delBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_subject: TFrm_subject;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_subject.del_subj_delBtnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (del_subj_s_dbl.Text='')
  );
  if AreFieldsEmpty then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.del_sub do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@id_subject').Value :=
           dm.subjQuery.FieldByName('id_subject').AsString;
           ExecProc;
           dm.subjQuery.Close;
           dm.subjQuery.Open;
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

procedure TFrm_subject.FormActivate(Sender: TObject);
begin
  dm.subjQuery.Open;
  AdjustDBGridColumnWidths('Frm_subject',6000, 10);
end;

procedure TFrm_subject.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_subject.FormCreate(Sender: TObject);
begin
  Frm_subject.KeyPreview:=true;
  Frm_subject.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeDBLookupListBox(Self, 'Arial', 10, clBlack, clWhite);
  LoadFormState(Self);
end;

procedure TFrm_subject.ins_subj_BtnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['�'..'�', '�'..'�', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
   (Trim(subj_name_inp.Text)='')or
   (credit_grader.Position=0)
  );
  AreFieldsValid:=(
  ValidateComponentText(subj_name_inp,AllowedChars)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_subject do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@Name').Value :=subj_name_inp.Text;
           Parameters.ParamByName('@credits').Value:=credit_grader.Position;
           ExecProc;
           dm.subjQuery.Close;
           dm.subjQuery.Open;
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

procedure TFrm_subject.subj_credit_RadioClick(Sender: TObject);
begin
  if  subj_credit_Radio.Checked=true then
  begin
    try
     with dm.subjQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
       'select'+' '+
       'Subject.id_subject,'+' '+
       'Subject.name,'+' '+
       'Subject.credits'+' '+
       'from Subject'+' '+
        'where 1=1'+' '+
    'order by Subject.credits asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������ :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_subject.subj_fnd_editKeyPress(Sender: TObject; var Key: Char);
begin
     try
   dm.subjQuery.SQL.Text:=
  'select'+' '+
  'Subject.id_subject,'+' '+
  'Subject.name,'+' '+
  'Subject.credits'+' '+
  'from Subject'+' '+
  'where 1=1'+' '+
  'and Subject.name like'+
   QuotedStr(Concat(subj_fnd_edit.Text,#37));
   dm.subjQuery.close;
   dm.subjQuery.Open;
except on E: Exception do
  begin
  ShowMessage('������'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_subject.subj_name_RadioClick(Sender: TObject);
begin
  if subj_name_Radio.Checked=true then
  begin
    try
     with dm.subjQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
    'select'+' '+
    'Subject.id_subject,'+' '+
  'Subject.name,'+' '+
  'Subject.credits'+' '+
  'from Subject'+' '+
  'where 1=1'+' '+
    'order by Subject.name asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_subject.subj_reset_RadioClick(Sender: TObject);
var i,j,c:Integer;
begin
  if  subj_reset_Radio.Checked=true then
with Frm_subject do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_subject do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.subjQuery do
     begin
     Close;
     sql.Clear;
     sql.Text:=
    'select'+' '+
    'Subject.id_subject,'+' '+
  'Subject.name,'+' '+
  'Subject.credits'+' '+
  'from Subject'+' '+
  'where 1=1';
  Open;
     end;
    with Frm_subject do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;


procedure TFrm_subject.subj_sel_btnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise Exception.Create('���������� � ����� �� �����������');
    with DM.sel_sub do
    begin
      Close;
      Parameters.ParamByName('@name').Value :=subj_cond_edit.Text;
      Open;
       DM.subjQuery.Recordset:=dm.sel_sub.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('������: ' + E.Message);
    on E: Exception do
      ShowMessage('������: ' + E.Message);
  end;
end;


procedure TFrm_subject.subj_upd_btnClick(Sender: TObject);
 var
  AreFieldsEmpty: Boolean;
begin
AreFieldsEmpty:=(
(upd_subj_DBL.Text='')or
(Upd_subj_cred_grader.Position=0)
);
if AreFieldsEmpty then
begin
     MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
end;
try
with dm.upd_subject do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@id_subject').Value :=
           dm.subjQuery.FieldByName('id_subject').AsString;
           Parameters.ParamByName('@credits').Value:=
           Upd_subj_cred_grader.Position;
           ExecProc;
           dm.subjQuery.Close;
           dm.subjQuery.Open;
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

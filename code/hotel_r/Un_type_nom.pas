unit Un_type_nom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls,adodb,db, DBCtrls,jpeg;

type
  TFrm_type_nom = class(TForm)
    FadminPC: TPageControl;
    seLTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    sel_typencondBox: TGroupBox;
    m_typen_grupper: TGroupBox;
    seltypenmbtnBox: TGroupBox;
    sel_typen_data_box: TGroupBox;
    tnselBtn: TButton;
    seltnselgrd: TDBGrid;
    opis_tn_cond_edit: TLabeledEdit;
    sel_tn_fnd_Edit: TLabeledEdit;
    tn_Radiotypegrupper: TRadioButton;
    tn_Radioopisgrupper: TRadioButton;
    tn_reset_radio: TRadioButton;
    ins_tn_dataBox: TGroupBox;
    ins_tn_inpBox: TGroupBox;
    ins_tn_btn_Box: TGroupBox;
    ins_tnBtn: TButton;
    type_naim_inp: TLabeledEdit;
    tnliveQuercB: TCheckBox;
    tnlqPanel: TPanel;
    tnlqsvBtn: TButton;
    upd_tn_inp_Box: TGroupBox;
    upd_tn_btn_Box: TGroupBox;
    upd_tn_data_box: TGroupBox;
    upd_tn_btn: TButton;
    upd_tn_lbl: TStaticText;
    upd_tn_u_dbl: TDBLookupComboBox;
    del_tn_inpBox: TGroupBox;
    del_tn_dataBox: TGroupBox;
    del_tn_btn_Box: TGroupBox;
    del_tn_d_btn: TButton;
    del_dbl_tn_lbl: TStaticText;
    del_dbl_tn_dbl: TDBLookupComboBox;
    type_opis_inp: TLabeledEdit;
    ins_tn_data_Box: TGroupBox;
    ins_tnGrd: TDBGrid;
    Upd_tn_grd: TDBGrid;
    upd_tn_naim_inp: TLabeledEdit;
    DelTnGid: TDBGrid;
    fod: TOpenDialog;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tnselBtnClick(Sender: TObject);
    procedure tn_RadiotypegrupperClick(Sender: TObject);
    procedure tn_RadioopisgrupperClick(Sender: TObject);
    procedure tn_reset_radioClick(Sender: TObject);
    procedure sel_tn_fnd_EditKeyPress(Sender: TObject; var Key: Char);
    procedure tnliveQuercBClick(Sender: TObject);
    procedure tnlqsvBtnClick(Sender: TObject);
    procedure ins_tnBtnClick(Sender: TObject);
    procedure ins_tnGrdDblClick(Sender: TObject);
    procedure upd_tn_btnClick(Sender: TObject);
    procedure del_tn_d_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_type_nom: TFrm_type_nom;


implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_type_nom.del_tn_d_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
AreFieldsEmpty:=(
(del_dbl_tn_dbl.Text='')
);
if AreFieldsEmpty then
 begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;

try
      with dm.del_type do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@id_type_nomer').Value
           :=dm.type_nQuery.FieldByName('id_type_nomer').AsString;
           ExecProc;
           dm.type_nQuery.Close;
           dm.type_nQuery.Open;
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

procedure TFrm_type_nom.FormActivate(Sender: TObject);
begin
  dm.type_nQuery.Open;
   AdjustDBGridColumnWidths('Frm_type_nom',6000, 10);
end;

procedure TFrm_type_nom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_type_nom.FormCreate(Sender: TObject);
begin
  Frm_type_nom.KeyPreview:=true;
 Frm_type_nom.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);

end;

procedure TFrm_type_nom.ins_tnBtnClick(Sender: TObject);
const
AllowedChars: TSysCharSet = ['�'..'�', '�'..'�', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
  FileStream: TFileStream;
begin
AreFieldsEmpty := (
    (Trim(type_naim_inp.Text) = '') or
    (Trim(type_opis_inp.Text) = '')
  );
  AreFieldsValid := (
    ValidateComponentText(type_naim_inp, AllowedChars) and
    ValidateComponentText(type_opis_inp, AllowedChars)
  );

  if AreFieldsEmpty or not AreFieldsValid then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
      mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
    with dm.ins_type do
    begin
      if not Connection.Connected then
        raise Exception.Create('���������� � ����� �� �����������');
      Parameters.ParamByName('@type_naim').Value := type_naim_inp.Text;
      Parameters.ParamByName('@type_opis').Value := type_opis_inp.Text;
      if fod.Execute then
      begin
        try
          FileStream := TFileStream.Create(fod.FileName, fmOpenRead);
          try
            Parameters.ParamByName('@type_image').LoadFromStream(FileStream, ftBlob);
          finally
            FileStream.Free;
          end;
        except
          on E: Exception do
          begin
            ShowMessage('������ ��� ������ �����: ' + E.Message);
            Exit;
          end;
        end;
      end
      else
      begin
        Parameters.ParamByName('@type_image').Value := Unassigned; // ��� Null
      end;
      ExecProc;
      dm.type_nQuery.Close;
      dm.type_nQuery.Open;
      MessageDlg('��������� �������', mtInformation, [mbOK], 0);
    end;
  except
    on E: EADOError do
    begin
      ShowMessage('������ ADO: ' + E.Message);
    end;
    on E: Exception do
    begin
      ShowMessage('����� ������: ' + E.Message);
    end;
  end;

end;

procedure TFrm_type_nom.ins_tnGrdDblClick(Sender: TObject);
begin
ShowImageFromDatabase(
    dm.Connection,
    'type_nomer',
    'type_image',
    'id_type_nomer',
    ins_tnGrd.DataSource.DataSet.FieldByName('id_type_nomer').AsInteger

  );
end;

procedure TFrm_type_nom.sel_tn_fnd_EditKeyPress(Sender: TObject; var Key: Char);
begin
try
   dm.type_nQuery.SQL.Text:=
      'select'+' '+
     'type_nomer.id_type_nomer,'+' '+
     'type_nomer.type_naim,'+''+' '+
     'type_nomer.type_opis,'+' '+
     'type_nomer.type_image'+' '+
    'from type_nomer'+' '+
    'where 1=1'+' '+
   'and  type_nomer.type_naim like'+
   QuotedStr(Concat(sel_tn_fnd_edit.Text,#37));
   dm.type_nQuery.close;
   dm.type_nQuery.Open;
except on E: Exception do
  begin
  ShowMessage('������'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_type_nom.tnliveQuercBClick(Sender: TObject);
begin
case tnliveQuercB.Checked of
true:
begin
  with dm.type_nQuery do
begin
  Close;
  LockType:=ltOptimistic;
  CursorType:= ctKeyset;
  CursorLocation := clUseClient;
  open;
end;
  ins_tnGrd.ReadOnly:=false;
end;
false:
begin
with dm.type_nQuery do
begin
  Close;
  LockType:=ltOptimistic;
  CursorType:= ctStatic;
  CursorLocation := clUseClient;
  Open;
end;
  ins_tnGrd.ReadOnly:=True;
end;

end;//case
end;

procedure TFrm_type_nom.tnlqsvBtnClick(Sender: TObject);
  var
  UserResponse: Integer;
begin
 dm.Connection.BeginTrans;
  try
    if dm.type_nQuery.State in [dsEdit, dsInsert] then
      dm.type_nQuery.Post;
    UserResponse := MessageDlg('��������� ��������?',
    mtConfirmation, [mbYes, mbNo], 0);

    if UserResponse = mrYes then
    begin
      dm.Connection.CommitTrans;
      dm.type_nQuery.DisableControls;
      try
        dm.type_nQuery.Close;
        dm.type_nQuery.SQL.Text :=
      'select'+' '+
     'type_nomer.id_type_nomer,'+' '+
     'type_nomer.type_naim,'+''+' '+
     'type_nomer.type_opis,'+' '+
     'type_nomer.type_image'+' '+
    'from type_nomer'+' '+
    'where 1=1';
        dm.type_nQuery.Open;
      finally
        dm.type_nQuery.EnableControls;
      end;
      ShowMessage('��������� �������.');
    end
    else
    begin
      dm.Connection.RollbackTrans;
      ShowMessage('��������� ���������.');
    end;
  except
    on E: Exception do
    begin
      dm.Connection.RollbackTrans;
      ShowMessage('������ ��� ���������� ������: ' + E.Message);
    end;
  end;
end;

procedure TFrm_type_nom.tnselBtnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise Exception.Create('C��������� � ����� �� �����������');
    with DM.sel_type_by_opis do
    begin
      Close;
      Parameters.ParamByName('@type_opis').Value := opis_tn_cond_edit.Text;
      Open;
       DM.type_nQuery.Recordset:=dm.sel_type_by_opis.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('������: ' + E.Message);
    on E: Exception do
      ShowMessage('������: ' + E.Message);
  end;
end;

procedure TFrm_type_nom.tn_RadioopisgrupperClick(Sender: TObject);
begin
if  tn_Radioopisgrupper.Checked=true then
  begin
    try
     with dm.type_nQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
      'select'+' '+
     'type_nomer.id_type_nomer,'+' '+
     'type_nomer.type_naim,'+''+' '+
     'type_nomer.type_opis,'+' '+
     'type_nomer.type_image'+' '+
    'from type_nomer'+' '+
    'where 1=1'+' '+
    'order by type_opis asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_type_nom.tn_RadiotypegrupperClick(Sender: TObject);
begin
if  tn_Radiotypegrupper.Checked=true then
  begin
    try
     with dm.type_nQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
      'select'+' '+
     'type_nomer.id_type_nomer,'+' '+
     'type_nomer.type_naim,'+''+' '+
     'type_nomer.type_opis,'+' '+
     'type_nomer.type_image'+' '+
    'from type_nomer'+' '+
    'where 1=1'+' '+
    'order by type_naim asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_type_nom.tn_reset_radioClick(Sender: TObject);
var i,j,c:Integer;
begin
if  tn_reset_radio.Checked=true then
with Frm_type_nom do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_type_nom do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.type_nQuery do
     begin
     Close;
     sql.Clear;
       sql.Text:=
       'select'+' '+
     'type_nomer.id_type_nomer,'+' '+
     'type_nomer.type_naim,'+''+' '+
     'type_nomer.type_opis,'+' '+
    'type_nomer.type_image'+' '+
    'from type_nomer'+' '+
    'where 1=1';
     Open;
     end;
    with Frm_type_nom do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_type_nom.upd_tn_btnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['�'..'�', '�'..'�', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (Trim(upd_tn_naim_inp.Text)='')or
   (upd_tn_u_dbl.Text='')
  );
  AreFieldsValid:=(
  ValidateComponentText(upd_tn_naim_inp,AllowedChars)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
      MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
try
      with dm.upd_type_n do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
           Parameters.ParamByName('@id_type_nomer').Value :=
           dm.type_nQuery.FieldByName('id_type_nomer').AsString;
           Parameters.ParamByName('@type_naim').Value:=
           upd_tn_naim_inp.Text;
           ExecProc;
           dm.type_nQuery.Close;
           dm.type_nQuery.Open;
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

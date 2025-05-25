unit Un_oper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DB,ADODB, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls;

type
  TFrm_oper = class(TForm)
    operPC: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    oper_inp_boxBox: TGroupBox;
    oper_data_box: TGroupBox;
    oper_grouper: TGroupBox;
    oper_btn_Box: TGroupBox;
    operCondEdit: TLabeledEdit;
    operfndEdit: TLabeledEdit;
    oper_sel_Btn: TButton;
    oper_naim_Radio: TRadioButton;
    oper_smdata_Radio: TRadioButton;
    oper_resetRadio: TRadioButton;
    ins_oper_data_Box: TGroupBox;
    ins_masterbtnBox: TGroupBox;
    ins_oper_insBtn: TButton;
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
    about_operPC: TPageControl;
    about_oper_Tab_one: TTabSheet;
    ins_oper_inp_Box: TGroupBox;
    ins_oper_naim_inp: TLabeledEdit;
    del_master_grd: TDBGrid;
    DBGrid1: TDBGrid;
    ins_oper_Grd: TDBGrid;
    oper_sel_Grid: TDBGrid;
    user_lbl: TStaticText;
    ins_user_u_DBL: TDBLookupComboBox;
    smdatalbl: TStaticText;
    smdatainp: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure oper_sel_BtnClick(Sender: TObject);
    procedure operfndEditKeyPress(Sender: TObject; var Key: Char);
    procedure oper_naim_RadioClick(Sender: TObject);
    procedure oper_smdata_RadioClick(Sender: TObject);
    procedure oper_resetRadioClick(Sender: TObject);
    procedure ins_oper_insBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_oper: TFrm_oper;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_oper.FormActivate(Sender: TObject);
begin
  dm.userQuery.Open;
  dm.operQuery.OPEN;
  AdjustDBGridColumnWidths('Frm_oper',6000, 10);
end;

procedure TFrm_oper.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SaveFormState(Self);
   CloseAllQueriesOnDataModule('dm');
   Action := caFree;
end;

procedure TFrm_oper.FormCreate(Sender: TObject);
begin
  Frm_oper.KeyPreview:=true;
  Frm_oper.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);

end;

procedure TFrm_oper.ins_oper_insBtnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (Trim(ins_oper_naim_inp.Text)='')or
  (ins_user_u_DBL.Text='')
  );
  AreFieldsValid:=(
  ValidateComponentText(ins_oper_naim_inp,AllowedChars)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
        MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_oper do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@oper_naim').Value :=ins_oper_naim_inp.text;
           Parameters.ParamByName('@userid').Value:=
           dm.userQuery.FieldByName('userid').AsString;
           Parameters.ParamByName('@smdata').Value:=smdatainp.Date;
           ExecProc;
           dm.operQuery.Close;
           dm.operQuery.Open;
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

procedure TFrm_oper.operfndEditKeyPress(Sender: TObject; var Key: Char);
begin
   try
   dm.operQuery.SQL.Text:=
  'select'+' '+
  'operator.oper_id,'+' '+
  'operator.oper_naim,'+' '+
  'usver.user_name,'+' '+
  'operator.smdata'+' '+
  'from operator'+' '+
  'inner join usver on usver.userid=operator.userid'+' '+
  'where 1=1'+' '+
   'and usver.user_name like'+
   QuotedStr(Concat(operfndEdit.Text,#37));
   dm.operQuery.close;
   dm.operQuery.Open;
except on E: Exception do
  begin
  ShowMessage('Ошибка'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_oper.oper_naim_RadioClick(Sender: TObject);
begin
   if  oper_naim_Radio.Checked=true then
  begin
    try
     with dm.operQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
      'select'+' '+
  'operator.oper_id,'+' '+
  'operator.oper_naim,'+' '+
  'usver.user_name,'+' '+
  'operator.smdata'+' '+
  'from operator'+' '+
  'inner join usver on usver.userid=operator.userid'+' '+
  'where 1=1'+' '+
  'order by operator.oper_naim asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_oper.oper_resetRadioClick(Sender: TObject);
  var i,j,c:Integer;
begin
    if  oper_resetRadio.Checked=true then
with Frm_oper do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_oper do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.operQuery do
     begin
     Close;
     sql.Clear;
     sql.Text:=
  'select'+' '+
  'operator.oper_id,'+' '+
  'operator.oper_naim,'+' '+
  'usver.user_name,'+' '+
  'operator.smdata'+' '+
  'from operator'+' '+
  'inner join usver on usver.userid=operator.userid'+' '+
  'where 1=1';
  Open;
     end;
    with Frm_oper do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_oper.oper_sel_BtnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise Exception.Create('Соединение с базой не установленр');
    with DM.sel_oper do
    begin
      Close;
      Parameters.ParamByName('@oper_naim').Value :=operCondEdit.Text;
      Open;
       DM.operQuery.Recordset:=dm.sel_oper.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;

procedure TFrm_oper.oper_smdata_RadioClick(Sender: TObject);
begin
   if  oper_smdata_Radio.Checked=true then
  begin
    try
     with dm.operQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
  'select'+' '+
  'operator.oper_id,'+' '+
  'operator.oper_naim,'+' '+
  'usver.user_name,'+' '+
  'operator.smdata'+' '+
  'from operator'+' '+
  'inner join usver on usver.userid=operator.userid'+' '+
  'where 1=1'+' '+
    'order by operator.smdata asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка :'+' '+E.Message);
    end;
    end;
  end;
end;

end.

unit Un_klient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DB,ADODB, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls, Mask;

type
  TFrm_klient = class(TForm)
    klientPC: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    klient_inp_boxBox: TGroupBox;
    klient_data_box: TGroupBox;
    klient_grouper: TGroupBox;
    klient_btn_Box: TGroupBox;
    klientCondEdit: TLabeledEdit;
    klientfndEdit: TLabeledEdit;
    klient_sel_Btn: TButton;
    klient_fio_Radio: TRadioButton;
    klient_adr_Radio: TRadioButton;
    klient_resetRadio: TRadioButton;
    ins_klient_data_Box: TGroupBox;
    ins_klientrbtnBox: TGroupBox;
    ins_klient_insBtn: TButton;
    klient_upd_datapBox: TGroupBox;
    klient_upd_inpBox: TGroupBox;
    klient_u_btntBox: TGroupBox;
    klient_upd_Btn: TButton;
    klient_s_lbl: TStaticText;
    klient_upd_DBL: TDBLookupComboBox;
    sh_del_inpBox: TGroupBox;
    klient_delbtnBox: TGroupBox;
    klient_del_data_Box: TGroupBox;
    klient_del_lbl: TStaticText;
    klient_delDBL: TDBLookupComboBox;
    klient_del_btn: TButton;
    about_klientPC: TPageControl;
    about_klient_Tab_one: TTabSheet;
    ins_klient_inp_Box: TGroupBox;
    klient_sel_Grid: TDBGrid;
    ins_klient_fio_inp: TLabeledEdit;
    ins_klient_Grid: TDBGrid;
    klient_data_grid: TDBGrid;
    Del_klient_data_Grid: TDBGrid;
    ins_klient_adr_inp: TLabeledEdit;
    ins_klient_prin_inp: TLabeledEdit;
    ins_klient_mail_inp: TLabeledEdit;
    klient_phone_lbl: TStaticText;
    klient_phone_inp: TMaskEdit;
    About_client_tab_two: TTabSheet;
    ins_klient_inp_Box_two: TGroupBox;
    klient_pokaz_inp: TLabeledEdit;
    pokaz_grader: TUpDown;
    oper_lbl: TStaticText;
    schet_lbl: TStaticText;
    master_lbl: TStaticText;
    kl_operDBL: TDBLookupComboBox;
    kl_schetDBL: TDBLookupComboBox;
    kl_masterDBL: TDBLookupComboBox;
    kl_upd_kont_data: TLabeledEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure klient_sel_BtnClick(Sender: TObject);
    procedure klientfndEditKeyPress(Sender: TObject; var Key: Char);
    procedure klient_fio_RadioClick(Sender: TObject);
    procedure klient_adr_RadioClick(Sender: TObject);
    procedure klient_resetRadioClick(Sender: TObject);
    procedure ins_klient_insBtnClick(Sender: TObject);
    procedure klient_phone_inpExit(Sender: TObject);
    procedure klient_upd_BtnClick(Sender: TObject);
    procedure klient_del_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_klient: TFrm_klient;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_klient.FormActivate(Sender: TObject);
begin
  dm.operQuery.Open;
  dm.schetQuery.OPEN;
  dm.masterQuery.Open;
  dm.klientQuery.open;
  AdjustDBGridColumnWidths('Frm_klient',6000, 10);
end;

procedure TFrm_klient.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
  Action := caFree;
end;

procedure TFrm_klient.FormCreate(Sender: TObject);
begin
  Frm_klient.KeyPreview:=true;
  Frm_klient.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  klient_phone_inp.EditMask := '!+7 \(999\) 000-00-00;1;_';
  LoadFormState(Self);
end;

procedure TFrm_klient.ins_klient_insBtnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (Trim(ins_klient_fio_inp.Text)='')or
  (Trim(ins_klient_adr_inp.Text)='')or
  (Trim(ins_klient_prin_inp.Text)='')or
  (Trim(ins_klient_mail_inp.Text)='')or
  (Trim(klient_phone_inp.Text)='')or
  (pokaz_grader.Position=0)or
  (kl_operDBL.Text='')or
  (kl_schetDBL.Text='')or
  (kl_masterDBL.Text='')
  );
  AreFieldsValid:=(
  ValidateComponentText(ins_klient_fio_inp,AllowedChars)and
  ValidateComponentText(ins_klient_adr_inp,AllowedChars)and
  ValidateComponentText(ins_klient_prin_inp,AllowedChars)and
  IsValidEmail(ins_klient_mail_inp.Text)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
  MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_klient do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@fio').Value :=ins_klient_fio_inp.Text;
           Parameters.ParamByName('@adr').Value :=ins_klient_adr_inp.Text;
           Parameters.ParamByName('@prim').Value :=ins_klient_prin_inp.Text;
           Parameters.ParamByName('@kont_d').Value :=ins_klient_mail_inp.Text;
           Parameters.ParamByName('@tel').Value :=klient_phone_inp.Text;
           Parameters.ParamByName('@pokaz').Value :=pokaz_grader.Position;
           Parameters.ParamByName('@oper_id').Value:=
           dm.operQuery.FieldByName('oper_id').AsString;
           Parameters.ParamByName('@schet_id').Value:=
           dm.schetQuery.FieldByName('schet_id').AsString;
           Parameters.ParamByName('@id_master').Value:=
           dm.masterQuery.FieldByName('id_master').AsString;
           ExecProc;
           dm.klientQuery.Close;
           dm.klientQuery.Open;
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

procedure TFrm_klient.klientfndEditKeyPress(Sender: TObject; var Key: Char);
begin
    try
   dm.klientQuery.SQL.Text:=
   'select'+' '+
   'klient.klient_id,'+' '+
   'klient.fio,'+' '+
   'klient.adr,'+' '+
   'klient.prim,'+' '+
   'klient.kont_d,'+' '+
   'klient.tel,'+' '+
   'klient.pokaz,'+' '+
   'operator.oper_naim,'+' '+
   'schet.Nomer,'+' '+
   'm_master.fio_master'+' '+
  'from klient'+' '+' '+
  'inner join operator on operator.oper_id=klient.oper_id'+' '+
  'inner join schet on schet.schet_id=klient.schet_id'+' '+
  'inner join m_master on m_master.id_master=klient.id_master'+' '+
  'where 1=1'+' '+
   'and klient.adr like'+
   QuotedStr(Concat(klientfndedit.Text,#37));
   dm.klientQuery.close;
   dm.klientQuery.Open;
except on E: Exception do
  begin
  ShowMessage('Ошибка'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_klient.klient_adr_RadioClick(Sender: TObject);
begin
    if  klient_adr_Radio.Checked=true then
  begin
    try
     with dm.klientQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
   'select'+' '+
   'klient.klient_id,'+' '+
   'klient.fio,'+' '+
   'klient.adr,'+' '+
   'klient.prim,'+' '+
   'klient.kont_d,'+' '+
   'klient.tel,'+' '+
   'klient.pokaz,'+' '+
   'operator.oper_naim,'+' '+
   'schet.Nomer,'+' '+
   'm_master.fio_master'+' '+
  'from klient'+' '+' '+
  'inner join operator on operator.oper_id=klient.oper_id'+' '+
  'inner join schet on schet.schet_id=klient.schet_id'+' '+
  'inner join m_master on m_master.id_master=klient.id_master'+' '+
  'where 1=1'+' '+
  'order by klient.adr asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_klient.klient_del_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (klient_delDBL.Text='')
  );
  if AreFieldsEmpty then
  begin
      MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.del_klient do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@klient_id').Value :=
           dm.klientQuery.FieldByName('klient_id').AsString;
           ExecProc;
           dm.klientQuery.Close;
           dm.klientQuery.Open;
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

procedure TFrm_klient.klient_fio_RadioClick(Sender: TObject);
begin
    if  klient_fio_Radio.Checked=true then
  begin
    try
     with dm.klientQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
   'select'+' '+
   'klient.klient_id,'+' '+
   'klient.fio,'+' '+
   'klient.adr,'+' '+
   'klient.prim,'+' '+
   'klient.kont_d,'+' '+
   'klient.tel,'+' '+
   'klient.pokaz,'+' '+
   'operator.oper_naim,'+' '+
   'schet.Nomer,'+' '+
   'm_master.fio_master'+' '+
  'from klient'+' '+' '+
  'inner join operator on operator.oper_id=klient.oper_id'+' '+
  'inner join schet on schet.schet_id=klient.schet_id'+' '+
  'inner join m_master on m_master.id_master=klient.id_master'+' '+
  'where 1=1'+' '+
  'order by klient.fio asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_klient.klient_phone_inpExit(Sender: TObject);
begin
   if IsMaskEditEmpty(klient_phone_inp) then
  begin
    klient_phone_inp.Color := clRed;
    ShowMessage('Телефон нужно заполнить');
    klient_phone_inp.SetFocus;
  end
  else
    klient_phone_inp.Color := clWindow;

end;

procedure TFrm_klient.klient_resetRadioClick(Sender: TObject);
  var i,j,c:Integer;
begin
    if klient_resetRadio.Checked=true then
with Frm_klient do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_klient do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.klientQuery do
     begin
     Close;
     sql.Clear;
     sql.Text:=
     'select'+' '+
   'klient.klient_id,'+' '+
   'klient.fio,'+' '+
   'klient.adr,'+' '+
   'klient.prim,'+' '+
   'klient.kont_d,'+' '+
   'klient.tel,'+' '+
   'klient.pokaz,'+' '+
   'operator.oper_naim,'+' '+
   'schet.Nomer,'+' '+
   'm_master.fio_master'+' '+
  'from klient'+' '+' '+
  'inner join operator on operator.oper_id=klient.oper_id'+' '+
  'inner join schet on schet.schet_id=klient.schet_id'+' '+
  'inner join m_master on m_master.id_master=klient.id_master'+' '+
  'where 1=1';
    Open;
     end;
    with Frm_klient do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_klient.klient_sel_BtnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise Exception.Create('Соедиенеие с базой не установлено');
    with DM.sel_klient do
    begin
      Close;
      Parameters.ParamByName('@fio').Value :=klientcondedit.Text;
      Open;
       DM.klientQuery.Recordset:=dm.sel_klient.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;

procedure TFrm_klient.klient_upd_BtnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=(
  (klient_upd_DBL.Text='')or
  (Trim(kl_upd_kont_data.Text)='')
  );
  AreFieldsValid:=(
  IsValidEmail(kl_upd_kont_data.Text)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
      MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.upd_klient do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@klient_id').Value :=
           dm.klientQuery.FieldByName('klient_id').AsString;
           Parameters.ParamByName('@kont_d').Value :=kl_upd_kont_data.Text;
           ExecProc;
           dm.klientQuery.Close;
           dm.klientQuery.Open;
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

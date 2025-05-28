unit Un_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids,DB,adodb, DBCtrls, Mask;

type
  TFrm_usluga = class(TForm)
    UslPC: TPageControl;
    selTab: TTabSheet;
    InsTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    sel_Usl_InpBox: TGroupBox;
    sel_Usl_btnBox: TGroupBox;
    sel_Usl_grouperBox: TGroupBox;
    sel_Usl_dataBox: TGroupBox;
    Usl_condEdit: TLabeledEdit;
    Usl_fndEdit: TLabeledEdit;
    sel_Usl_btn: TButton;
    sel_Usl_opis_radio: TRadioButton;
    sel_Usl_costradio: TRadioButton;
    sel_usl_reset_radio: TRadioButton;
    Usl_data_box: TGroupBox;
    Usl_btn_box: TGroupBox;
    Ins_Usl_inp_box: TGroupBox;
    usl_opis_inp: TLabeledEdit;
    Usl_ins_btn: TButton;
    Usl_upd_data_Box: TGroupBox;
    Usl_upd_btn_Box: TGroupBox;
    Usl_upd_inp_Box: TGroupBox;
    Usl_upd_pas_lbl: TStaticText;
    u_Usl_id_inp: TDBLookupComboBox;
    man_upd_btn: TButton;
    del_Usl_data_box: TGroupBox;
    del_Usl_inp_box: TGroupBox;
    del_Usl_btn_box: TGroupBox;
    del_Usl_btn: TButton;
    del_Usl_u_lbl: TStaticText;
    del_Usl_id_inp_DBL: TDBLookupComboBox;
    ins_Usl_grd: TDBGrid;
    sel_usl_Grid: TDBGrid;
    usl_cost_inp: TLabeledEdit;
    Usl_upd_Grd: TDBGrid;
    u_dateo_inp: TDateTimePicker;
    Usl_upd_date_o_lbl: TStaticText;
    paydcB: TCheckBox;
    Del_usl_grd: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sel_Usl_btnClick(Sender: TObject);
    procedure Usl_fndEditKeyPress(Sender: TObject; var Key: Char);
    procedure sel_Usl_opis_radioClick(Sender: TObject);
    procedure sel_Usl_costradioClick(Sender: TObject);
    procedure sel_usl_reset_radioClick(Sender: TObject);
    procedure Usl_ins_btnClick(Sender: TObject);
    procedure paydcBClick(Sender: TObject);
    procedure man_upd_btnClick(Sender: TObject);
    procedure del_Usl_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_usluga: TFrm_usluga;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_usluga.del_Usl_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
  AreFieldsEmpty:=(
  (del_Usl_id_inp_DBL.Text='')
  );
  if AreFieldsEmpty then
  begin
       MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.del_usluga do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@id_usl').Value :=
           dm.UslQuery.FieldByName('id_usl').AsString;
           ExecProc;
           dm.uslQuery.Close;
           dm.uslQuery.Open;
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

procedure TFrm_usluga.FormActivate(Sender: TObject);
begin
  dm.uslQuery.Open;
  AdjustDBGridColumnWidths('Frm_usluga',6000, 10);
end;

procedure TFrm_usluga.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SaveFormState(Self);
   CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_usluga.FormCreate(Sender: TObject);
begin
  UpdateFormShowHint('Frm_usluga');
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeComponentAnchors(Self);
  LoadFormState(Self);
end;

procedure TFrm_usluga.man_upd_btnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
   AreFieldsEmpty:=(
   (u_Usl_id_inp.Text='')
   );
   if AreFieldsEmpty then
   begin
   MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
   end;
   try
      with dm.okaz_usl do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@id_usl').Value :=
           dm.UslQuery.FieldByName('id_usl').AsString;
           Parameters.ParamByName('@date_o').Value:=u_dateo_inp.Date;
           ExecProc;
           dm.uslQuery.Close;
           dm.uslQuery.Open;
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

procedure TFrm_usluga.paydcBClick(Sender: TObject);
begin
  case paydcB.Checked of
  true:
  begin
   with dm.uslQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
     'select'+' '+
        'usluga.id_usl,'+' '+
        'usluga.opis,'+' '+
        'usluga.date_o,'+
        'usluga.cost'+' '+
        'from usluga'+' '+
        'where 1=1'+' '+
      'and usluga.date_o is  not null';
      Open;
     end;
  end;
  false:
  begin
     with dm.uslQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
     'select'+' '+
        'usluga.id_usl,'+' '+
        'usluga.opis,'+' '+
        'usluga.date_o,'+
        'usluga.cost'+' '+
        'from usluga'+' '+
        'where 1=1'+' '+
      'and usluga.date_o is  null';
      Open;
     end;
  end;

  end; //case
end;

procedure TFrm_usluga.sel_Usl_btnClick(Sender: TObject);
begin
   try
    if not DM.Connection.Connected then
      raise Exception.Create('Cоединение с базой не установлено');
    with DM.sel_usl_by_opis do
    begin
      Close;
      Parameters.ParamByName('@opis').Value :=Usl_condEdit.Text;
      Open;
       DM.uslQuery.Recordset:=dm.sel_usl_by_opis.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;

procedure TFrm_usluga.sel_Usl_costradioClick(Sender: TObject);
begin
  if  sel_Usl_costradio.Checked=true then
  begin
    try
     with dm.uslQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
     'select'+' '+
        'usluga.id_usl,'+' '+
        'usluga.opis,'+' '+
        'usluga.date_o,'+
        'usluga.cost'+' '+
        'from usluga'+' '+
        'where 1=1'+' '+
        'and usluga.date_o is  null'+' '+
      'order by usluga.cost asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_usluga.sel_Usl_opis_radioClick(Sender: TObject);
begin
  if  sel_Usl_opis_radio.Checked=true then
  begin
    try
     with dm.uslQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
     'select'+' '+
        'usluga.id_usl,'+' '+
        'usluga.opis,'+' '+
        'usluga.date_o,'+
        'usluga.cost'+' '+
        'from usluga'+' '+
        'where 1=1'+' '+
        'and usluga.date_o is  null'+' '+
     'order by usluga.opis asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_usluga.sel_usl_reset_radioClick(Sender: TObject);
var i,j,c:Integer;
begin
   if  sel_usl_reset_radio.Checked=true then
with Frm_usluga do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_usluga do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.uslQuery do
     begin
     Close;
     sql.Clear;
     sql.Text:=
    'select'+' '+
        'usluga.id_usl,'+' '+
        'usluga.opis,'+' '+
        'usluga.date_o,'+
        'usluga.cost'+' '+
        'from usluga'+' '+
        'where 1=1'+' '+
    'and usluga.date_o is  null';
    Open;
     end;
    with Frm_usluga do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_usluga.Usl_fndEditKeyPress(Sender: TObject; var Key: Char);
begin
   try
   dm.uslQuery.SQL.Text:=
        'select'+' '+
        'usluga.id_usl,'+' '+
        'usluga.opis,'+' '+
        'usluga.date_o,'+
        'usluga.cost'+' '+
        'from usluga'+' '+
        'where 1=1'+' '+
        'and usluga.date_o is  null'+' '+
        'and usluga.opis like'+
   QuotedStr(Concat(usl_fndedit.Text,#37));
   dm.uslQuery.close;
   dm.uslQuery.Open;
except on E: Exception do
  begin
  ShowMessage('Ошибка'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_usluga.Usl_ins_btnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
  PriceText: string;
  PriceValue: Int64;
begin
  PriceText:=usl_cost_inp.Text;
  AreFieldsEmpty:=(
  (Trim(usl_opis_inp.Text)='')or
  (Trim(usl_cost_inp.Text)='')
  );
  AreFieldsValid:=(
  ValidateComponentText(usl_opis_inp,AllowedChars)and
  IsDigitsOnly(usl_cost_inp.Text)
  );
  if AreFieldsEmpty or not AreFieldsValid then
  begin
      MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_usluga do
      begin
         PriceValue:=StrToInt64(usl_cost_inp.Text);
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@opis').Value :=usl_opis_inp.Text;
           Parameters.ParamByName('@cost').Value :=PriceValue;
           ExecProc;
           dm.uslQuery.Close;
           dm.uslQuery.Open;
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

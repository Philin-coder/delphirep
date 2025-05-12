unit Un_feedback;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls,adodb,db, DBCtrls,jpeg;

type
  TFrm_feedback = class(TForm)
    FfeedbackPC: TPageControl;
    seLTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    sel_fbcondBox: TGroupBox;
    m_fb_grupper: TGroupBox;
    selfbbtnBox: TGroupBox;
    sel_fb_data_box: TGroupBox;
    fbselBtn: TButton;
    selfbselgrd: TDBGrid;
    fb_fio_marker_cond_edit: TLabeledEdit;
    sell_fb_text_fnd_Edit: TLabeledEdit;
    fb_Radionaim_grupper: TRadioButton;
    fb_Radio_mark_grupper: TRadioButton;
    fb_reset_radio: TRadioButton;
    ins_fb_btn_Box: TGroupBox;
    ins_fbBtn: TButton;
    upd_usl_inp_Box: TGroupBox;
    upd_fb_btn_Box: TGroupBox;
    upd_fb_data_box: TGroupBox;
    upd_uls_btn: TButton;
    upd_fb_lbl: TStaticText;
    upd_fb_u_dbl: TDBLookupComboBox;
    del_usl_inpBox: TGroupBox;
    del_usl_dataBox: TGroupBox;
    del_usl_btn_Box: TGroupBox;
    del_usl_d_btn: TButton;
    del_dbl_usl_lbl: TStaticText;
    del_dbl_usl_dbl: TDBLookupComboBox;
    upd_fb_text_inp: TLabeledEdit;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    fb_inp_Box: TGroupBox;
    marker_lbl: TStaticText;
    marker_dbl: TDBLookupComboBox;
    tracker_boc: TGroupBox;
    marker_tb: TTrackBar;
    astrixBox: TGroupBox;
    e_Image: TImage;
    d_Image: TImage;
    c_Image: TImage;
    b_Image: TImage;
    a_Image: TImage;
    faceBox: TGroupBox;
    face_Image: TImage;
    feedstatic: TStaticText;
    feedtextbox: TGroupBox;
    fbRE: TRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure fbselBtnClick(Sender: TObject);
    procedure sell_fb_text_fnd_EditKeyPress(Sender: TObject; var Key: Char);
    procedure fb_Radionaim_grupperClick(Sender: TObject);
    procedure fb_Radio_mark_grupperClick(Sender: TObject);
    procedure fb_reset_radioClick(Sender: TObject);
    procedure marker_tbChange(Sender: TObject);
    procedure ins_fbBtnClick(Sender: TObject);
    procedure upd_uls_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_feedback: TFrm_feedback;
  mark_st:Integer;


implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_feedback.fbselBtnClick(Sender: TObject);
begin
try
    if not DM.Connection.Connected then
      raise Exception.Create('Соединение с базой не установлено');
    with DM.sel_feedback_by_fio do
    begin
      Close;
      Parameters.ParamByName('@guest_fio').Value :=fb_fio_marker_cond_edit.Text;
      Open;
       DM.fbQuery.Recordset:=dm.sel_feedback_by_fio.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ощибка: ' + E.Message);
    on E: Exception do
      ShowMessage('Ощибка: ' + E.Message);
  end;

end;

procedure TFrm_feedback.fb_Radionaim_grupperClick(Sender: TObject);
begin
  if  fb_Radionaim_grupper.Checked=true then
  begin
    try
     with dm.fbQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
    'select'+' '+
    'feedback.feedback_id,'+' '+
    'dogovor.guest_fio,'+' '+
    'feedback.feedback_text,'+' '+
   'case '+
   'when  feedback.feeadbackmarck=1 then ''Очень плохо'' '+
   'when  feedback.feeadbackmarck=2 then ''Плохо'' ' +
   'when  feedback.feeadbackmarck=3 then ''Удовлетворительно'' '+
   'when  feedback.feeadbackmarck=4 then ''Хорошо'' '+
   'else ''Отлично'' '+
   'end as fb'+' '+
    'from feedback'+' '+
    'inner join dogovor on dogovor.dog_id=feedback.dog_id'+' '+
    'where 1=1'+
    'order by dogovor.guest_fio asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_feedback.fb_Radio_mark_grupperClick(Sender: TObject);
begin
  if  fb_Radio_mark_grupper.Checked=true then
  begin
    try
     with dm.fbQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
    'select'+' '+
    'feedback.feedback_id,'+' '+
    'dogovor.guest_fio,'+' '+
    'feedback.feedback_text,'+' '+
   'case '+
   'when  feedback.feeadbackmarck=1 then ''Очень плохо'' '+
   'when  feedback.feeadbackmarck=2 then ''Плохо'' ' +
   'when  feedback.feeadbackmarck=3 then ''Удовлетворительно'' '+
   'when  feedback.feeadbackmarck=4 then ''Хорошо'' '+
   'else ''Отлично'' '+
   'end as fb'+' '+
    'from feedback'+' '+
    'inner join dogovor on dogovor.dog_id=feedback.dog_id'+' '+
    'where 1=1'+
    'order by fb asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_feedback.fb_reset_radioClick(Sender: TObject);
  var i,j,c:Integer;
begin
    if  fb_reset_radio.Checked=true then
with Frm_feedback do
for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_feedback do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.fbQuery do
     begin
     Close;
     sql.Clear;
       sql.Text:=
    'select'+' '+
    'feedback.feedback_id,'+' '+
    'dogovor.guest_fio,'+' '+
    'feedback.feedback_text,'+' '+
   'case '+
   'when  feedback.feeadbackmarck=1 then ''Очень плохо'' '+
   'when  feedback.feeadbackmarck=2 then ''Плохо'' ' +
   'when  feedback.feeadbackmarck=3 then ''Удовлетворительно'' '+
   'when  feedback.feeadbackmarck=4 then ''Хорошо'' '+
   'else ''Отлично'' '+
   'end as fb'+' '+
    'from feedback'+' '+
    'inner join dogovor on dogovor.dog_id=feedback.dog_id'+' '+
    'where 1=1';
     Open;
     end;
    with Frm_feedback do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_feedback.FormActivate(Sender: TObject);
begin
  dm.dogQuery.Open;
  dm.fbQuery.Open;
  AdjustDBGridColumnWidths('Frm_feedback',6000, 10);
end;

procedure TFrm_feedback.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SaveFormState(Self);
   CloseAllQueriesOnDataModule('dm');
   mark_st:=0;
   face_Image.Visible:=False;
end;

procedure TFrm_feedback.FormCreate(Sender: TObject);
var i:Integer;
begin
  Frm_feedback.KeyPreview:=true;
  Frm_feedback.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);
  with astrixBox do
  begin
  for I := 0 to ComponentCount - 1 do
  if (Components[i] is TImage) then
  begin
      (Components[i] as TImage).Visible:=False;
      (Components[i] as TImage).Proportional:=True;
  end;
  end;
  mark_st:=0;
    face_Image.Visible:=False;
end;

procedure TFrm_feedback.ins_fbBtnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
AreFieldsEmpty:=(
(marker_dbl.Text='')or
(fbRE.Text='')or
(marker_tb.Position=0)
);
if AreFieldsEmpty then
begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
end;
try
      with dm.ins_feedback do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@dog_id').Value :=
           dm.dogQuery.FieldByName('dog_id').AsString;
           Parameters.ParamByName('@feedback_text').Value:=fbRE.Text;
           Parameters.ParamByName('@feeadbackmarck').Value:=mark_st;
           ExecProc;
           dm.fbQuery.Close;
           dm.fbQuery.Open;

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

case mark_st of
0:
begin
  face_Image.Visible:=False;
  feedstatic.Caption:='';
end;
1:
begin
 LoadImageFromResource('ONE_IMAGE', face_Image);
 face_Image.Visible:=true;
 feedstatic.Caption:='Мы исправимся';
end;
2:
begin
   LoadImageFromResource('TWO_IMAGE', face_Image);
   face_Image.Visible:=true;
   feedstatic.Caption:='Мы будем работать над собой, дайте нам шанс';
end;
3:
begin
   LoadImageFromResource('THREE_IMAGE', face_Image);
   face_Image.Visible:=true;
   feedstatic.Caption:='Мы  исправим недочеты и учтем ошибки';
end;
 4:
begin
   LoadImageFromResource('FOUR_IMAGE', face_Image);
   face_Image.Visible:=true;
   feedstatic.Caption:='Мы будем более внимательны, надеемся,Вам у нас понравилось ';
end;
5:
begin
   LoadImageFromResource('FIVE_IMAGE', face_Image);
   face_Image.Visible:=true;
      feedstatic.Caption:='Ждем Вас в гости, надеемся, Вам все понравилось)';
end;


end;//case

end;

procedure TFrm_feedback.marker_tbChange(Sender: TObject);
begin
case marker_tb.Position of
0:
begin
  e_Image.Visible:=false;
  d_Image.Visible:=False;
  c_Image.Visible:=False;
  b_Image.Visible:=False;
  a_Image.Visible:=False;
  mark_st:=0;
end;
1:
begin
  e_Image.Visible:=true;
  d_Image.Visible:=False;
  c_Image.Visible:=False;
  b_Image.Visible:=False;
  a_Image.Visible:=False;
  LoadImageFromResource('STAR_IMAGE', e_Image);
  mark_st:=1;
end;
 2:
 begin
    d_Image.Visible:=true;
    e_Image.Visible:=True;
    LoadImageFromResource('STAR_IMAGE', d_Image);
    LoadImageFromResource('STAR_IMAGE', e_Image);
    c_Image.Visible:=False;
    b_Image.Visible:=False;
    a_Image.Visible:=False;
    mark_st:=2;
 end;
 3:
 begin
     d_Image.Visible:=true;
     e_Image.Visible:=True;
     c_Image.Visible:=True;
     LoadImageFromResource('STAR_IMAGE', d_Image);
     LoadImageFromResource('STAR_IMAGE', e_Image);
     LoadImageFromResource('STAR_IMAGE', c_Image);
     b_Image.Visible:=False;
     a_Image.Visible:=False;
     mark_st:=3;
 end;
  4:
  begin
     d_Image.Visible:=true;
     e_Image.Visible:=True;
     c_Image.Visible:=True;
     b_Image.Visible:=True;
     LoadImageFromResource('STAR_IMAGE', d_Image);
     LoadImageFromResource('STAR_IMAGE', e_Image);
     LoadImageFromResource('STAR_IMAGE', c_Image);
     LoadImageFromResource('STAR_IMAGE', b_Image);
     a_Image.Visible:=False;
     mark_st:=4;
  end;
  5:
  begin
     d_Image.Visible:=true;
     e_Image.Visible:=True;
     c_Image.Visible:=True;
     b_Image.Visible:=True;
     a_Image.Visible:=True;
     LoadImageFromResource('STAR_IMAGE', d_Image);
     LoadImageFromResource('STAR_IMAGE', e_Image);
     LoadImageFromResource('STAR_IMAGE', c_Image);
     LoadImageFromResource('STAR_IMAGE', a_Image);
     mark_st:=5;
  end;
end; //case
end;

procedure TFrm_feedback.sell_fb_text_fnd_EditKeyPress(Sender: TObject;
  var Key: Char);
begin
  try
   dm.fbQuery.SQL.Text:=
   'select'+' '+
    'feedback.feedback_id,'+' '+
    'dogovor.guest_fio,'+' '+
    'feedback.feedback_text,'+' '+
   'case '+
   'when  feedback.feeadbackmarck=1 then ''Очень плохо'' '+
   'when  feedback.feeadbackmarck=2 then ''Плохо'' ' +
   'when  feedback.feeadbackmarck=3 then ''Удовлетворительно'' '+
   'when  feedback.feeadbackmarck=4 then ''Хорошо'' '+
   'else ''Отлично'' '+
   'end as fb'+' '+
    'from feedback'+' '+
    'inner join dogovor on dogovor.dog_id=feedback.dog_id'+' '+
    'where 1=1'+
   'and feedback.feedback_text like'+
   QuotedStr(Concat(sell_fb_text_fnd_Edit.Text,#37));
   dm.fbQuery.close;
   dm.fbQuery.Open;
except on E: Exception do
  begin
  ShowMessage('Ошибка'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_feedback.upd_uls_btnClick(Sender: TObject);
const
AllowedChars: TSysCharSet = ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
   AreFieldsEmpty:=(
   (upd_fb_u_dbl.Text='')or
   (Trim(upd_fb_text_inp.Text)='')
   );
   AreFieldsValid:=(
   ValidateComponentText(upd_fb_text_inp,AllowedChars)
   );
   if AreFieldsEmpty or not AreFieldsValid then
   begin
        MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
   end;
   try
      with dm.upd_feedback do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@feedback_id').Value
           :=dm.fbQuery.FieldByName('feedback_id').AsString;
           Parameters.ParamByName('@feedback_text').Value:=upd_fb_text_inp.Text;
           ExecProc;
           dm.fbQuery.Close;
           dm.fbQuery.Open;
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

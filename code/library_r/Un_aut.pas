unit Un_aut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, ComCtrls, ToolWin,ADODB,db, StdCtrls, Grids,
  DBGrids, DBCtrls;

type
  Tfrm_aut = class(TForm)
    autorToolBar: TToolBar;
    autorImageList: TImageList;
    autorPC: TPageControl;
    sel_tab: TTabSheet;
    ins_tab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    Autor_condBox: TGroupBox;
    autorbtnBox: TGroupBox;
    Autor_grupperBox: TGroupBox;
    condedit_inp: TLabeledEdit;
    Autor_fnddEdit: TLabeledEdit;
    autorselBtn: TButton;
    Author_data_Box: TGroupBox;
    fioRadio_grupper: TRadioButton;
    reset_Radio: TRadioButton;
    AutorGrid: TDBGrid;
    aut_inpBox: TGroupBox;
    Aut_inp_btnBox: TGroupBox;
    Aut_inp_dataBox: TGroupBox;
    Autor_inp: TLabeledEdit;
    aut_insBon: TButton;
    Aut_inp_data_Grid: TDBGrid;
    aut_upd_inp_box: TGroupBox;
    Upd_aut_data_Box: TGroupBox;
    Upd_aut_naim_inp: TLabeledEdit;
    aut_upd_lbl: TLabel;
    autor_updDBL: TDBLookupComboBox;
    upd_aut_btn_box: TGroupBox;
    uat_upd_Btn: TButton;
    Aut_upd_Grid: TDBGrid;
    Aut_del_inp_Box: TGroupBox;
    aut_delLbl: TLabel;
    aut_delDBL: TDBLookupComboBox;
    aut_del_btn_Box: TGroupBox;
    aut_del_btn: TButton;
    aut_del_data_Box: TGroupBox;
    Aut_delGrid: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure autorselBtnClick(Sender: TObject);
    procedure reset_RadioClick(Sender: TObject);
    procedure Autor_fnddEditKeyPress(Sender: TObject; var Key: Char);
    procedure fioRadio_grupperClick(Sender: TObject);
    procedure aut_insBonClick(Sender: TObject);
    procedure uat_upd_BtnClick(Sender: TObject);
    procedure aut_del_btnClick(Sender: TObject);
  private
    procedure ChangeFormColor(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frm_aut: Tfrm_aut;

implementation

uses Un_dm, Un_func, Un_main;

{$R *.dfm}
procedure Tfrm_aut.autorselBtnClick(Sender: TObject);
begin
 try
    if not DM.Connection.Connected then
      raise Exception.Create('Соединение с базой не установлено');

    with DM.Sel_autor_by_name do
    begin
      Close;
           Parameters.ParamByName('@Name_A').Value := condedit_inp.Text;
      Open;
       DM.AutQuery.Recordset:=dm.Sel_autor_by_name.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка БД: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;

procedure Tfrm_aut.Autor_fnddEditKeyPress(Sender: TObject; var Key: Char);
begin
try
   dm.AutQuery.SQL.Text:='select '+
    'Author.ID_Author,'+' '+
    'Author.Name_A'+' '+
    'from Author'+' '+
    'where 1=1'+' '+
     'and author.Name_A like'+
   QuotedStr(Concat(Autor_fnddEdit.Text,#37));
   dm.AutQuery.close;
   dm.AutQuery.Open;
except on E: Exception do
  begin
  ShowMessage('wrong situation'+' '+E.Message);
  end;
  end;
end;

procedure Tfrm_aut.aut_del_btnClick(Sender: TObject);
var
AreFieldsEmpty: Boolean;
begin
AreFieldsEmpty:=(aut_delDBL.Text='');
if  AreFieldsEmpty then
begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;

  try
      with dm.del_autor do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@ID_Author').Value :=
           dm.AutQuery.FieldByName('ID_Author').AsString;
           ExecProc;
           dm.AutQuery.Close;
           dm.AutQuery.Open;
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

procedure Tfrm_aut.aut_insBonClick(Sender: TObject);
const
AllowedChars: TSysCharSet = ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty:=((Trim(autor_inp.Text) = ''));
  AreFieldsValid:=ValidateComponentText(autor_inp,AllowedChars);
  if AreFieldsEmpty or not AreFieldsValid then
  begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_autor do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@Name_A').Value :=Autor_inp.Text;
           ExecProc;
           dm.AutQuery.Close;
           dm.AutQuery.Open;
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



procedure TFrm_aut.ChangeFormColor(Sender: TObject);
begin
  if Sender is TToolButton then
  begin
    // Определяем, какая кнопка была нажата, по её Tag или Caption
    case TToolButton(Sender).Tag of
      0:autorPC.ActivePage:=delTab;  //Self.Color := clRed;       // Кнопка 1
      1:autorPC.ActivePage:=Updtab; //Self.Color := clGreen;     // Кнопка 2
      2: autorPC.ActivePage:=ins_Tab;//Self.Color := clBlue;      // Кнопка 3
      3:autorPC.ActivePage:=sel_Tab; //Self.Color := clYellow;    // Кнопка 4
    else
        autorPC.ActivePage:=sel_tab;
      //Self.Color := clWhite;        // Цвет по умолчанию
    end;
  end;
end;


procedure Tfrm_aut.fioRadio_grupperClick(Sender: TObject);
begin
      if fioRadio_grupper.Checked=true then
  begin
    try
     with dm.AutQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
     'select '+
    'Author.ID_Author,'+' '+
    'Author.Name_A'+' '+
    'from Author'+' '+
    'where 1=1'+
    'Order by Author.Name_A asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка'+' '+E.Message);
    end;
    end;
  end;
end;

procedure Tfrm_aut.FormActivate(Sender: TObject);
begin
  dm.autQuery.Open;
end;

procedure Tfrm_aut.FormClose(Sender: TObject; var Action: TCloseAction);
var
 q:Integer;
begin
  SaveFormState(Self);
   with dm do
 begin
    for q := 0 to ComponentCount - 1 do
 begin
    if(Components[q] is TADOQuery)  then
   begin
      (Components[q] as TADOQuery).Close;
 end;
 end;
 end;
end;

procedure Tfrm_aut.FormCreate(Sender: TObject);
const
  ButtonNames: array[0..3] of string = ('Удалить','Мзменить',
  'Добавить','Выбрать');
  var
  ButtonClicks: array of TNotifyEvent;
begin
 frm_aut.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
  autorImageList.Clear;
  LoadIconFromResource('DELETE_ICON',1,autorImageList);
  LoadIconFromResource('EDIT_ICON',1,autorImageList);
  LoadIconFromResource('ADD_ICON',1,autorImageList);
  LoadIconFromResource('SELECT_ICON',1,autorImageList);
// ShowMessage(IntToStr(iconImageList.Count));
  SetLength(ButtonClicks, 4);
  ButtonClicks[0] := ChangeFormColor; // Обработчик для кнопки "Красный"
  ButtonClicks[1] := ChangeFormColor; // Обработчик для кнопки "Зелёный"
  ButtonClicks[2] := ChangeFormColor; // Обработчик для кнопки "Синий"
  ButtonClicks[3] := ChangeFormColor; // Обработчик для кнопки "Жёлтый"
  // Создание ToolBar с кнопками
  CreateToolBarWithButtons(Self, autorImageList, ButtonNames, ButtonClicks);
end;

procedure Tfrm_aut.reset_RadioClick(Sender: TObject);
var
 i,j,c:Integer;
begin
   if reset_Radio.Checked then
  with Frm_aut do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_aut do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.AutQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:='select '+
    'Author.ID_Author,'+' '+
    'Author.Name_A'+' '+
    'from Author'+' '+
    'where 1=1';
     Open;
     end;
    with frm_aut do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;

end;

procedure Tfrm_aut.uat_upd_BtnClick(Sender: TObject);
const
 AllowedChars: TSysCharSet = ['А'..'Я', 'а'..'я', '0'..'9', ' ', '-', '.'];
  var
     AreFieldsEmpty:Boolean;
     AreFieldsValid:Boolean;
begin
   AreFieldsEmpty:=
   (Trim(Upd_aut_naim_inp.Text) = '')
   or(autor_updDBL.Text='');

   AreFieldsValid:=ValidateComponentText(Upd_aut_naim_inp,AllowedChars);
   if AreFieldsEmpty or not AreFieldsValid then
   begin
     MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку',
     mtError, [mbOK], 0);
     Beep;
     Exit;
   end;
   try
       with dm.upd_autor do
       begin
         if not Connection.Connected then
           raise Exception.Create('Соединение с базой не установлено');
            Parameters.ParamByName('@ID_Author').Value :=
            dm.AutQuery.FieldByName('ID_Author').AsString;
            Parameters.ParamByName('@Name_A').Value:=Upd_aut_naim_inp.Text;
            ExecProc;
            dm.AutQuery.Close;
            dm.AutQuery.Open;
         MessageDlg('Изменнеия внесены', mtInformation, [mbOK], 0);
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

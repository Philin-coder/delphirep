unit Un_doc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, ComCtrls, ToolWin,ADODB,db, StdCtrls, Grids,
  DBGrids, DBCtrls;

type
  Tfrm_doc = class(TForm)
    docToolBar: TToolBar;
    docImageList: TImageList;
    docPC: TPageControl;
    sel_tab: TTabSheet;
    ins_tab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    docbtnBox: TGroupBox;
    doc_grupperBox: TGroupBox;
    dockselBtn: TButton;
    doc_data_Box: TGroupBox;
    docknaimRadio_grupper: TRadioButton;
    doc_reset_Radio: TRadioButton;
    docGrid: TDBGrid;
    doc_upd_inp_box: TGroupBox;
    Upd_doc_data_Box: TGroupBox;
    doc_upd_lbl: TLabel;
    doc_updDBL: TDBLookupComboBox;
    upd_doc_btn_box: TGroupBox;
    upd_doc_Btn: TButton;
    book_del_inp_Box: TGroupBox;
    book_delLbl: TLabel;
    book_delDBL: TDBLookupComboBox;
    book_del_btn_Box: TGroupBox;
    book_del_btn: TButton;
    book_del_data_Box: TGroupBox;
    doc_condBox: TGroupBox;
    doccondedit_inp: TLabeledEdit;
    doc_fnddEdit: TLabeledEdit;
    aboutdocPC: TPageControl;
    book_del_Grid: TDBGrid;
    all_inCB: TCheckBox;
    CB_all_out: TCheckBox;
    ins_book_data_Box: TGroupBox;
    doc_lbl: TStaticText;
    Ins_doc_book_DBL: TDBLookupComboBox;
    ins_doc_stat_lbl: TStaticText;
    Ins_book_dataBox: TGroupBox;
    ins_book_btn_Box: TGroupBox;
    Ins_book_insBtn: TButton;
    doc_statusCombo: TComboBox;
    ins_doc_Grid: TDBGrid;
    upd_datadocGrid: TDBGrid;
    upd_doc_lbl: TStaticText;
    upd_docCombo: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dockselBtnClick(Sender: TObject);
    procedure all_inCBClick(Sender: TObject);
    procedure CB_all_outClick(Sender: TObject);
    procedure doc_reset_RadioClick(Sender: TObject);
    procedure docknaimRadio_grupperClick(Sender: TObject);
    procedure doc_fnddEditKeyPress(Sender: TObject; var Key: Char);
    procedure doc_statusComboChange(Sender: TObject);
    procedure Ins_book_insBtnClick(Sender: TObject);
    procedure upd_docComboChange(Sender: TObject);
    procedure upd_doc_BtnClick(Sender: TObject);
  private
  procedure ChangeFormColor(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frm_doc: Tfrm_doc;
  var stat_s:Integer;
  var upd_stat_s:integer;

implementation

uses Un_dm, Un_func, Un_main;

{$R *.dfm}

procedure Tfrm_doc.all_inCBClick(Sender: TObject);
begin
case all_incb.Checked of
True:
begin
CB_all_out.Checked:=False;
try
    if not DM.Connection.Connected then
      raise Exception.Create('Соединение с базой не установлено');

    with DM.sel_doc_all_in do
    begin
      Close;
        ExecProc;
      Open;
       DM.docQuery.Recordset:=dm.sel_doc_all_in.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка БД: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;
false:
begin
  with dm.docQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:=
     'select Doc.ID_Doc,'+' '+
     'Book.Name_B,'+' '+
     'case Doc.m_Status when 0 then ''В наличии'' else ''Выдан'' end as book_state '+''+
    'from Doc'+' '+
    'inner join Book on Book.ID_Book=Doc.ID_Book'+' '+
    'where 1=1';
     Open;
     end;
end;
end;//case

end;

procedure Tfrm_doc.CB_all_outClick(Sender: TObject);
begin
case CB_all_out.Checked of
true:
begin
all_inCB.Checked:=False;
 try
    if not DM.Connection.Connected then
      raise Exception.Create('Соединение с базой не установлено');

    with DM.sel_doc_all_out do
    begin
      Close;
        ExecProc;
      Open;
       DM.docQuery.Recordset:=dm.sel_doc_all_out.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка БД: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;

end;
false:
begin
   with dm.docQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:=
     'select Doc.ID_Doc,'+' '+
     'Book.Name_B,'+' '+
     'case Doc.m_Status when 0 then ''В наличии'' else ''Выдан'' end as book_state '+''+
    'from Doc'+' '+
    'inner join Book on Book.ID_Book=Doc.ID_Book'+' '+
    'where 1=1';
     Open;
     end;

end;

end; //case
end;

procedure Tfrm_doc.ChangeFormColor(Sender: TObject);
begin
  if Sender is TToolButton then
  begin
    case TToolButton(Sender).Tag of
      0:docPC.ActivePage:=delTab;
      1:docPC.ActivePage:=Updtab;
      2:docPC.ActivePage:=ins_Tab;
      3:docPC.ActivePage:=sel_Tab;
    else
        docPC.ActivePage:=sel_tab;
    end;
  end;
end;




procedure Tfrm_doc.docknaimRadio_grupperClick(Sender: TObject);
begin
  if docknaimRadio_grupper.Checked=true then
  begin
    try
     with dm.docQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
       'select Doc.ID_Doc,'+' '+
     'Book.Name_B,'+' '+
     'case Doc.m_Status when 0 then ''В наличии'' else ''Выдан'' end as book_state '+''+
    'from Doc'+' '+
    'inner join Book on Book.ID_Book=Doc.ID_Book'+' '+
    'where 1=1'+''+
    'order by Book.Name_B asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка'+' '+E.Message);
    end;
    end;
  end;
end;

procedure Tfrm_doc.dockselBtnClick(Sender: TObject);
begin
try
    if not DM.Connection.Connected then
      raise Exception.Create('Соединение с базой не установлено');

    with DM.sel_doc_in do
    begin
      Close;
      Parameters.ParamByName('@name_b').Value := doccondedit_inp.Text;
      Open;
       DM.docQuery.Recordset:=dm.Sel_doc_in.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка БД: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;

procedure Tfrm_doc.doc_fnddEditKeyPress(Sender: TObject; var Key: Char);
begin
try
   dm.docQuery.SQL.Text:=
    'select Doc.ID_Doc,'+' '+
     'Book.Name_B,'+' '+
     'case Doc.m_Status when 0 then ''В наличии'' else ''Выдан'' end as book_state '+''+
    'from Doc'+' '+
    'inner join Book on Book.ID_Book=Doc.ID_Book'+' '+
    'where 1=1'+''+
    'and doc.m_status=0'+
     'and Book.Name_B like'+
   QuotedStr(Concat(doc_fnddEdit.Text,#37));
   dm.docQuery.close;
   dm.docQuery.Open;
except on E: Exception do
  begin
  ShowMessage('wrong situation'+' '+E.Message);
  end;
  end;
end;

procedure Tfrm_doc.doc_reset_RadioClick(Sender: TObject);
var i,j,c:Integer;
begin
if doc_reset_Radio.Checked then
  with Frm_doc do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with frm_doc do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.docQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:=
      'select Doc.ID_Doc,'+' '+
     'Book.Name_B,'+' '+
     'case Doc.m_Status when 0 then ''В наличии'' else ''Выдан'' end as book_state '+''+
    'from Doc'+' '+
    'inner join Book on Book.ID_Book=Doc.ID_Book'+' '+
    'where 1=1';
     Open;
     end;
    with frm_doc do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure Tfrm_doc.doc_statusComboChange(Sender: TObject);
begin
if doc_statusCombo.ItemIndex=0 then stat_s:=0
  else if doc_statusCombo.ItemIndex=1 then stat_s:=1;
end;

procedure Tfrm_doc.FormActivate(Sender: TObject);
begin
dm.AutQuery.Open;
dm.GenreQuery.Open;
dm.bookQuery.Open;
dm.docQuery.Open;
end;

procedure Tfrm_doc.FormClose(Sender: TObject; var Action: TCloseAction);
var
 q:Integer;
begin
stat_s:=0;
upd_stat_s:=0;
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

procedure Tfrm_doc.FormCreate(Sender: TObject);
const
  ButtonNames: array[0..3] of string = ('Удалить','Изменить',
  'Добавить','Выбрать');
  var
  ButtonClicks: array of TNotifyEvent;
begin
stat_s:=0;
upd_stat_s:=0;
 frm_doc.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
  docImageList.Clear;
  LoadIconFromResource('DELETE_ICON',1,docImageList);
  LoadIconFromResource('EDIT_ICON',1,docImageList);
  LoadIconFromResource('ADD_ICON',1,docImageList);
  LoadIconFromResource('SELECT_ICON',1,docImageList);
  SetLength(ButtonClicks, 4);
  ButtonClicks[0] := ChangeFormColor;
  ButtonClicks[1] := ChangeFormColor;
  ButtonClicks[2] := ChangeFormColor;
  ButtonClicks[3] := ChangeFormColor;
  CreateToolBarWithButtons(Self, docImageList, ButtonNames, ButtonClicks);
end;

procedure Tfrm_doc.Ins_book_insBtnClick(Sender: TObject);
var AreFieldsEmpty: Boolean;
begin
AreFieldsEmpty:=(
(Ins_doc_book_DBL.Text='')or
(doc_statusCombo.Text='')
);
if AreFieldsEmpty then
  begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  try
      with dm.ins_doc do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@ID_Book').Value :=
           dm.bookQuery.FieldByName('ID_Book').AsString;
           Parameters.ParamByName('@Status').Value:=stat_s;
           ExecProc;
           dm.docQuery.Close;
           dm.docQuery.Open;
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

procedure Tfrm_doc.upd_docComboChange(Sender: TObject);
begin
if upd_docCombo.ItemIndex=0 then upd_stat_s:=0
  else if upd_docCombo.ItemIndex=1 then upd_stat_s:=1;
end;

procedure Tfrm_doc.upd_doc_BtnClick(Sender: TObject);
var
  AreFieldsEmpty: Boolean;
begin
AreFieldsEmpty:=(
(doc_updDBL.Text='')or
(upd_docCombo.Text='')
);
if AreFieldsEmpty then
begin
    MessageDlg('Ошибка: одно из полей пустое или текст не прошел проверку',
    mtError, [mbOK], 0);
    Beep;
    Exit;
end;
try
      with dm.upd_doc do
      begin
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
           Parameters.ParamByName('@status').Value :=upd_stat_s;
           Parameters.ParamByName('@ID_Doc').Value :=
           DM.docQuery.FieldByName('ID_Doc').AsString;
           ExecProc;
           dm.docQuery.Close;
           dm.docQuery.Open;
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

unit Un_book;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, ComCtrls, ToolWin,ADODB,db, StdCtrls, Grids,
  DBGrids, DBCtrls;

type
  Tfrm_book = class(TForm)
    BookToolBar: TToolBar;
    BookImageList: TImageList;
    BookPC: TPageControl;
    sel_tab: TTabSheet;
    ins_tab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    bookbtnBox: TGroupBox;
    book_grupperBox: TGroupBox;
    bookselBtn: TButton;
    book_data_Box: TGroupBox;
    booknaimRadio_grupper: TRadioButton;
    book_reset_Radio: TRadioButton;
    bookGrid: TDBGrid;
    gen_upd_inp_box: TGroupBox;
    Upd_gen_data_Box: TGroupBox;
    Upd_gen_naim_inp: TLabeledEdit;
    gen_upd_lbl: TLabel;
    gen_updDBL: TDBLookupComboBox;
    upd_gen_btn_box: TGroupBox;
    upd_gen_Btn: TButton;
    gen_del_inp_Box: TGroupBox;
    gen_delLbl: TLabel;
    gen_delDBL: TDBLookupComboBox;
    gen_del_btn_Box: TGroupBox;
    gen_del_btn: TButton;
    gen_del_data_Box: TGroupBox;
    gen_updGrid: TDBGrid;
    gendelGrid: TDBGrid;
    book_condBox: TGroupBox;
    bookcondedit_inp: TLabeledEdit;
    book_fnddEdit: TLabeledEdit;
    aboutbookPC: TPageControl;
    about_bookTab_one: TTabSheet;
    about_book_yab_two: TTabSheet;
    naim_b_inp: TLabeledEdit;
    m_source_inp: TLabeledEdit;
    ins_book_date_p_lbl: TStaticText;
    datep_inp: TDateTimePicker;
    m_count_grader: TUpDown;
    m_count_inp: TLabeledEdit;
    price_inp: TLabeledEdit;
    doc_count: TLabeledEdit;
    ins_book_data_Box: TGroupBox;
    genre_lbl: TStaticText;
    Ins_book_genre_DBL: TDBLookupComboBox;
    ins_book_autor_lbl: TStaticText;
    ins_book_autorDBL: TDBLookupComboBox;
    publisher_inp: TLabeledEdit;
    numebr_of_pages_inp: TLabeledEdit;
    Year_of_pub_inp: TLabeledEdit;
    ins_book_btn_Box: TGroupBox;
    Ins_book_insBtn: TButton;
    Ins_book_dataBox: TGroupBox;
    ins_book_DataGrid: TDBGrid;
    docCB: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bookselBtnClick(Sender: TObject);
    procedure book_fnddEditKeyPress(Sender: TObject; var Key: Char);
    procedure booknaimRadio_grupperClick(Sender: TObject);
    procedure book_reset_RadioClick(Sender: TObject);
    procedure Ins_book_insBtnClick(Sender: TObject);
  private
  procedure ChangeFormColor(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frm_book: Tfrm_book;

implementation

uses Un_dm, Un_func, Un_main;

{$R *.dfm}

procedure Tfrm_book.booknaimRadio_grupperClick(Sender: TObject);
begin
 if booknaimRadio_grupper.Checked=true then
  begin
    try
     with dm.bookQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
      'select'+' '+
    'Book.ID_Book,'+' '+
    'Book.Name_B,'+' '+
    'Book.m_Source,'+' '+
    'Book.Date_P,'+' '+
    'Book.m_Count,'+' '+
    'Book.Price,'+
    'Genre.Name_G,'+' '+
    'Author.Name_A,'+' '+
    'Book.Publisher,'+' '+
    'Book.Number_of_Pages,'+' '+
    'Book.Year_of_Pub'+' '+
    'from'+' '+
    'Book'+' '+
    'inner join Genre on Genre.ID_Genre=Book.ID_Genre'+' '+
    'inner join Author on Author.ID_Author=Book.ID_Author'+' '+
    'where 1=1'+' '+
    'Order by Book.Name_B asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка'+' '+E.Message);
    end;
    end;
  end;
end;

procedure Tfrm_book.bookselBtnClick(Sender: TObject);
begin
try
    if not DM.Connection.Connected then
      raise Exception.Create('Соединение с базой не установлено');

    with DM.sel_book do
    begin
      Close;
      Parameters.ParamByName('@Name_B').Value:=bookcondedit_inp.Text;
      Open;
       DM.bookQuery.Recordset:=dm.sel_book.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка БД: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;

procedure Tfrm_book.book_fnddEditKeyPress(Sender: TObject; var Key: Char);
begin
try
   dm.bookQuery.SQL.Text:=
    'select'+' '+
    'Book.ID_Book,'+' '+
    'Book.Name_B,'+' '+
    'Book.m_Source,'+' '+
    'Book.Date_P,'+' '+
    'Book.m_Count,'+' '+
    'Book.Price,'+
    'Genre.Name_G,'+' '+
    'Author.Name_A,'+' '+
    'Book.Publisher,'+' '+
    'Book.Number_of_Pages,'+' '+
    'Book.Year_of_Pub'+' '+
    'from'+' '+
    'Book'+' '+
    'inner join Genre on Genre.ID_Genre=Book.ID_Genre'+' '+
    'inner join Author on Author.ID_Author=Book.ID_Author'+' '+
    'where 1=1'+' '+
    'and Book.Name_B like'+
   QuotedStr(Concat(book_fnddEdit.Text,#37));
   dm.bookQuery.close;
   dm.bookQuery.Open;
except on E: Exception do
  begin
  ShowMessage('wrong situation'+' '+E.Message);
  end;
  end;
end;

procedure Tfrm_book.book_reset_RadioClick(Sender: TObject);
var i,j,c:Integer;
begin
    if book_reset_Radio.Checked then
  with frm_book do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with frm_book do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.bookQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:=
     'select'+' '+
    'Book.ID_Book,'+' '+
    'Book.Name_B,'+' '+
    'Book.m_Source,'+' '+
    'Book.Date_P,'+' '+
    'Book.m_Count,'+' '+
    'Book.Price,'+
    'Genre.Name_G,'+' '+
    'Author.Name_A,'+' '+
    'Book.Publisher,'+' '+
    'Book.Number_of_Pages,'+' '+
    'Book.Year_of_Pub'+' '+
    'from'+' '+
    'Book'+' '+
    'inner join Genre on Genre.ID_Genre=Book.ID_Genre'+' '+
    'inner join Author on Author.ID_Author=Book.ID_Author'+' '+
    'where 1=1';
     Open;
     end;
    with frm_book do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure Tfrm_book.ChangeFormColor(Sender: TObject);
begin
  if Sender is TToolButton then
  begin
    case TToolButton(Sender).Tag of
      0:bookPC.ActivePage:=delTab;
      1:BookPC.ActivePage:=Updtab;
      2:BookPC.ActivePage:=ins_Tab;
      3:BookPC.ActivePage:=sel_Tab;
    else
        BookPC.ActivePage:=sel_tab;
    end;
  end;
end;




procedure Tfrm_book.FormActivate(Sender: TObject);
begin
dm.bookQuery.Open;
dm.AutQuery.Open;
dm.GenreQuery.Open;
end;

procedure Tfrm_book.FormClose(Sender: TObject; var Action: TCloseAction);
var q:Integer;
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

procedure Tfrm_book.FormCreate(Sender: TObject);
const
  ButtonNames: array[0..3] of string = ('Удалить','Изменить',
  'Добавить','Выбрать');
 var
    ButtonClicks: array of TNotifyEvent;
begin
frm_book.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
  BookImageList.Clear;
  LoadIconFromResource('DELETE_ICON',1,BookImageList);
  LoadIconFromResource('EDIT_ICON',1,BookImageList);
  LoadIconFromResource('ADD_ICON',1,BookImageList);
  LoadIconFromResource('SELECT_ICON',1,BookImageList);
// ShowMessage(IntToStr(iconImageList.Count));
  SetLength(ButtonClicks, 4);
  ButtonClicks[0] := ChangeFormColor;
  ButtonClicks[1] := ChangeFormColor;
  ButtonClicks[2] := ChangeFormColor;
  ButtonClicks[3] := ChangeFormColor;
  CreateToolBarWithButtons(Self, BookImageList, ButtonNames, ButtonClicks);
end;

procedure Tfrm_book.Ins_book_insBtnClick(Sender: TObject);
begin
case docCB.Checked of
True:
begin
   ShowMessage('Нажат');
end;
false:
begin
    ShowMessage('Не нажат');
end;
end;//case
end;

end.

unit Un_doc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, ComCtrls, ToolWin,ADODB,db, StdCtrls, Grids,
  DBGrids, DBCtrls;

type
  Tfrm_doc = class(TForm)
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
    book_upd_inp_box: TGroupBox;
    Upd_book_data_Box: TGroupBox;
    Upd_book_naim_inp: TLabeledEdit;
    book_upd_lbl: TLabel;
    book_updDBL: TDBLookupComboBox;
    upd_book_btn_box: TGroupBox;
    upd_book_Btn: TButton;
    book_del_inp_Box: TGroupBox;
    book_delLbl: TLabel;
    book_delDBL: TDBLookupComboBox;
    book_del_btn_Box: TGroupBox;
    book_del_btn: TButton;
    book_del_data_Box: TGroupBox;
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
    Upd_book_Grid: TDBGrid;
    book_del_Grid: TDBGrid;
    costCB: TCheckBox;
  private
  procedure ChangeFormColor(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frm_doc: Tfrm_doc;

implementation

uses Un_dm, Un_func, Un_main;

{$R *.dfm}

procedure Tfrm_doc.ChangeFormColor(Sender: TObject);
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




end.

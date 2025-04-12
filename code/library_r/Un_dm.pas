unit Un_dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    Connection: TADOConnection;
    AutQuery: TADOQuery;
    autDS: TDataSource;
    Sel_autor_by_name: TADOStoredProc;
    ins_autor: TADOStoredProc;
    upd_autor: TADOStoredProc;
    del_autor: TADOStoredProc;
    GenreQuery: TADOQuery;
    GenreDS: TDataSource;
    sel_genre: TADOStoredProc;
    ins_genre: TADOStoredProc;
    upd_genre: TADOStoredProc;
    del_genre: TADOStoredProc;
    bookQuery: TADOQuery;
    bookDS: TDataSource;
    sel_book: TADOStoredProc;
    INS_BOOK_normal: TADOStoredProc;
    ins_book: TADOStoredProc;
    upd_book: TADOStoredProc;
    del_book: TADOStoredProc;
    docQuery: TADOQuery;
    docDS: TDataSource;
    sel_doc_in: TADOStoredProc;
    sel_doc_all_in: TADOStoredProc;
    sel_doc_all_out: TADOStoredProc;
    INS_DOC: TADOStoredProc;
    upd_doc: TADOStoredProc;
    del_doc: TADOStoredProc;
    readerQuery: TADOQuery;
    readerDS: TDataSource;
    sel_reader: TADOStoredProc;
    sel_reader_by_age: TADOStoredProc;
    sel_reader_by_data_r: TADOStoredProc;
    INS_Reader: TADOStoredProc;
    upd_reader: TADOStoredProc;
    del_reader: TADOStoredProc;
    deliveryQuery: TADOQuery;
    deliveryDS: TDataSource;
    sel_delivery: TADOStoredProc;
    sel_book_bak_common: TADOStoredProc;
    sel_delivery_d: TADOStoredProc;
    INS_Delivary: TADOStoredProc;
    Upd_Delivary: TADOStoredProc;
    del_delivery: TADOStoredProc;
    AttachmentQuery: TADOQuery;
    AttachmentDS: TDataSource;
    sel_attachment_by_fname: TADOStoredProc;
    ins_attachment: TADOStoredProc;
    get_attachment: TADOStoredProc;
    upd_attachment_description: TADOStoredProc;
    del_att: TADOStoredProc;
    reportQuery: TADOQuery;
    ReporDS: TDataSource;
    REPORT_1: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Un_func;

{$R *.dfm}

end.

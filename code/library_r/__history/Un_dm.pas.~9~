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

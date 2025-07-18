unit Un_dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    Connection: TADOConnection;
    langQuery: TADOQuery;
    langDS: TDataSource;
    sel_lang_by_name: TADOStoredProc;
    ins_lang: TADOStoredProc;
    upd_lang: TADOStoredProc;
    del_lang: TADOStoredProc;
    TsQuery: TADOQuery;
    TsDS: TDataSource;
    sel_work_by_theme: TADOStoredProc;
    ins_to_sv: TADOStoredProc;
    upd_sv: TADOStoredProc;
    del_sv: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.

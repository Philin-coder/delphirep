unit Un_dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    Connection: TADOConnection;
    muserQuery: TADOQuery;
    muserDS: TDataSource;
    sel_user_by_fio: TADOStoredProc;
    ins_user: TADOStoredProc;
    upd_user: TADOStoredProc;
    del_user: TADOStoredProc;
    workQuery: TADOQuery;
    workDS: TDataSource;
    sel_work_by_name: TADOStoredProc;
    ins_work: TADOStoredProc;
    upd_work: TADOStoredProc;
    del_work: TADOStoredProc;
    reportQuery: TADOQuery;
    reportDS: TDataSource;
    report1: TADOStoredProc;
    pass_aQuery: TADOQuery;
    pass_aDS: TDataSource;
    aut_pas: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Un_func, Un_m_user;

{$R *.dfm}

end.

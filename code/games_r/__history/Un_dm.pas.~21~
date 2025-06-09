unit Un_dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    Connection: TADOConnection;
    etapQuery: TADOQuery;
    etapDS: TDataSource;
    sel_etap_by_name: TADOStoredProc;
    ins_etap: TADOStoredProc;
    upd_etap: TADOStoredProc;
    del_etap: TADOStoredProc;
    workQuery: TADOQuery;
    workDS: TDataSource;
    sel_work_by_naim: TADOStoredProc;
    sel_work_by_urgency: TADOStoredProc;
    ins_work: TADOStoredProc;
    upd_work: TADOStoredProc;
    del_work: TADOStoredProc;
    usverQuery: TADOQuery;
    usevrDS: TDataSource;
    sel_user_by_role: TADOStoredProc;
    ins_user: TADOStoredProc;
    upd_usver: TADOStoredProc;
    ADOStoredProc4: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Un_main;

{$R *.dfm}

end.

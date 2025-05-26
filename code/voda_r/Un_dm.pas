unit Un_dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    Connection: TADOConnection;
    userQuery: TADOQuery;
    userDS: TDataSource;
    upd_user: TADOStoredProc;
    ins_user: TADOStoredProc;
    del_user: TADOStoredProc;
    sel_user_by_login: TADOStoredProc;
    typeQuery: TADOQuery;
    typeDS: TDataSource;
    sel_by_opis: TADOStoredProc;
    del_type: TADOStoredProc;
    ins_type: TADOStoredProc;
    upd_type: TADOStoredProc;
    masterQuery: TADOQuery;
    masterDS: TDataSource;
    sel_master_by_fio: TADOStoredProc;
    ins_master: TADOStoredProc;
    upd_master: TADOStoredProc;
    del_master: TADOStoredProc;
    operQuery: TADOQuery;
    operDS: TDataSource;
    sel_oper: TADOStoredProc;
    ins_oper: TADOStoredProc;
    upd_oper: TADOStoredProc;
    del_oper: TADOStoredProc;
    schetQuery: TADOQuery;
    schetDS: TDataSource;
    sel_schet: TADOStoredProc;
    ins_schet: TADOStoredProc;
    upd_shchet: TADOStoredProc;
    del_shcet: TADOStoredProc;
    klientQuery: TADOQuery;
    klientDS: TDataSource;
    ADOStoredProc1: TADOStoredProc;
    ADOStoredProc2: TADOStoredProc;
    ADOStoredProc3: TADOStoredProc;
    ADOStoredProc4: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Un_user;

{$R *.dfm}

end.

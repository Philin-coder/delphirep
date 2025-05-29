unit Un_dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    Connection: TADOConnection;
    userQuery: TADOQuery;
    userDS: TDataSource;
    sel_user_by_fio: TADOStoredProc;
    ins_pass: TADOStoredProc;
    upd_pas: TADOStoredProc;
    del_pass: TADOStoredProc;
    manQuery: TADOQuery;
    manDS: TDataSource;
    sel_man_by_fio: TADOStoredProc;
    ins_manager: TADOStoredProc;
    upd_man: TADOStoredProc;
    del_men: TADOStoredProc;
    UslQuery: TADOQuery;
    uslDS: TDataSource;
    sel_usl_by_opis: TADOStoredProc;
    ins_usluga: TADOStoredProc;
    okaz_usl: TADOStoredProc;
    del_usluga: TADOStoredProc;
    PlanQuery: TADOQuery;
    sel_plan_by_nazv: TADOStoredProc;
    PlanDS: TDataSource;
    ins_mplan: TADOStoredProc;
    upd_plan: TADOStoredProc;
    del_mplan: TADOStoredProc;
    klientQuery: TADOQuery;
    klientDS: TDataSource;
    sel_klient_by_fam: TADOStoredProc;
    ins_klient: TADOStoredProc;
    upd_klient: TADOStoredProc;
    ADOStoredProc4: TADOStoredProc;
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

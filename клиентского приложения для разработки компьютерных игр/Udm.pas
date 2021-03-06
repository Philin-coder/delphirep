unit Udm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdM = class(TDataModule)
    ADOConnection1: TADOConnection;
    Querypass: TADOQuery;
    DSpass: TDataSource;
    QuerypassusverId: TAutoIncField;
    Querypassusver_role: TStringField;
    Querypassusver_pass: TStringField;
    ins_user: TADOStoredProc;
    Queryproekt: TADOQuery;
    DSproekt: TDataSource;
    ins_proekt: TADOStoredProc;
    Querymanager: TADOQuery;
    DSmanager: TDataSource;
    Ins_manager: TADOStoredProc;
    Queryot: TADOQuery;
    DSot: TDataSource;
    etapQuery: TADOQuery;
    DSetap: TDataSource;
    ins_etap: TADOStoredProc;
    Querywork: TADOQuery;
    DSwork: TDataSource;
    ins_work: TADOStoredProc;
    DStask: TDataSource;
    Querytask: TADOQuery;
    QueryotNam_proect: TStringField;
    Queryotjanr: TStringField;
    Queryotfio: TStringField;
    Queryotdata_nash: TWideStringField;
    Queryotdataend: TWideStringField;
    Queryotdataendplan: TWideStringField;
    Queryotcost_plan: TBCDField;
    Queryotcost_fact: TBCDField;
    QuerytaskN_Zad: TAutoIncField;
    QuerytaskSr_vip: TWideStringField;
    QuerytaskN_Rab: TIntegerField;
    QuerytaskSt_rab: TStringField;
    QuerytaskData_nash: TWideStringField;
    QuerytaskDate_fakt: TWideStringField;
    QuerytaskN_Proekta: TIntegerField;
    QuerytaskN_Work: TIntegerField;
    Queryrabotnik: TADOQuery;
    DSrabotnik: TDataSource;
    ins_rabotnic: TADOStoredProc;
    Ins_zadanie: TADOStoredProc;
    DSdol: TDataSource;
    Querydol: TADOQuery;
    Ins_dol: TADOStoredProc;
    Queryuv: TADOQuery;
    upd_rab: TADOStoredProc;
    DsUv: TDataSource;
    Querysearch: TADOQuery;
    DSsearch: TDataSource;
    Querytasklist: TADOQuery;
    DStasklist: TDataSource;
    sel_task: TADOStoredProc;
    Queryvip: TADOQuery;
    Dsvz: TDataSource;
    vip_zadan: TADOStoredProc;
    QueryRZ: TADOQuery;
    DSRZ: TDataSource;
    razdacha: TADOStoredProc;
    Queryfreeworkers: TADOQuery;
    DSfreeworkers: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dM: TdM;

implementation

uses Ureg, Umen, Usotr;

{$R *.dfm}

end.

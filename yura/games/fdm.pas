unit fdm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    Querydol: TADOQuery;
    ins_dol: TADOStoredProc;
    DSdol: TDataSource;
    Queryetap: TADOQuery;
    DSetap: TDataSource;
    ins_etap: TADOStoredProc;
    Querywork: TADOQuery;
    DSwork: TDataSource;
    ins_work: TADOStoredProc;
    Querywoker: TADOQuery;
    ins_rabotnic: TADOStoredProc;
    DSwoker: TDataSource;
    Queryproect: TADOQuery;
    DSproect: TDataSource;
    ins_proect: TADOStoredProc;
    Queryzadanie: TADOQuery;
    ins_zadanie: TADOStoredProc;
    DSzadanie: TDataSource;
    Queryreport: TADOQuery;
    DSreport: TDataSource;
    Querytest: TADOQuery;
    DStest: TDataSource;
    QuerytestFio: TStringField;
    QuerytestNam_dol: TStringField;
    QuerytestDate_pr: TWideStringField;
    QuerytestIphone: TIntegerField;
    QuerytestNam_work: TStringField;
    QuerytestNam_proect: TStringField;
    Querytestdataendplan: TWideStringField;
    QueryworkN_Work: TAutoIncField;
    QueryworkNam_work: TStringField;
    QueryworkT_days: TWideStringField;
    QueryworkN_Etap: TIntegerField;
    QueryetapN_Etap: TAutoIncField;
    QueryetapNam_etap: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

uses ins_dol, ins_etap, ins_work, ins_woreker, ins_zadan, ins_proekt, otchet,
  Utest;

{$R *.dfm}

end.

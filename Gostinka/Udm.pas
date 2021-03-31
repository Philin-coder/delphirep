unit Udm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TfDm = class(TDataModule)
    ADOConnection1: TADOConnection;
    Queryadm: TADOQuery;
    DSadm: TDataSource;
    ins_adm: TADOStoredProc;
    QueryUsl: TADOQuery;
    DsUsluga: TDataSource;
    ins_usluga: TADOStoredProc;
    ins_nomer: TADOStoredProc;
    Querynom: TADOQuery;
    DSnom: TDataSource;
    Querydog: TADOQuery;
    DSdogovor: TDataSource;
    ins_dog: TADOStoredProc;
    Querydogdogovor_id: TAutoIncField;
    Querydogguest_fio: TStringField;
    Querydogguest_datar: TWideStringField;
    Querydogguest_passp_n: TStringField;
    Querydogguest_passp_s: TStringField;
    Querydogguest_dvp: TWideStringField;
    Querydogguest_kem_vid: TStringField;
    Querydogguest_m_r: TStringField;
    Querydogguest_data_reg: TWideStringField;
    Querydogguest_pol: TStringField;
    Querydogguest_cel_p: TStringField;
    Querydognomer_id: TIntegerField;
    Querydogdate_dog: TWideStringField;
    Querydogsrok_d: TBCDField;
    Querydogadmin_id: TIntegerField;
    Queryopl: TADOQuery;
    DSopl: TDataSource;
    ins_opl: TADOStoredProc;
    Queryot: TADOQuery;
    DSot: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDm: TfDm;

implementation

uses Uadmn, UUsl, Unom, Udog;

{$R *.dfm}

end.

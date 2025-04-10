unit Udm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    Query_stud: TADOQuery;
    DS_stud: TDataSource;
    Query_grupp: TADOQuery;
    DS_groupp: TDataSource;
    Query_ot: TADOQuery;
    DS_ot: TDataSource;
    Query_back: TADOQuery;
    Dsback: TDataSource;
    Query_rpv: TADOQuery;
    DS_rpv: TDataSource;
    Query_pay: TADOQuery;
    DS_pay: TDataSource;
    Query_report: TADOQuery;
    DS_report: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Umain, Ugruppa, Urpv, Ureport;



{$R *.dfm}

end.

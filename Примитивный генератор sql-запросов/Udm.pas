unit Udm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TfDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    Queryspec: TADOQuery;
    Querystud: TADOQuery;
    Querykaph: TADOQuery;
    Querygrupp: TADOQuery;
    DSspec: TDataSource;
    DSstud: TDataSource;
    Dskaph: TDataSource;
    DSgrupp: TDataSource;
    querytest: TADOQuery;
    DStest: TDataSource;
    QueryspecSpecId: TAutoIncField;
    Queryspecnaim: TStringField;
    Queryspecotr: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDM: TfDM;

implementation

uses Umain;

{$R *.dfm}

end.

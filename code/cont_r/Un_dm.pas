unit Un_dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    Connection: TADOConnection;
    specQuery: TADOQuery;
    spectDS: TDataSource;
    GruppQuery: TADOQuery;
    GruppDS: TDataSource;
    StudQuery: TADOQuery;
    StuddS: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Un_main, Un_func, Un_spec, Un_grupp;

{$R *.dfm}

end.

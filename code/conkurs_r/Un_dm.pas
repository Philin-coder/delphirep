unit Un_dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    Connection: TADOConnection;
    muserQuery: TADOQuery;
    muserDS: TDataSource;
    ADOStoredProc1: TADOStoredProc;
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

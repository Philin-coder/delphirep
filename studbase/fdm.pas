unit fdm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    Queryspc: TADOQuery;
    DSspec: TDataSource;
    ins_spec: TADOStoredProc;
    Querygruppa: TADOQuery;
    DSgruppa: TDataSource;
    ins_gruppa: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

uses Uvvod;

{$R *.dfm}

end.

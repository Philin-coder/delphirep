unit fdm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    shifr: TADOStoredProc;
    Queryshifr: TADOQuery;
    DSshifr: TDataSource;
    Querypr: TADOQuery;
    DSpr: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Unit6;

{$R *.dfm}

end.

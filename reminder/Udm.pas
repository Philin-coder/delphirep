unit Udm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tfdm = class(TDataModule)
    Query_pass: TADOQuery;
    DS_PASS: TDataSource;
    ins_pass: TADOStoredProc;
    ADOConnection1: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdm: Tfdm;

implementation

uses User_creator, logged_users;

{$R *.dfm}

end.

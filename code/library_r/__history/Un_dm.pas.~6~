unit Un_dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    Connection: TADOConnection;
    AutQuery: TADOQuery;
    autDS: TDataSource;
    Sel_autor_by_name: TADOStoredProc;
    ins_autor: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Un_func;

{$R *.dfm}

end.

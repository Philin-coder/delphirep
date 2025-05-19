unit Un_dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    Connection: TADOConnection;
    teacherQuery: TADOQuery;
    teacherDS: TDataSource;
    sel_teacher_by_fio: TADOStoredProc;
    ins_teacher: TADOStoredProc;
    upd_teacher: TADOStoredProc;
    del_teacher: TADOStoredProc;
    subjQuery: TADOQuery;
    subjDS: TDataSource;
    sel_sub: TADOStoredProc;
    del_sub: TADOStoredProc;
    upd_subject: TADOStoredProc;
    ins_subject: TADOStoredProc;
    StudQuery: TADOQuery;
    StudDS: TDataSource;
    sel_stud: TADOStoredProc;
    ins_stud: TADOStoredProc;
    upd_stud: TADOStoredProc;
    del_stud: TADOStoredProc;
    gradeQuery: TADOQuery;
    gradeds: TDataSource;
    sel_grade_by_t_fio: TADOStoredProc;
    ADOStoredProc2: TADOStoredProc;
    ADOStoredProc3: TADOStoredProc;
    ADOStoredProc4: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Un_func, Un_main;

{$R *.dfm}

end.

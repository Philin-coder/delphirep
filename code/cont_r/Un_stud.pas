unit Un_stud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, ADODB,DB, DBCtrls;


type
  TFrm_stud = class(TForm)
    StudPage: TPageControl;
    SelTab: TTabSheet;
    InsTab: TTabSheet;
    UpdTab: TTabSheet;
    delTab: TTabSheet;
    gruppgroupBox: TGroupBox;
    gruppbtnBox: TGroupBox;
    gruppDataBox: TGroupBox;
    gruppSelGrid: TDBGrid;
    gruppSelBtn: TButton;
    gruppCondBox: TGroupBox;
    grupp_condEdit: TLabeledEdit;
    grupp_fnd_edit: TLabeledEdit;
    grupp_sp_groupradio: TRadioButton;
    gruppResetRadio: TRadioButton;
    Grupp_inpBox: TGroupBox;
    Grupp_naim_g_inp: TLabeledEdit;
    Grupp_ins_btn_Box: TGroupBox;
    Grupp_insBtn: TButton;
    Grupp_DataInsBox: TGroupBox;
    Grupp_upd_inp_Box: TGroupBox;
    Grupplbl: TStaticText;
    GruppUpdDBL: TDBLookupComboBox;
    Grupp_upd_btn_Box: TGroupBox;
    Grupp_upd_Btn: TButton;
    Grupp_upd_dataBox: TGroupBox;
    delgrdatacBox: TGroupBox;
    delgrlbl: TStaticText;
    delgrDBL: TDBLookupComboBox;
    dlgrbtnBox: TGroupBox;
    delgrBtn: TButton;
    degrdataBox: TGroupBox;
    grupp_gr_groupradio: TRadioButton;
    fnd_naimCb: TCheckBox;
    Grupp_insGrd: TDBGrid;
    GradeUpDown: TUpDown;
    GradeEdit: TEdit;
    gradelbl: TStaticText;
    SpecGrinsDBL: TDBLookupComboBox;
    SpecGinsLbl: TLabel;
    GruppupdDataGrd: TDBGrid;
    UpDown_upd_grade: TUpDown;
    gr_upd_grader: TEdit;
    grupdLbl: TLabel;
    TimeTimer: TTimer;
    TimePanel: TLabel;
    delgrgrid: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_stud: TFrm_stud;

implementation

uses Un_dm, Un_main, Un_func;

{$R *.dfm}



end.

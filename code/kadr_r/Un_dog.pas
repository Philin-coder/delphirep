unit Un_dog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, ComCtrls;

type
  TFrm_dog = class(TForm)
    DogPage: TPageControl;
    SeldogPage: TTabSheet;
    ConditiondogBox: TGroupBox;
    seldogPanel: TPanel;
    Radio_dcomp_name: TRadioButton;
    Radio_dpay_cond_grupp: TRadioButton;
    RadiodogselReset: TRadioButton;
    conddogPanel: TPanel;
    ConddogEdit: TLabeledEdit;
    fnddogPanel: TPanel;
    fnd_cont_face_Edit: TLabeledEdit;
    Check_adr_search: TCheckBox;
    DatadogBox: TGroupBox;
    DatadogGrd: TDBGrid;
    ButtondogBox: TGroupBox;
    SedoglBtn: TButton;
    InsPage: TTabSheet;
    InpBox: TGroupBox;
    Prof_name_inp: TLabeledEdit;
    Prof_group_inp: TLabeledEdit;
    DataOutBox: TGroupBox;
    Pfor_ins_Grid: TDBGrid;
    BtnBox: TGroupBox;
    ins_Btn: TButton;
    UpdPage: TTabSheet;
    oldDtaBox: TGroupBox;
    profnameLbl: TLabel;
    profgroupLbl: TLabel;
    DBLookupComboBox_prof: TDBLookupComboBox;
    DBLookupComboBox_group: TDBLookupComboBox;
    UpdBtnGroup: TGroupBox;
    UpdBtn: TButton;
    setdataBox: TGroupBox;
    setNameEdit: TLabeledEdit;
    SetGroupEdit: TLabeledEdit;
    UpddataBox: TGroupBox;
    UpddbGrid: TDBGrid;
    filterPanel: TPanel;
    Upd_all: TRadioButton;
    Upd_prof: TRadioButton;
    Upd_ind: TRadioButton;
    delPage: TTabSheet;
    del_seldataBox: TGroupBox;
    profLbl: TLabel;
    delseldataComboBox: TDBLookupComboBox;
    dlbtnBox: TGroupBox;
    dlBtn: TButton;
    dldaraBox: TGroupBox;
    dldataGrid: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_dog: TFrm_dog;

implementation

uses Un_dm, Unmain;

{$R *.dfm}

procedure TFrm_dog.FormActivate(Sender: TObject);
begin
dm.doQuery.Open;
dm.dogQuery.Open;
end;

procedure TFrm_dog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.dogQuery.Close;
dm.dogQuery.Close;
end;

procedure TFrm_dog.FormCreate(Sender: TObject);
begin
 with Frm_dog do
begin
  width:=1024;
  height:=768;
  Position:=poScreenCenter;
end;
end;

end.

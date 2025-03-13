unit Un_grupp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, ADODB,DB, DBCtrls;

type
  TFrm_grupp = class(TForm)
    grupPage: TPageControl;
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
    spec_inpBox: TGroupBox;
    spec_inp: TLabeledEdit;
    Spec_ins_btn_Box: TGroupBox;
    Spec_insBtn: TButton;
    SpecDataInsBox: TGroupBox;
    Spec_insGrd: TDBGrid;
    Spec_upd_inp_Box: TGroupBox;
    spec_upd_spec_inp: TLabeledEdit;
    Speclbl: TStaticText;
    SpecUpdDBL: TDBLookupComboBox;
    Spec_upd_btn_Box: TGroupBox;
    Spec_upd_Btn: TButton;
    Spec_upd_dataBox: TGroupBox;
    SpecUpddataGrd: TDBGrid;
    delspedatacBox: TGroupBox;
    delspeclbl: TStaticText;
    delSpecDBL: TDBLookupComboBox;
    dlspecbtnBox: TGroupBox;
    delspecBtn: TButton;
    delspecdataBox: TGroupBox;
    delspecGrd: TDBGrid;
    grupp_gr_groupradio: TRadioButton;
    fnd_naimCb: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_grupp: TFrm_grupp;

implementation

uses Un_dm, Un_main, Un_func;

{$R *.dfm}

procedure TFrm_grupp.FormActivate(Sender: TObject);
begin
  dm.GruppQuery.Open;
  dm.specQuery.Open;
end;

procedure TFrm_grupp.FormClose(Sender: TObject; var Action: TCloseAction);
var
  q:Integer;
begin
  SaveFormState(Self);
 with dm do
 begin
    for q := 0 to ComponentCount - 1 do
 begin
    if(Components[q] is TADOQuery)  then
   begin
      (Components[q] as TADOQuery).Close;
 end;
 end;
 end;
 end;

procedure TFrm_grupp.FormCreate(Sender: TObject);
begin
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);
end;

end.

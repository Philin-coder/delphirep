unit Un_schet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DB,ADODB, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls;

type
  TFrm_schet = class(TForm)
    schetPC: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    schet_inp_boxBox: TGroupBox;
    schet_data_box: TGroupBox;
    schet_grouper: TGroupBox;
    schet_btn_Box: TGroupBox;
    schetCondEdit: TLabeledEdit;
    schetfndEdit: TLabeledEdit;
    schet_sel_Btn: TButton;
    schet_d_ust_Radio: TRadioButton;
    schet_vrem_p_Radio: TRadioButton;
    schet_resetRadio: TRadioButton;
    ins_oper_data_Box: TGroupBox;
    ins_masterbtnBox: TGroupBox;
    ins_oper_insBtn: TButton;
    o_upd_datapBox: TGroupBox;
    o_upd_inpBox: TGroupBox;
    oper_u_btntBox: TGroupBox;
    o_upd_Btn: TButton;
    o_username_lbl: TStaticText;
    o_upd_DBL: TDBLookupComboBox;
    o_del_inpBox: TGroupBox;
    o_delbtnBox: TGroupBox;
    o_del_data_Box: TGroupBox;
    o_del_lbl: TStaticText;
    o_delDBL: TDBLookupComboBox;
    del_oper_lbl: TStaticText;
    o_del_btn: TButton;
    about_operPC: TPageControl;
    about_oper_Tab_one: TTabSheet;
    ins_oper_inp_Box: TGroupBox;
    ins_oper_naim_inp: TLabeledEdit;
    del_oper_grd: TDBGrid;
    oper_upd_Grid: TDBGrid;
    ins_oper_Grd: TDBGrid;
    schet_sel_Grid: TDBGrid;
    user_lbl: TStaticText;
    ins_user_u_DBL: TDBLookupComboBox;
    smdatalbl: TStaticText;
    smdatainp: TDateTimePicker;
    upd_o_Smdatalbl: TStaticText;
    oper_sm_data_inp: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_schet: TFrm_schet;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_schet.FormActivate(Sender: TObject);
begin
  dm.typeQuery.Open;
  dm.scherQuery.OPEN;
  AdjustDBGridColumnWidths('Frm_schet',6000, 10);
end;

procedure TFrm_schet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SaveFormState(Self);
   CloseAllQueriesOnDataModule('dm');
   Action := caFree;
end;

procedure TFrm_schet.FormCreate(Sender: TObject);
begin
  Frm_schet.KeyPreview:=true;
  Frm_schet.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);

end;

end.

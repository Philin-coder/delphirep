unit Un_types;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DB,ADODB, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls;

type
  TFrm_types = class(TForm)
    typePC: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    type_inp_boxBox: TGroupBox;
    type_data_box: TGroupBox;
    type_grouper: TGroupBox;
    type_btn_Box: TGroupBox;
    typeCondEdit: TLabeledEdit;
    typeFNDEdit: TLabeledEdit;
    type_sel_Btn: TButton;
    sel_type_GRD: TDBGrid;
    type_opisRadio: TRadioButton;
    type_m_Radio: TRadioButton;
    type_resetRadio: TRadioButton;
    user_gata_Box: TGroupBox;
    userbtnBox: TGroupBox;
    user_inp_Box: TGroupBox;
    user_insBtn: TButton;
    user_log_inp: TLabeledEdit;
    user_pass_inp: TLabeledEdit;
    u_upd_datapBox: TGroupBox;
    uupd_inpBox: TGroupBox;
    useru_btntBox: TGroupBox;
    u_upd_Btn: TButton;
    u_username_lbl: TStaticText;
    U_upd_DBL: TDBLookupComboBox;
    U_upd_pass_inp: TLabeledEdit;
    GroupBox1: TGroupBox;
    U_delbtnBox: TGroupBox;
    u_del_data_Box: TGroupBox;
    U_del_lbl: TStaticText;
    u_delDBL: TDBLookupComboBox;
    StaticText1: TStaticText;
    u_del_btn: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_types: TFrm_types;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_types.FormActivate(Sender: TObject);
begin
  dm.typeQuery.Open;
  AdjustDBGridColumnWidths('Frm_types',6000, 10)
end;

procedure TFrm_types.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
  Action := caFree;
end;

procedure TFrm_types.FormCreate(Sender: TObject);
begin
  Frm_types.KeyPreview:=true;
  Frm_types.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);
end;

end.

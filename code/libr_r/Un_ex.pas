unit Un_ex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls,ADODB,db, DBCtrls;

type
  TFrm_ex = class(TForm)
    ExPC: TPageControl;
    SelTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    kind_inp_Box: TGroupBox;
    kind_Data_Box: TGroupBox;
    kind_grouper_Box: TGroupBox;
    kind_btn_Box: TGroupBox;
    kind_sel_btn: TButton;
    sel_kind_grid: TDBGrid;
    kind_radio: TRadioButton;
    reset_Radio: TRadioButton;
    KIndCondEdit: TLabeledEdit;
    KIndfndEdit: TLabeledEdit;
    ins_kind_data_Box: TGroupBox;
    ins_kind_btn_Box: TGroupBox;
    ins_kind_inp_Box: TGroupBox;
    ins_kind_btn: TButton;
    ins_Grid_grid: TDBGrid;
    ins_kind_inp: TLabeledEdit;
    Upd_kind_data_Box: TGroupBox;
    Upd_kind_inp_Box: TGroupBox;
    Upd_kind_btn_Box: TGroupBox;
    Upd_kind_btn: TButton;
    Upd_kind_data_Grid: TDBGrid;
    upd_kind_inp: TLabeledEdit;
    upd_kind_id_dbl: TDBLookupComboBox;
    upd_kind_id_lbl: TStaticText;
    kind_del_inp_Box: TGroupBox;
    kind_del_btn_Box: TGroupBox;
    kind_del_data_Box: TGroupBox;
    kind_del_inp_lbl: TStaticText;
    kind_del_inp_dbl: TDBLookupComboBox;
    kind_del_btn: TButton;
    kind_del_Grid: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ex: TFrm_ex;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_ex.FormActivate(Sender: TObject);
begin
  dm.ex_Query.Open;
  dm.act_outQuery.Open;
  dm.docQuery.Open;
  dm.Akt_inQuery.Open;
  AdjustDBGridColumnWidths('Frm_ex',6000, 10);
end;

procedure TFrm_ex.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_ex.FormCreate(Sender: TObject);
begin
  UpdateFormShowHint('Frm_ex');
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeComponentAnchors(Self);
  LoadFormState(Self);
end;

end.

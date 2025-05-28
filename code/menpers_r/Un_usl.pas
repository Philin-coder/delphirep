unit Un_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids,DB,adodb, DBCtrls, Mask;

type
  TFrm_usluga = class(TForm)
    manPC: TPageControl;
    selTab: TTabSheet;
    InsTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    semanInpBox: TGroupBox;
    selmanrbtnBox: TGroupBox;
    selmangrouperBox: TGroupBox;
    selmandataBox: TGroupBox;
    mancondEdit: TLabeledEdit;
    manfndEdit: TLabeledEdit;
    selman_btn: TButton;
    selman_grd: TDBGrid;
    selmanfioradio: TRadioButton;
    selmanlogradio: TRadioButton;
    selmanresetradio: TRadioButton;
    man_data_box: TGroupBox;
    man_btn_box: TGroupBox;
    Ins_man_inp_box: TGroupBox;
    man_fio_inp: TLabeledEdit;
    man_ins_btn: TButton;
    man_upd_data_Box: TGroupBox;
    man_upd_btn_Box: TGroupBox;
    man_upd_inp_Box: TGroupBox;
    man_upd_pas_lbl: TStaticText;
    u_man_id_inp: TDBLookupComboBox;
    man_upd_btn: TButton;
    u_man_mail_inp: TLabeledEdit;
    del_man_data_box: TGroupBox;
    del_man_inp_box: TGroupBox;
    del_man_btn_box: TGroupBox;
    del_man_btn: TButton;
    del_man_usr_lbl: TStaticText;
    del_man_id_inp_DBL: TDBLookupComboBox;
    ins_man_grd: TDBGrid;
    man_cont_lbl: TStaticText;
    mancontinp: TMaskEdit;
    manmailinp: TLabeledEdit;
    man_phone_lbl: TStaticText;
    man_phone_inp: TMaskEdit;
    manloglbl: TStaticText;
    m_user_id_dbl: TDBLookupComboBox;
    man_upd_grd: TDBGrid;
    Del_men_grd: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_usluga: TFrm_usluga;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_usluga.FormActivate(Sender: TObject);
begin
  dm.userQuery.Open;
  dm.manQuery.Open;
  AdjustDBGridColumnWidths('Frm_manager',6000, 10);
end;

procedure TFrm_usluga.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SaveFormState(Self);
   CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_usluga.FormCreate(Sender: TObject);
begin
  UpdateFormShowHint('Frm_manager');
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeComponentAnchors(Self);
  LoadFormState(Self);
end;

end.

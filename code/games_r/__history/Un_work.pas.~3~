unit Un_work;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,ADODB, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls,ActiveX,
  DBCtrls;

type
  TFrm_work = class(TForm)
    EtapPC: TPageControl;
    SelTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    etapcondBox: TGroupBox;
    etapGrouperBox: TGroupBox;
    etapdataBox: TGroupBox;
    etabtnBox: TGroupBox;
    etap_sel_Btn: TButton;
    etap_selGrd: TDBGrid;
    Etap_cond_Edit: TLabeledEdit;
    Etap_fnd_Edit: TLabeledEdit;
    etap_naim_Radio: TRadioButton;
    etap_reset_Radio: TRadioButton;
    etap_data_Box: TGroupBox;
    etap_btn_Box: TGroupBox;
    etap_inp_Box: TGroupBox;
    etap_inp_Btn: TButton;
    etap_data_grd: TDBGrid;
    Nam_etap_inp: TLabeledEdit;
    etap_upd_data_Box: TGroupBox;
    etap_upd_inpBox: TGroupBox;
    etap_upd_btnBox: TGroupBox;
    etap_upd_btn: TButton;
    etap_upd_grd: TDBGrid;
    etap_upd_e_lbl: TStaticText;
    etap_upd_u_dbl: TDBLookupComboBox;
    u_etap_name_inp: TLabeledEdit;
    etap_del_data_Box: TGroupBox;
    etap_del_btn_Box: TGroupBox;
    etap_del_ipp_Box: TGroupBox;
    etap_del_btn: TButton;
    etap_del_grid: TDBGrid;
    etap_del_e_lbl: TStaticText;
    etap_del_e_dbl: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure etap_sel_BtnClick(Sender: TObject);
    procedure etap_naim_RadioClick(Sender: TObject);
    procedure etap_reset_RadioClick(Sender: TObject);
    procedure Etap_fnd_EditKeyPress(Sender: TObject; var Key: Char);
    procedure etap_inp_BtnClick(Sender: TObject);
    procedure etap_upd_btnClick(Sender: TObject);
    procedure etap_del_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_work: TFrm_work;

implementation

uses Un_dm, Un_func;

{$R *.dfm}



procedure TFrm_work.FormActivate(Sender: TObject);
begin
  dm.etapQuery.Open;
  AdjustDBGridColumnWidths('Frm_work',6000, 10);
end;

procedure TFrm_work.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_work.FormCreate(Sender: TObject);
begin
  UpdateFormShowHint('Frm_work');
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeComponentAnchors(Self);
  LoadFormState(Self);
end;

end.

unit Un_pass_autor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids,db,ADODB, Mask, ToolWin,
  ImgList, DBCtrls;

type
  TFrm_pass_aut = class(TForm)
    pasvarImageList: TImageList;
    get_pas_toolbar: TToolBar;
    get_pas_btn: TToolButton;
    pass_a_dataBox: TGroupBox;
    pass_a_grid: TDBGrid;
    pass_a_ntnBox: TGroupBox;
    pass_a_insBtn: TButton;
    pass_a_inpBox: TGroupBox;
    pass_a_login_inp: TLabeledEdit;
    pass_a_pwd_inp: TLabeledEdit;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pass_aut: TFrm_pass_aut;

implementation

uses Un_dm, Un_func;

{$R *.dfm}
end.

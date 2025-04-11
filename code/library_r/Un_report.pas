unit Un_report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, ComCtrls, ToolWin,ADODB,db, StdCtrls, Grids,
  DBGrids, DBCtrls, Mask, Buttons;

type
  Tfrm_report = class(TForm)
    attPC: TPageControl;
    sel_tab: TTabSheet;
    attbtnBox: TGroupBox;
    attselBtn: TButton;
    att_data_Box: TGroupBox;
    attGrid: TDBGrid;
    att_condBox: TGroupBox;
    attcondedit_inp: TLabeledEdit;
    att_fnddEdit: TLabeledEdit;

  private
  public
    { Public declarations }
  end;

var
  frm_report: Tfrm_report;
implementation

uses Un_dm, Un_func, Un_main;

{$R *.dfm}


end.

unit Un_reader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, ComCtrls, ToolWin,ADODB,db, StdCtrls, Grids,
  DBGrids, DBCtrls;

type
  Tfrm_reader = class(TForm)
    readerToolBar: TToolBar;
    readerImageList: TImageList;
    readerPC: TPageControl;
    sel_tab: TTabSheet;
    ins_tab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    readerbtnBox: TGroupBox;
    reader_grupperBox: TGroupBox;
    readerselBtn: TButton;
    reader_data_Box: TGroupBox;
    readernaimRadio_grupper: TRadioButton;
    reader_reset_Radio: TRadioButton;
    readerGrid: TDBGrid;
    doc_upd_inp_box: TGroupBox;
    Upd_doc_data_Box: TGroupBox;
    doc_upd_lbl: TLabel;
    doc_updDBL: TDBLookupComboBox;
    upd_doc_btn_box: TGroupBox;
    upd_doc_Btn: TButton;
    doc_del_inp_Box: TGroupBox;
    doc_delLbl: TLabel;
    doc_delDBL: TDBLookupComboBox;
    doc_del_btn_Box: TGroupBox;
    doc_del_btn: TButton;
    doc_del_data_Box: TGroupBox;
    reader_condBox: TGroupBox;
    readercondedit_inp: TLabeledEdit;
    reader_fnddEdit: TLabeledEdit;
    aboutdocPC: TPageControl;
    readerteansCB: TCheckBox;
    ins_book_data_Box: TGroupBox;
    doc_lbl: TStaticText;
    Ins_doc_book_DBL: TDBLookupComboBox;
    ins_doc_stat_lbl: TStaticText;
    Ins_book_dataBox: TGroupBox;
    ins_book_btn_Box: TGroupBox;
    Ins_book_insBtn: TButton;
    doc_statusCombo: TComboBox;
    ins_doc_Grid: TDBGrid;
    upd_datadocGrid: TDBGrid;
    upd_doc_lbl: TStaticText;
    upd_docCombo: TComboBox;
    DocdelGrid: TDBGrid;
    reader_datar_CB: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);

  private
  procedure ChangeFormColor(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frm_reader: Tfrm_reader;
implementation

uses Un_dm, Un_func, Un_main;

{$R *.dfm}
procedure Tfrm_reader.ChangeFormColor(Sender: TObject);
begin
  if Sender is TToolButton then
  begin
    case TToolButton(Sender).Tag of
      0:readerPC.ActivePage:=delTab;
      1:readerPC.ActivePage:=Updtab;
      2:readerPC.ActivePage:=ins_Tab;
      3:readerPC.ActivePage:=sel_Tab;
    else
        readerPC.ActivePage:=sel_tab;
    end;
  end;
end;
procedure Tfrm_reader.FormActivate(Sender: TObject);
begin
dm.readerQuery.Open;
end;

procedure Tfrm_reader.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfrm_reader.FormCreate(Sender: TObject);
const
  ButtonNames: array[0..3] of string = ('Удалить','Изменить',
  'Добавить','Выбрать');
  var
    ButtonClicks: array of TNotifyEvent;
begin
 frm_reader.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
  readerImageList.Clear;
  LoadIconFromResource('DELETE_ICON',1,readerImageList);
  LoadIconFromResource('EDIT_ICON',1,readerImageList);
  LoadIconFromResource('ADD_ICON',1,readerImageList);
  LoadIconFromResource('SELECT_ICON',1,readerImageList);
  SetLength(ButtonClicks, 4);
  ButtonClicks[0] := ChangeFormColor;
  ButtonClicks[1] := ChangeFormColor;
  ButtonClicks[2] := ChangeFormColor;
  ButtonClicks[3] := ChangeFormColor;
  CreateToolBarWithButtons(Self, readerImageList, ButtonNames, ButtonClicks);
end;

end.

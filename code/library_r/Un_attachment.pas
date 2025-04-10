unit Un_attachment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, ComCtrls, ToolWin,ADODB,db, StdCtrls, Grids,
  DBGrids, DBCtrls, Mask;

type
  Tfrm_attachment = class(TForm)
    attToolBar: TToolBar;
    attImageList: TImageList;
    attPC: TPageControl;
    sel_tab: TTabSheet;
    ins_tab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    attbtnBox: TGroupBox;
    att_grupperBox: TGroupBox;
    attselBtn: TButton;
    att_data_Box: TGroupBox;
    attnaim_f_Radio_grupper: TRadioButton;
    att_reset_Radio: TRadioButton;
    attGrid: TDBGrid;
    dlv_upd_inp_box: TGroupBox;
    Upd_rd_data_Box: TGroupBox;
    dlv_upd_lbl: TLabel;
    dlv_updDBL: TDBLookupComboBox;
    upd_dlv_btn_box: TGroupBox;
    upd_dlv_Btn: TButton;
    dlv_del_inp_Box: TGroupBox;
    dlv_delLbl: TLabel;
    dlv_delDBL: TDBLookupComboBox;
    dlv_del_btn_Box: TGroupBox;
    dlv_del_btn: TButton;
    dlv_del_data_Box: TGroupBox;
    att_condBox: TGroupBox;
    attcondedit_inp: TLabeledEdit;
    att_fnddEdit: TLabeledEdit;
    aboutdlvrPC: TPageControl;
    attopis_feupperCB: TCheckBox;
    ins_dlv_data_Box: TGroupBox;
    Ins_dlv_dataBox: TGroupBox;
    ins_reader_btn_Box: TGroupBox;
    Ins_dlv_insBtn: TButton;
    att_showatt_CB: TCheckBox;
    dlv_ins_doc_lbl: TStaticText;
    ins_del_data_d_lbl: TStaticText;
    ins_del_reader_lbl: TStaticText;
    dlv_data_return_fact_lbl: TStaticText;
    ins_del_doc_DBL: TDBLookupComboBox;
    ins_delivery_reader_DBL: TDBLookupComboBox;
    ins_del_Date_d_inp: TDateTimePicker;
    Ins_dlv_data_return_Plan_lbl: TStaticText;
    ins_del_Date_return_plan_inp: TDateTimePicker;
    ins_dlv_Grid: TDBGrid;
    upd_dlvGrid: TDBGrid;
    Date_return_fact_inp: TDateTimePicker;
    Dlv_del_Grid: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure attselBtnClick(Sender: TObject);
    procedure att_showatt_CBClick(Sender: TObject);
    procedure att_fnddEditKeyPress(Sender: TObject; var Key: Char);
    procedure att_reset_RadioClick(Sender: TObject);
    procedure attnaim_f_Radio_grupperClick(Sender: TObject);

  private
  procedure ChangeFormColor(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frm_attachment: Tfrm_attachment;
implementation

uses Un_dm, Un_func, Un_main;

{$R *.dfm}
procedure Tfrm_attachment.attnaim_f_Radio_grupperClick(Sender: TObject);
begin
   if attnaim_f_Radio_grupper.Checked=true then
  begin
    try
     with dm.AttachmentQuery  do
     begin
      close;
      sql.Clear;
      sql.Text:=
     ' select attachment.id_attachment,'+' '+
    'attachment.file_name_attachment,'+' '+
    'attachment.attachment,'+' '+
    'attachment.attachment_description,'+' '+
    'Book.Name_B'+' '+
    'from attachment'+' '+
    'inner join Doc on attachment.ID_Doc=Doc.ID_Doc'+' '+
    'inner join Book on Doc.ID_Book=Book.ID_Book'+' '+
    'where 1=1'+' '+
    'Order by file_name_attachment asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка'+' '+E.Message);
    end;
    end;
  end;
end;

procedure Tfrm_attachment.attselBtnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise Exception.Create('Соединение с базой не установлено');
    with DM.sel_attachment_by_fname do
    begin
      Close;
           Parameters.ParamByName('@m_fname').Value :=attcondedit_inp.Text;
      Open;
       DM.AttachmentQuery.Recordset:=dm.sel_attachment_by_fname.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка БД: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;

procedure Tfrm_attachment.att_fnddEditKeyPress(Sender: TObject; var Key: Char);
begin
   try
   dm.AttachmentQuery.SQL.Text:=
   ' select attachment.id_attachment,'+' '+
    'attachment.file_name_attachment,'+' '+
    'attachment.attachment,'+' '+
    'attachment.attachment_description,'+' '+
    'Book.Name_B'+' '+
    'from attachment'+' '+
    'inner join Doc on attachment.ID_Doc=Doc.ID_Doc'+' '+
    'inner join Book on Doc.ID_Book=Book.ID_Book'+' '+
    'where 1=1'+' '+
    'and attachment.attachment_description like'+
   QuotedStr(Concat(att_fnddEdit.Text,#37));
   dm.AttachmentQuery.close;
   dm.AttachmentQuery.Open;
except on E: Exception do
  begin
  ShowMessage('wrong situation'+' '+E.Message);
  end;
  end;
end;

procedure Tfrm_attachment.att_reset_RadioClick(Sender: TObject);
var i,j,c:Integer;
begin
   if att_reset_Radio.Checked then
  with frm_attachment do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with frm_attachment do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.AttachmentQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:=
     ' select attachment.id_attachment,'+' '+
    'attachment.file_name_attachment,'+' '+
    'attachment.attachment,'+' '+
    'attachment.attachment_description,'+' '+
    'Book.Name_B'+' '+
    'from attachment'+' '+
    'inner join Doc on attachment.ID_Doc=Doc.ID_Doc'+' '+
    'inner join Book on Doc.ID_Book=Book.ID_Book'+' '+
    'where 1=1';
     Open;
     end;
    with frm_attachment do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;


end;

procedure Tfrm_attachment.att_showatt_CBClick(Sender: TObject);
begin
case att_showatt_CB.Checked of
true:
begin
  attGrid.Columns[2].Visible:=true;
end;
false:
begin
  attGrid.Columns[2].Visible:=False;
end;
end; //case
end;

procedure Tfrm_attachment.ChangeFormColor(Sender: TObject);
begin
  if Sender is TToolButton then
  begin
    case TToolButton(Sender).Tag of
      0:attPC.ActivePage:=delTab;
      1:attPC.ActivePage:=Updtab;
      2:attPC.ActivePage:=ins_Tab;
      3:attPC.ActivePage:=sel_Tab;
    else
        attPC.ActivePage:=sel_tab;
    end;
  end;
end;
procedure Tfrm_attachment.FormActivate(Sender: TObject);
begin
dm.AutQuery.Open;
dm.GenreQuery.Open;
dm.bookQuery.Open;
dm.docQuery.Open;
dm.readerQuery.Open;
dm.deliveryQuery.Open;
dm.AttachmentQuery.Open;
end;

procedure Tfrm_attachment.FormClose(Sender: TObject; var Action: TCloseAction);
var q:Integer;
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
   attGrid.Columns[2].Visible:=False;
end;

procedure Tfrm_attachment.FormCreate(Sender: TObject);
const
  ButtonNames: array[0..3] of string = ('Удалить','Изменить',
  'Добавить','Выбрать');

  var
  ButtonClicks: array of TNotifyEvent;
begin
 attGrid.Columns[2].Visible:=False;
 frm_attachment.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);
  attImageList.Clear;
  LoadIconFromResource('DELETE_ICON',1,attImageList);
  LoadIconFromResource('EDIT_ICON',1,attImageList);
  LoadIconFromResource('ADD_ICON',1,attImageList);
  LoadIconFromResource('SELECT_ICON',1,attImageList);
  SetLength(ButtonClicks, 4);
  ButtonClicks[0] := ChangeFormColor;
  ButtonClicks[1] := ChangeFormColor;
  ButtonClicks[2] := ChangeFormColor;
  ButtonClicks[3] := ChangeFormColor;
  CreateToolBarWithButtons(Self, attImageList, ButtonNames, ButtonClicks);
end;

end.

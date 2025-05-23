﻿unit Un_ank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, ComCtrls,ADODB,DateUtils;

type
  TFrm_ank = class(TForm)
    AnkPage: TPageControl;
    SelAnkPage: TTabSheet;
    ConditionAnkBox: TGroupBox;
    seldogPanel: TPanel;
    Radio_staj_name: TRadioButton;
    Radio_kval_grupp: TRadioButton;
    RadioankselReset: TRadioButton;
    condankPanel: TPanel;
    CondankEdit: TLabeledEdit;
    fndankPanel: TPanel;
    fnd_kval_Edit: TLabeledEdit;
    Check_wish_search: TCheckBox;
    DataankBox: TGroupBox;
    DataankGrd: TDBGrid;
    ButtondogBox: TGroupBox;
    SeanklBtn: TButton;
    InsankPage: TTabSheet;
    InpankBox: TGroupBox;
    fio_inp: TLabeledEdit;
    DataOutdogBox: TGroupBox;
    ankinpBtnBox: TGroupBox;
    ins_ank_Btn: TButton;
    UpdankPage: TTabSheet;
    oldDtaBox: TGroupBox;
    nakfioLbl: TLabel;
    DBLookupComboBox_ank: TDBLookupComboBox;
    setdataBox: TGroupBox;
    updwishinp: TLabeledEdit;
    UpddataBox: TGroupBox;
    deanklPage: TTabSheet;
    del_ankdataBox: TGroupBox;
    ankLbl: TLabel;
    delankdatadgComboBox: TDBLookupComboBox;
    dlankbtnBox: TGroupBox;
    dlankBtn: TButton;
    dldaraBox: TGroupBox;
    kval_inp: TLabeledEdit;
    staj_inp: TLabeledEdit;
    wish_inp: TLabeledEdit;
    UpdwishBtn: TButton;
    UpddatankBox: TGroupBox;
    set_kval_inp: TLabeledEdit;
    Upd_kvalBtn: TButton;
    bdata_1bl: TLabel;
    bdata_inp: TDateTimePicker;
    profankLbl: TLabel;
    profankDBL: TDBLookupComboBox;
    Obr_inp: TLabeledEdit;
    ankinsoutGrd: TDBGrid;
    updaklGrd: TDBGrid;
    ankdelGrd: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SeanklBtnClick(Sender: TObject);
    procedure Radio_staj_nameClick(Sender: TObject);
    procedure Radio_kval_gruppClick(Sender: TObject);
    procedure RadioankselResetClick(Sender: TObject);
    procedure Check_wish_searchClick(Sender: TObject);
    procedure CondankEditKeyPress(Sender: TObject; var Key: Char);
    procedure fnd_kval_EditKeyPress(Sender: TObject; var Key: Char);
    procedure ins_ank_BtnClick(Sender: TObject);
    procedure Upd_kvalBtnClick(Sender: TObject);
    procedure UpdwishBtnClick(Sender: TObject);
    procedure dlankBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ank: TFrm_ank;
  var d_flag:Integer;
implementation

uses Un_dm, Unmain, DB;

{$R *.dfm}

procedure TFrm_ank.Check_wish_searchClick(Sender: TObject);
begin
if Check_wish_search.Checked then
begin
   CondankEdit.EditLabel.Caption:='Живой поиск по условиям(желаемым)';
end
else
begin
 CondankEdit.EditLabel.Caption:='Точное совпадение (по ФИО в анкете)';
 try
  with dm.ankQuery do
    begin
    close;
    SQL.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
    'questionarie.fio, questionarie.obr, questionarie.kval, questionarie.staj,'+
    'questionarie.wish_cond, prof.prof_name'+ ' '+
    'FROM questionarie'+' '+
    'inner join prof on questionarie.id_prof= prof.id_prof';
    open;
    end;
except
begin
    ShowMessage('Wrong situation');
end;
end;


end;

end;

procedure TFrm_ank.CondankEditKeyPress(Sender: TObject; var Key: Char);
begin
if Check_wish_search.Checked=true then
  begin
  dm.ankQuery.sql.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio,questionarie.obr, questionarie.kval, questionarie.staj,'+
'questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
    'inner join prof on questionarie.id_prof=prof.id_prof'+ ' '+
  'where wish_cond  like'+
   QuotedStr(Concat(CondankEdit.Text,#37));
   dm.ankQuery.Close;
   dm.ankQuery.Open;
    end
    else
          with dm.ankQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio,questionarie.obr, questionarie.kval, questionarie.staj,'+
'questionarie.kval, questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
    'inner join prof on questionarie.id_prof=prof.id_prof';
     Open;
     end;

end;

procedure TFrm_ank.dlankBtnClick(Sender: TObject);
begin


        dm.doQuery.Close;
        dm.doQuery.SQL.Clear;
        dm.doQuery.SQL.Text:='delete from questionarie  where questionarie.ank_nom='
         +dm.ankQuery.FieldByName('ank_nom').AsString;
         dm.doQuery.ExecSQL;
         dm.doQuery.SQL.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio,questionarie.obr, questionarie.kval, questionarie.staj,'+
'questionarie.kval, questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
    'inner join prof on questionarie.id_prof=prof.id_prof';
         dm.doQuery.Open;
         dm.doQuery.Close;
         dm.doQuery.Open;
         dm.doQuery.Close;
         dm.doQuery.Open;

end;

procedure TFrm_ank.fnd_kval_EditKeyPress(Sender: TObject; var Key: Char);
begin
try
   Check_wish_search.Enabled:=false;
   dm.ankQuery.SQL.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio,questionarie.obr, questionarie.kval, questionarie.staj,'+
'questionarie.kval, questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
  ' inner join prof on questionarie.id_prof=prof.id_prof where kval like'+
   QuotedStr(Concat(fnd_kval_Edit.Text,#37));
   dm.ankQuery.close;
   dm.ankQuery.Open;
except
  begin
  ShowMessage('wrong situation');
  end;
  end;

end;

procedure TFrm_ank.FormActivate(Sender: TObject);
var k,q,d:Integer;
begin
dm.doQuery.Close;
dm.doQuery.SQL.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio,questionarie.obr, questionarie.kval, questionarie.staj,'+
'questionarie.kval, questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
    'inner join prof on questionarie.id_prof=prof.id_prof';
with DM do
begin
for q := 0 to ComponentCount - 1 do
begin
if (Components[q] is TADOQuery) then
begin
  (Components[q] as TADOQuery).Open;
end;
end;
end;
ankPage.ActivePage:=SelankPage;
UpdwishBtn.Caption:='Изменить';
dm.doQuery.Open;
dm.ProfQuery.Open;
with Frm_ank do
for k := 0 to ComponentCount - 1 do
begin
if (Components[k] is TRadioButton) then
begin
  (Components[k] as TRadioButton).Checked:=False;
end;
end;

with Frm_ank do
for d := 0 to ComponentCount - 1 do
begin
if (Components[d] is TDateTimePicker) then
begin
  (Components[d] as TDateTimePicker).Date:=Now;
end;
end;


end;




procedure TFrm_ank.FormClose(Sender: TObject; var Action: TCloseAction);
var k,e,q:Integer;
begin
with DM do
begin
for q := 0 to ComponentCount - 1 do
begin
if (Components[q] is TADOQuery) then
begin
  (Components[q] as TADOQuery).Close;
end;
end;
d_flag:=0;
Check_wish_search.Enabled:=true;
Check_wish_search.Checked:=False;
CondankEdit.EditLabel.Caption:='Точное совпадение (по ФИО)';
with Frm_ank do
for k := 0 to ComponentCount - 1 do
begin
if (Components[k] is TRadioButton) then
begin
  (Components[k] as TRadioButton).Enabled:=True;
end;
end;
with Frm_ank do
for e := 0 to ComponentCount - 1 do
begin
if (Components[e] is TLabeledEdit) then
begin
  (Components[e] as TLabeledEdit).Enabled:=True;
end;
end;
end;

end;

procedure TFrm_ank.FormCreate(Sender: TObject);
var d:Integer;
begin
 with Frm_ank do
begin
  width:=1024;
  height:=768;
  Position:=poScreenCenter;
end;
 with Frm_ank do
for d := 0 to ComponentCount - 1 do
begin
if (Components[d] is TDateTimePicker) then
begin
  (Components[d] as TDateTimePicker).Date:=Now;
end;
end;
end;

procedure TFrm_ank.ins_ank_BtnClick(Sender: TObject);
begin
if  (fio_inp.Text<>'')and(kval_inp.Text<>'')and (staj_inp.Text<>'')
and (Obr_inp.Text<>'')and (wish_inp.Text<>'')  then
begin
try
with dm.ankQuery do
begin
  Active:=false;
  SQL.Clear;
  SQL.Text:='INSERT INTO questionarie (b_data, fio, obr,kval,'+
  'staj, wish_cond, id_prof)VALUES('
  +QuotedStr(FrmMain.DateToStr_(bdata_inp.Date))+','+
  QuotedStr(fio_inp.Text)+','+QuotedStr(Obr_inp.Text)+','+
  QuotedStr(kval_inp.Text)+','+QuotedStr((staj_inp.Text)) +','+
  QuotedStr(wish_inp.Text)+','+
  dm.ProfQuery.FieldByName('id_prof').AsString+')';
  ExecSQL;
  sql.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio, questionarie.obr, questionarie.staj,'+
'questionarie.kval, questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
    'inner join prof on questionarie.id_prof=prof.id_prof';
  Active:=true;
  close;
  open;
end;
  MessageDlg('Изменения внесены',mtInformation,[mbOK],0);
  Beep();
  fio_inp.Clear;
  obr_inp.Clear;
  kval_inp.Clear;
  wish_inp.Clear;
  staj_inp.Clear;
  bdata_inp.DateTime:=Now;
except
begin
  ShowMessage('wrong situation');
  Exit;
end;
end;
end
else
begin
  MessageDlg('Заполните все поля',mtError,[mbOK],0);
  Beep();
  Exit;
end;
end;

procedure TFrm_ank.RadioankselResetClick(Sender: TObject);
var i,j:Integer;
begin
    if RadioankselReset.Checked=True then
begin
  with Frm_ank do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
     with dm.ankQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio, questionarie.obr, questionarie.staj,'+
'questionarie.kval, questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
    'inner join prof on questionarie.id_prof=prof.id_prof';
     Open;
     end;
    with Frm_ank do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;
  Check_wish_search.Enabled:=true;
  Check_wish_search.Checked:=False;
  CondankEdit.EditLabel.Caption:='Точное совпадение (по ФИО в анкете)';



end;

procedure TFrm_ank.Radio_staj_nameClick(Sender: TObject);
begin
if Radio_staj_name.Checked=true then
  begin
    try
     Radio_kval_grupp.Checked:=false;
     RadioankselReset.Checked:=False;
     with dm.ankQuery do
     begin
      close;
      sql.Clear;
      sql.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio, questionarie.obr, questionarie.staj,'+
'questionarie.kval, questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
    'inner join prof on questionarie.id_prof=prof.id_prof order by staj asc';

      Open;
     end;
    except
    begin
      ShowMessage('wrong situation');
    end;
    end;
  end;

end;

procedure TFrm_ank.Radio_kval_gruppClick(Sender: TObject);
begin
if Radio_kval_grupp.Checked=true then
  begin
    try
     Radio_staj_name.Checked:=false;
     RadioankselReset.Checked:=False;
     with dm.ankQuery do
     begin
      close;
      sql.Clear;
      sql.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio, questionarie.obr, questionarie.staj,'+
'questionarie.kval, questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
    'inner join prof on questionarie.id_prof=prof.id_prof order by kval asc';
      Open;
     end;
    except
    begin
      ShowMessage('wrong situation');
    end;
    end;
  end;
end;

procedure TFrm_ank.SeanklBtnClick(Sender: TObject);
begin
try
    dm.ankQuery.close;
    dm.ankQuery.SQL.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio, questionarie.obr, questionarie.staj,'+
'questionarie.kval, questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
    'inner join prof on questionarie.id_prof=prof.id_prof'+ ' '+
    'where questionarie.fio='+
    QuotedStr(CondankEdit.Text);
    dm.ankQuery.open;
except
begin
    ShowMessage('Wrong situation');
    exit;
end;
end;

end;

procedure TFrm_ank.UpdwishBtnClick(Sender: TObject);
begin
           with dm.doQuery do
           begin
           close;
           sql.Clear;
           SQL.Text:='Update questionarie set  wish_cond='
            +QuotedStr(updwishinp.Text)+'where questionarie.ank_nom='
            +dm.ankQuery.FieldByName('ank_nom').AsString;
            ExecSQL;
            SQL.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio, questionarie.obr, questionarie.staj,'+
'questionarie.kval, questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
    'inner join prof on questionarie.id_prof=prof.id_prof';
            Open;
           close;
           end;
               MessageDlg('Изменения внесены',mtInformation,[mbOK],0);
                dm.ankQuery.Close;
                dm.ankQuery.Open;

end;

procedure TFrm_ank.Upd_kvalBtnClick(Sender: TObject);
begin
dm.doQuery.SQL.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio, questionarie.obr, questionarie.staj,'+
'questionarie.kval, questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
    'inner join prof on questionarie.id_prof=prof.id_prof';
        with dm.doQuery do
        begin
        Close;
        SQL.Clear;
        SQL.Text:='Update questionarie set  kval='
         +QuotedStr(set_kval_inp.Text)+'where questionarie.ank_nom='
         +dm.ankQuery.FieldByName('ank_nom').AsString;
          ExecSQL;
        SQL.Text:='SELECT questionarie.ank_nom, questionarie.b_data,'+
'questionarie.fio, questionarie.obr, questionarie.staj,'+
'questionarie.kval, questionarie.wish_cond, prof.prof_name'+' '+
  'FROM questionarie' +' '+
    'inner join prof on questionarie.id_prof=prof.id_prof';
        Open;
        Close;
        end;
        dm.ankQuery.Close;
        dm.ankQuery.Open;

        MessageDlg('Изменения внесены',mtInformation,[mbOK],0);
end;

end.

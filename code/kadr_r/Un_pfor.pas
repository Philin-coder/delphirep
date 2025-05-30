unit Un_pfor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, DBCtrls;

type
  TFrm_pfor = class(TForm)
    PfroPage: TPageControl;
    SelPage: TTabSheet;
    InsPage: TTabSheet;
    UpdPage: TTabSheet;
    delPage: TTabSheet;
    ConditionBox: TGroupBox;
    DataBox: TGroupBox;
    ButtonoBox: TGroupBox;
    DataGrid: TDBGrid;
    SelButton: TButton;
    selPanel: TPanel;
    Radio_prof_name: TRadioButton;
    Radio_prof_grupp: TRadioButton;
    RadioReset: TRadioButton;
    condPanel: TPanel;
    CondEdit: TLabeledEdit;
    fndPanel: TPanel;
    fndEdit: TLabeledEdit;
    Check_group_search: TCheckBox;
    InpBox: TGroupBox;
    DataOutBox: TGroupBox;
    BtnBox: TGroupBox;
    ins_Btn: TButton;
    Prof_name_inp: TLabeledEdit;
    Prof_group_inp: TLabeledEdit;
    Pfor_ins_Grid: TDBGrid;
    oldDtaBox: TGroupBox;
    profnameLbl: TLabel;
    profgroupLbl: TLabel;
    DBLookupComboBox_prof: TDBLookupComboBox;
    DBLookupComboBox_group: TDBLookupComboBox;
    UpdBtnGroup: TGroupBox;
    UpdBtn: TButton;
    setdataBox: TGroupBox;
    setNameEdit: TLabeledEdit;
    SetGroupEdit: TLabeledEdit;
    UpddataBox: TGroupBox;
    UpddbGrid: TDBGrid;
    filterPanel: TPanel;
    Upd_all: TRadioButton;
    Upd_prof: TRadioButton;
    Upd_ind: TRadioButton;
    del_seldataBox: TGroupBox;
    profLbl: TLabel;
    delseldataComboBox: TDBLookupComboBox;
    dlbtnBox: TGroupBox;
    dlBtn: TButton;
    dldaraBox: TGroupBox;
    dldataGrid: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SelButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioResetClick(Sender: TObject);
    procedure Radio_prof_nameClick(Sender: TObject);
    procedure Radio_prof_gruppClick(Sender: TObject);
    procedure fndEditKeyPress(Sender: TObject; var Key: Char);
    procedure CondEditKeyPress(Sender: TObject; var Key: Char);
    procedure Check_group_searchClick(Sender: TObject);
    procedure ins_BtnClick(Sender: TObject);
    procedure UpdBtnClick(Sender: TObject);
    procedure Upd_allClick(Sender: TObject);
    procedure Upd_profClick(Sender: TObject);
    procedure Upd_indClick(Sender: TObject);
    procedure dlBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pfor: TFrm_pfor;
  var flag:Integer;

implementation

uses Un_dm, Unmain, DB, ADODB;

{$R *.dfm}

procedure TFrm_pfor.dlBtnClick(Sender: TObject);
begin
        try
         dm.doQuery.Close;
         dm.doQuery.SQL.Clear;
         dm.doQuery.SQL.Text:='delete from prof  where prof.id_prof='
         +dm.ProfQuery.FieldByName('id_prof').AsString;
         dm.doQuery.ExecSQL;
         dm.doQuery.SQL.Text:='select * from  prof';
         dm.doQuery.Open;
         dm.doQuery.Close;
         dm.doQuery.Open;
         dm.doQuery.Close;
         dm.doQuery.Open;


     except
     begin
         ShowMessage('Wrong situation');
         exit;
     end;
     end;

end;

procedure TFrm_pfor.Check_group_searchClick(Sender: TObject);
begin
if Check_group_search.Checked then
begin
   CondEdit.EditLabel.Caption:='����� ����� (�� ���������)';
end
else
begin
 CondEdit.EditLabel.Caption:='������ ���������� (�� ��������)';
 try
  with dm.ProfQuery do
    begin
    close;
    SQL.Text:='select * from prof where 1=1';
    open;
    end;
except
begin
    ShowMessage('Wrong situation');
end;
end;


end;

end;

procedure TFrm_pfor.CondEditKeyPress(Sender: TObject; var Key: Char);
begin
if Check_group_search.Checked=true then
  begin
  dm.ProfQuery.sql.Text:='select * from prof where prof_group like'+
   QuotedStr(Concat(CondEdit.Text,#37));
   dm.ProfQuery.Close;
   dm.ProfQuery.Open;
    //Check_group_search.Enabled:=false;
    end
    else
          with dm.ProfQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:='select * from prof;';
     Open;
     end;
end;

procedure TFrm_pfor.fndEditKeyPress(Sender: TObject; var Key: Char);
begin
try
   Check_group_search.Enabled:=false;
   dm.ProfQuery.SQL.Text:='select * from prof  where prof_name like'+
   QuotedStr(Concat(fndEdit.Text,#37));
   dm.ProfQuery.close;
   dm.ProfQuery.Open;
except
  begin
  ShowMessage('wrong situation');
  end;
  end;
  end;

procedure TFrm_pfor.FormActivate(Sender: TObject);
var t,k:Integer;
begin
PfroPage.ActivePage:=delPage;
UpdBtn.Caption:='��������';
dm.doQuery.Open;
dm.ProfQuery.Open;
with Frm_pfor do
for t := 0 to ComponentCount - 1 do
begin
if (Components[t] is TDBLookupComboBox) then
begin
  (Components[t] as TDBLookupComboBox).DropDown;
end;
with Frm_pfor do
for k := 0 to ComponentCount - 1 do
begin
if (Components[k] is TRadioButton) then
begin
  (Components[k] as TRadioButton).Checked:=False;
end;
end;
end;
end;

procedure TFrm_pfor.FormClose(Sender: TObject; var Action: TCloseAction);
var k,e,c:Integer;
begin
flag:=0;
dm.doQuery.close;
dm.ProfQuery.Close;
Check_group_search.Enabled:=true;
Check_group_search.Checked:=False;
CondEdit.EditLabel.Caption:='������ ���������� (�� ��������)';
with Frm_pfor do
for k := 0 to ComponentCount - 1 do
begin
if (Components[k] is TRadioButton) then
begin
  (Components[k] as TRadioButton).Enabled:=True;
end;
end;
with Frm_pfor do
for e := 0 to ComponentCount - 1 do
begin
if (Components[e] is TLabeledEdit) then
begin
  (Components[e] as TLabeledEdit).Enabled:=True;
end;
end;
with Frm_pfor do
for c:= 0 to ComponentCount - 1 do
begin
if (Components[c] is TDBLookupComboBox) then
begin
  (Components[c] as TDBLookupComboBox).Enabled:=True;
end;
end;



end;

procedure TFrm_pfor.FormCreate(Sender: TObject);
begin
  with Frm_pfor do
begin
  width:=1024;
  height:=768;
  Position:=poScreenCenter;
  with Check_group_search do
  begin
  Checked:=false;
  Enabled:=True;
  end;
end;
  CondEdit.EditLabel.Caption:='������ ���������� (�� ��������)';
end;

procedure TFrm_pfor.ins_BtnClick(Sender: TObject);
begin
if  (Prof_name_inp.Text<>'')and(Prof_group_inp.Text<>'')  then
begin
try
with dm.ProfQuery do 
begin
  Active:=false;
  SQL.Clear;
  SQL.Text:='INSERT INTO prof ( prof_name, prof_group )VALUES('
  +QuotedStr(Prof_name_inp.Text)+','+QuotedStr(Prof_group_inp.Text)+')';
  ExecSQL;
  sql.Text:='select * from prof;';
  Active:=true;
  close;
  open;
end;
  MessageDlg('��������� �������',mtInformation,[mbOK],0);
  Beep();
  Prof_name_inp.Clear;
  Prof_group_inp.Clear;
except 
begin
  ShowMessage('wrong situation');
  Exit;
end;
end;
end
else  
begin
  MessageDlg('��������� ��� ����',mtError,[mbOK],0);
  Beep();
  Exit;
end;
end;

procedure TFrm_pfor.RadioResetClick(Sender: TObject);
 var i,j:Integer;
begin
if RadioReset.Checked=True then
begin
  with Frm_pfor do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
     with dm.ProfQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:='select * from prof;';
     Open;
     end;
    with Frm_pfor do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;
  Check_group_search.Enabled:=true;
  Check_group_search.Checked:=False;
  CondEdit.EditLabel.Caption:='������ ���������� (�� ��������)';
end;

procedure TFrm_pfor.Radio_prof_gruppClick(Sender: TObject);
begin
 if Radio_prof_grupp.Checked then
 begin
   try
    Radio_prof_name.Checked:=False;
    RadioReset.Checked:=False;
    with dm.ProfQuery do
    begin
     close;
     sql.Clear;
     sql.Text:='select * from prof order by  prof_group asc';
     Open;
    end;
   except
   begin
     ShowMessage('wrong situation');
   end;
   end;
 end;


end;

procedure TFrm_pfor.Radio_prof_nameClick(Sender: TObject);
begin
if Radio_prof_name.Checked=true then
  begin
    try
     Radio_prof_grupp.Checked:=false;
     RadioReset.Checked:=False;
     with dm.ProfQuery do
     begin
      close;
      sql.Clear;
      sql.Text:='select * from prof order by prof_name asc ';
      Open;
     end;
    except
    begin
      ShowMessage('wrong situation');
    end;
    end;
  end;
end;

procedure TFrm_pfor.SelButtonClick(Sender: TObject);
begin
try
    dm.ProfQuery.close;
    dm.ProfQuery.SQL.Text:='select * from prof where prof.prof_name='+
    QuotedStr(CondEdit.Text);
    dm.ProfQuery.open;
except
begin
    ShowMessage('Wrong situation');
    exit;
end;
end;

end;




procedure TFrm_pfor.UpdBtnClick(Sender: TObject);
//UPDATE prof SET prof_name = 't2', prof_group = 't3'
//WHERE id_prof=10;

begin
case flag  of
1:begin

 try
         dm.doQuery.Close;
         dm.doQuery.SQL.Clear;
         dm.doQuery.SQL.Text:='Update prof set prof_name='
         +QuotedStr(setNameEdit.Text)+','+'prof_group ='+
         QuotedStr(SetGroupEdit.Text)+'where prof.id_prof='
         +dm.ProfQuery.FieldByName('id_prof').AsString;
         dm.doQuery.ExecSQL;
         dm.doQuery.SQL.Text:='select * from  prof';
         dm.doQuery.Open;
         dm.doQuery.Close;
         dm.doQuery.Open;
     except
     begin
         ShowMessage('Wrong situation');
         exit;
     end;
     end;
end;
2:
begin
//Update prof set prof_name='upd_test' where prof.id_prof=10;
     try
         dm.doQuery.Close;
         dm.doQuery.SQL.Clear;
         dm.doQuery.SQL.Text:='Update prof set prof_name='
         +QuotedStr(setNameEdit.Text)+'where prof.id_prof='
         +dm.ProfQuery.FieldByName('id_prof').AsString;
         dm.doQuery.ExecSQL;
         dm.doQuery.SQL.Text:='select * from  prof';
         dm.doQuery.Open;
         dm.doQuery.Close;
         dm.doQuery.Open;

     except
     begin
         ShowMessage('Wrong situation');
         exit;
     end;
     end;

end;

3:
begin
//Update prof set prof_name='upd_test' where prof.id_prof=10;
     try
         dm.doQuery.Close;
         dm.doQuery.SQL.Clear;
         dm.doQuery.SQL.Text:='Update prof set prof_group='
         +QuotedStr(SetGroupEdit.Text)+'where prof.id_prof='
         +dm.ProfQuery.FieldByName('id_prof').AsString;
         dm.doQuery.ExecSQL;
         dm.doQuery.SQL.Text:='select * from  prof';
         dm.doQuery.Open;
         dm.doQuery.Close;
         dm.doQuery.Open;
     except
     begin
         ShowMessage('Wrong situation');
         exit;
     end;
     end;

end;
end; //case;
end;

procedure TFrm_pfor.Upd_allClick(Sender: TObject);
begin
flag:=1;
UpdBtn.Caption:='������� ���������� � ����� �����';
 Upd_prof.Enabled:=False;
 Upd_ind.Enabled:=False;
end;

procedure TFrm_pfor.Upd_indClick(Sender: TObject);
begin
 flag:=3;
 UpdBtn.Caption:='������� ���������� �  ���e �������';
 Upd_all.Enabled:=false;
 Upd_prof.Enabled:=False;
 setNameEdit.Enabled:=False;
 DBLookupComboBox_group.Enabled:=False;
end;

procedure TFrm_pfor.Upd_profClick(Sender: TObject);
begin
flag:=2;
UpdBtn.Caption:='������� ���������� �  ���� �������������';
Upd_ind.Enabled:=False;
Upd_all.Enabled:=False;
SetGroupEdit.Enabled:=False;
DBLookupComboBox_group.Enabled:=False;
end;

end.

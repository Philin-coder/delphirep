unit Un_prikaz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, ADODB,DB, DBCtrls;

type
  TFrm_prikaz = class(TForm)
    PrikazPage: TPageControl;
    SelTab: TTabSheet;
    InsTab: TTabSheet;
    UpdTab: TTabSheet;
    delTab: TTabSheet;
    PrikazgroupBox: TGroupBox;
    PrikazbtnBox: TGroupBox;
    PrikazDataBox: TGroupBox;
    PrikazSelGrid: TDBGrid;
    PrikazSelBtn: TButton;
    PrikazCondBox: TGroupBox;
    Prikaz_condEdit: TLabeledEdit;
    Prikaz_fnd_edit: TLabeledEdit;
    prikaz_nom_groupradio: TRadioButton;
    PrikazResetRadio: TRadioButton;
    Prikaz_inpBox: TGroupBox;
    pr_nom_inp: TLabeledEdit;
    Prikaz_ins_btn_Box: TGroupBox;
    Prikaz_insBtn: TButton;
    Prikaz_DataInsBox: TGroupBox;
    Prikaz_upd_inp_Box: TGroupBox;
    Prikazlbl: TStaticText;
    PrikazUpdDBL: TDBLookupComboBox;
    Prikaz_upd_btn_Box: TGroupBox;
    Prikaz_upd_Btn: TButton;
    Prikaz_upd_dataBox: TGroupBox;
    delprdatacBox: TGroupBox;
    delprlbl: TStaticText;
    delprDBL: TDBLookupComboBox;
    dlprbtnBox: TGroupBox;
    delprBtn: TButton;
    deprdataBox: TGroupBox;
    type_pr_groupradio: TRadioButton;
    PrikazDateLbl: TLabel;
    PrikazInsGrd: TDBGrid;
    date_pr_lbl: TStaticText;
    Datepr_inp: TDateTimePicker;
    pr_type_inp: TLabeledEdit;
    pr_stud_lbl: TStaticText;
    prikaz_stDBL: TDBLookupComboBox;
    PrikazUpdGrd: TDBGrid;
    Data_pr_inp: TDateTimePicker;
    delprGrd: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrikazSelBtnClick(Sender: TObject);
    procedure PrikazResetRadioClick(Sender: TObject);
    procedure type_pr_groupradioClick(Sender: TObject);
    procedure prikaz_nom_groupradioClick(Sender: TObject);
    procedure Prikaz_fnd_editKeyPress(Sender: TObject; var Key: Char);
    procedure Prikaz_insBtnClick(Sender: TObject);
    procedure Prikaz_upd_BtnClick(Sender: TObject);
    procedure delprBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_prikaz: TFrm_prikaz;

implementation

uses Un_dm, Un_main, Un_func;

{$R *.dfm}

procedure TFrm_prikaz.delprBtnClick(Sender: TObject);
var
  del_pr:TADOStoredProc;
begin
  del_pr := nil;
  try
    del_pr := TADOStoredProc.Create(nil);
    try
      with del_pr do
      begin
        Connection := DM.Connection;
        if not Connection.Connected then
        begin
          raise Exception.Create('Соединение с базой не установленно');
        end;
        ProcedureName := 'del_pr';
        Parameters.Clear;
        Parameters.CreateParameter(
          'pr_id',
          ftInteger,
          pdInput,
          0,
          delprDBL.KeyValue
        );
        ExecProc;
        DM.prikazQuery.Close;
        DM.prikazQuery.Open;
        MessageDlg('Изменения внесены', mtInformation, [mbOK], 0);
      end;
    except
      on E: EADOError do
      begin
        ShowMessage('Ошибка: ' + E.Message);
      end;
      on E: Exception do
      begin
        ShowMessage('Ошибка ' + E.Message);
      end;
    end;
  finally
    FreeAndNil(del_pr);
  end;
end;

procedure TFrm_prikaz.FormActivate(Sender: TObject);
begin
dm.StudQuery.Open;
dm.PrikazQuery.Open;
end;

procedure TFrm_prikaz.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrm_prikaz.FormCreate(Sender: TObject);
begin
UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
end;

procedure TFrm_prikaz.PrikazResetRadioClick(Sender: TObject);
var i,j:Integer;
begin
if prikazResetRadio.Checked=True then
begin
  with Frm_prikaz do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
     with dm.PrikazQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:=
     'select '+' '+
      'prikaz.pr_id,'+' '+
      'prikaz.pr_nom,'+' '+
       'prikaz.date_pr,'+
         'prikaz.tip_pr,'+''+
        '  stud.passp_fam + '' '' + stud.passp_naim + ISNULL('' '' + stud.passp_otch, '''') AS fio '+
          'from prikaz'+' '+
          'inner join stud on stud.stud_id=prikaz.stud_id'+' '+
          'where 1=1'+' '+
        'and stud.data_ot is null';
     Open;
     end;
    with Frm_prikaz do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;
end;

procedure TFrm_prikaz.PrikazSelBtnClick(Sender: TObject);
 var
  sel_prikaz:TADOStoredProc;
begin
  if (Trim(Prikaz_condEdit.Text)='')  then
  begin
   MessageDlg('Строка пуста',mtError,[mbOK],0);
   Exit;
  end
  else
  begin
  sel_prikaz := nil;
  try
    sel_prikaz := TADOStoredProc.Create(nil);
    try
      with sel_prikaz do
      begin
        Connection := DM.Connection;
        if not Connection.Connected then
          raise Exception.Create('Cоединение с базой не установлено');
        ProcedureName := 'sel_prikaz';
        Parameters.Clear;
        Parameters.CreateParameter('pr_nom',
        ftString,
        pdInput, 1000,
        prikaz_condEdit.Text
        );
        Open;
        DM.PrikazQuery.Close;
        DM.PrikazQuery.Recordset := sel_prikaz.Recordset;
      end;
    except
      on E: EADOError do
        ShowMessage('Ошибка: ' + E.Message);
      on E: Exception do
        ShowMessage('Ошибка: ' + E.Message);
    end;
  finally
    FreeAndNil(sel_prikaz);
  end;
  end;
end;

procedure TFrm_prikaz.Prikaz_fnd_editKeyPress(Sender: TObject; var Key: Char);
begin
try
   dm.PrikazQuery.SQL.Text:='select'+' '+
        'prikaz.pr_id,'+' '+
      'prikaz.pr_nom,'+' '+
       'prikaz.date_pr,'+
         'prikaz.tip_pr,'+''+
        '  stud.passp_fam + '' '' + stud.passp_naim + ISNULL('' '' + stud.passp_otch, '''') AS fio '+
          'from prikaz'+' '+
          'inner join stud on stud.stud_id=prikaz.stud_id'+' '+
          'where 1=1'+' '+
        'and stud.data_ot is null'+' '+
        'and  prikaz.tip_pr like'+
   QuotedStr(Concat(Prikaz_fnd_edit.Text,#37));
   dm.PrikazQuery.close;
   dm.PrikazQuery.Open;
except on E: Exception do
  begin
  ShowMessage('Ошибка'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_prikaz.Prikaz_insBtnClick(Sender: TObject);
var
  ins_prikaz:TADOStoredProc;
begin
if ((Trim(pr_nom_inp.Text) = '') or(Trim(pr_type_inp.Text)='')) then
  begin
    MessageDlg('Заполните все поля', mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  ins_prikaz := nil;
  try
    ins_prikaz := TADOStoredProc.Create(nil);
    try
      with ins_prikaz do
      begin
        Connection := DM.Connection;
        if not Connection.Connected then
        begin
          raise Exception.Create('Соединение с базой не установлено');
        end;
        ProcedureName := 'ins_prikaz';
        Parameters.Clear;
        Parameters.CreateParameter(
          'pr_nom',
          ftString,
          pdInput,
          1000,
          pr_nom_inp.Text
        );
        Parameters.CreateParameter(
          'date_pr',
          ftDate,
          pdInput,
          0,
          Datepr_inp.Date
        );
        Parameters.CreateParameter(
          'tip_pr',
          ftString,
          pdInput,
          1000,
          pr_type_inp.Text
        );
         Parameters.CreateParameter(
          'stud_id',
          ftInteger,
          pdInput,
          0,
          prikaz_stDBL.KeyValue
        );
        ExecProc;
        DM.PrikazQuery.Close;
        DM.PrikazQuery.Open;
        MessageDlg('Изменения внесены', mtInformation, [mbOK], 0);
      end;
    except
      on E: EADOError do
      begin
        ShowMessage('Ошибка: ' + E.Message);
      end;
      on E: Exception do
      begin
        ShowMessage('Ошибка: ' + E.Message);
      end;
    end;
  finally
    FreeAndNil(ins_prikaz);
  end;
end;

procedure TFrm_prikaz.prikaz_nom_groupradioClick(Sender: TObject);
begin
if prikaz_nom_groupradio.Checked=true then
  begin
    try
     with dm.PrikazQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
      'select '+''+
        'prikaz.pr_id,'+' '+
      'prikaz.pr_nom,'+' '+
       'prikaz.date_pr,'+
         'prikaz.tip_pr,'+''+
        '  stud.passp_fam + '' '' + stud.passp_naim + ISNULL('' '' + stud.passp_otch, '''') AS fio '+
          'from prikaz'+' '+
          'inner join stud on stud.stud_id=prikaz.stud_id'+' '+
          'where 1=1'+' '+
        'and stud.data_ot is null'+' '+
      'order by pr_nom desc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_prikaz.Prikaz_upd_BtnClick(Sender: TObject);
var
  upd_pr:TADOStoredProc;
begin
  upd_pr := nil;
  try
    upd_pr := TADOStoredProc.Create(nil);
    try
      with upd_pr do
      begin
        Connection := DM.Connection;
        if not Connection.Connected then
        begin
          raise Exception.Create('Соединение с базой не установлено');
        end;
        ProcedureName := 'upd_pr';
        Parameters.Clear;
        Parameters.CreateParameter(
          'date_pr',
          ftDate,
          pdInput,
          0,
          Data_pr_inp.Date
        );
        Parameters.CreateParameter(
          'pr_id',
          ftInteger,
          pdInput,
          0,
          PrikazUpdDBL.KeyValue
        );
        ExecProc;
        DM.PrikazQuery.Close;
        DM.PrikazQuery.Open;
        MessageDlg('Изменения внесены', mtInformation, [mbOK], 0);
      end;
    except
      on E: EADOError do
      begin
        ShowMessage('Ошибка: ' + E.Message);
      end;
      on E: Exception do
      begin
        ShowMessage('Ошибка: ' + E.Message);
      end;
    end;
  finally
    FreeAndNil(upd_pr);
  end;

end;

procedure TFrm_prikaz.type_pr_groupradioClick(Sender: TObject);
begin
if type_pr_groupradio.Checked=true then
  begin
    try
     with dm.PrikazQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
      'select '+''+
        'prikaz.pr_id,'+' '+
      'prikaz.pr_nom,'+' '+
       'prikaz.date_pr,'+
         'prikaz.tip_pr,'+''+
        '  stud.passp_fam + '' '' + stud.passp_naim + ISNULL('' '' + stud.passp_otch, '''') AS fio '+
          'from prikaz'+' '+
          'inner join stud on stud.stud_id=prikaz.stud_id'+' '+
          'where 1=1'+' '+
        'and stud.data_ot is null'+' '+
      'order by tip_pr desc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка'+' '+E.Message);
    end;
    end;
  end;
end;

end.

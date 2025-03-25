unit Un_reports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ADODB,db, ComCtrls, StdCtrls, Grids, DBGrids, DBCtrls, ExtCtrls;

type
  TFrm_reports = class(TForm)
    reprotPC: TPageControl;
    perosnalcaseTab: TTabSheet;
    Stud_report1_inpBox: TGroupBox;
    Stud_report1cbBox: TGroupBox;
    Stud_report1btnbox: TGroupBox;
    stud_idCB: TCheckBox;
    b_dataCB: TCheckBox;
    SexCB: TCheckBox;
    civCB: TCheckBox;
    regionCB: TCheckBox;
    gorodCB: TCheckBox;
    adrCB: TCheckBox;
    fioCB: TCheckBox;
    dom_tCB: TCheckBox;
    data_prCB: TCheckBox;
    naim_grupCB: TCheckBox;
    st_emailCB: TCheckBox;
    to_liveCB: TCheckBox;
    mod_tCB: TCheckBox;
    Stud_report1databox: TGroupBox;
    Stud_report1Grid: TDBGrid;
    stud_repprt1_lbl: TStaticText;
    Stud_report1DBL: TDBLookupComboBox;
    Stud_report1Btn: TButton;
    Studlisttab: TTabSheet;
    Secondreport_groupBox: TGroupBox;
    Secondreport_data_inp: TGroupBox;
    SecondReportbtnBox: TGroupBox;
    seconreportBtn: TButton;
    r2cbId: TCheckBox;
    r2b_dataCB: TCheckBox;
    r2sexcb: TCheckBox;
    r2civCB: TCheckBox;
    r2regionCB: TCheckBox;
    r2gorodCB: TCheckBox;
    r2adrCB: TCheckBox;
    r2fioCB: TCheckBox;
    r2kursCB: TCheckBox;
    r2to_liveCB: TCheckBox;
    r2mod_tcb: TCheckBox;
    r2dom_tCB: TCheckBox;
    r2dpCB: TCheckBox;
    r2naim_grupCB: TCheckBox;
    r2st_emailCB: TCheckBox;
    secondreport_databox: TGroupBox;
    secondrepotGrid: TDBGrid;
    grouplbl: TStaticText;
    r2groupDBL: TDBLookupComboBox;
    report2_datalbl: TStaticText;
    r2_date_inp: TDateTimePicker;
    studlistin: TTabSheet;
    thirdreportinpBox: TGroupBox;
    thrdrepbtnBox: TGroupBox;
    thrdrepBoxgruper: TGroupBox;
    thrdrepdataBox: TGroupBox;
    thrdrepGrid: TDBGrid;
    thrdrepBtn: TButton;
    b_data_lbl: TStaticText;
    edatalbl: TStaticText;
    r3begin_data_inp: TDateTimePicker;
    r3Enddatainp: TDateTimePicker;
    r3Idcb: TCheckBox;
    r3b_data: TCheckBox;
    r3_sexcb: TCheckBox;
    r3civcb: TCheckBox;
    r3regioncb: TCheckBox;
    r3gorod: TCheckBox;
    r3adrcb: TCheckBox;
    r3fiocb: TCheckBox;
    r3to_livecb: TCheckBox;
    r3mod_tcb: TCheckBox;
    r3dom_tcb: TCheckBox;
    r3data_prcb: TCheckBox;
    r3naim_grupcb: TCheckBox;
    r3st_emailcb: TCheckBox;
    r3kurscb: TCheckBox;
    studlstout: TTabSheet;
    r4datainpBox: TGroupBox;
    r4grouperBox: TGroupBox;
    r4dataBox: TGroupBox;
    r4btnBox: TGroupBox;
    r4Btn: TButton;
    r4repgrid: TDBGrid;
    r4begindatelbl: TStaticText;
    r4enddatelbl: TStaticText;
    r4begindateinp: TDateTimePicker;
    r4enddateinp: TDateTimePicker;
    r4idCB: TCheckBox;
    r4b_dataCB: TCheckBox;
    r4sexCB: TCheckBox;
    r4civCB: TCheckBox;
    r4regionCB: TCheckBox;
    r4gorodCB: TCheckBox;
    r4adrCB: TCheckBox;
    r4fioCB: TCheckBox;
    r4kursCB: TCheckBox;
    r4to_liveCB: TCheckBox;
    r4mod_tCB: TCheckBox;
    r4dom_tCB: TCheckBox;
    r4data_prCB: TCheckBox;
    r4data_otCB: TCheckBox;
    r4naim_grupCB: TCheckBox;
    r4st_emailCB: TCheckBox;
    r5_tab: TTabSheet;
    r5dataBox: TGroupBox;
    r5btnbox: TGroupBox;
    R5_inpBox: TGroupBox;
    r5repGrid: TDBGrid;
    r5Btn: TButton;
    r5begin_lbl: TStaticText;
    r5endlbl: TStaticText;
    r5beginDate_inp: TDateTimePicker;
    r5endDateinp: TDateTimePicker;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Stud_report1BtnClick(Sender: TObject);
    procedure stud_idCBClick(Sender: TObject);
    procedure b_dataCBClick(Sender: TObject);
    procedure SexCBClick(Sender: TObject);
    procedure civCBClick(Sender: TObject);
    procedure regionCBClick(Sender: TObject);
    procedure gorodCBClick(Sender: TObject);
    procedure adrCBClick(Sender: TObject);
    procedure fioCBClick(Sender: TObject);
    procedure to_liveCBClick(Sender: TObject);
    procedure mod_tCBClick(Sender: TObject);
    procedure dom_tCBClick(Sender: TObject);
    procedure data_prCBClick(Sender: TObject);
    procedure naim_grupCBClick(Sender: TObject);
    procedure st_emailCBClick(Sender: TObject);
    procedure reprotPCChange(Sender: TObject);
    procedure seconreportBtnClick(Sender: TObject);
    procedure r2cbIdClick(Sender: TObject);
    procedure r2b_dataCBClick(Sender: TObject);
    procedure r2sexcbClick(Sender: TObject);
    procedure r2civCBClick(Sender: TObject);
    procedure r2regionCBClick(Sender: TObject);
    procedure r2gorodCBClick(Sender: TObject);
    procedure r2adrCBClick(Sender: TObject);
    procedure r2fioCBClick(Sender: TObject);
    procedure r2kursCBClick(Sender: TObject);
    procedure r2to_liveCBClick(Sender: TObject);
    procedure r2mod_tcbClick(Sender: TObject);
    procedure r2dom_tCBClick(Sender: TObject);
    procedure r2dpCBClick(Sender: TObject);
    procedure r2naim_grupCBClick(Sender: TObject);
    procedure r2st_emailCBClick(Sender: TObject);
    procedure thrdrepBtnClick(Sender: TObject);
    procedure r3IdcbClick(Sender: TObject);
    procedure r3b_dataClick(Sender: TObject);
    procedure r3_sexcbClick(Sender: TObject);
    procedure r3civcbClick(Sender: TObject);
    procedure r3regioncbClick(Sender: TObject);
    procedure r3gorodClick(Sender: TObject);
    procedure r3adrcbClick(Sender: TObject);
    procedure r3fiocbClick(Sender: TObject);
    procedure r3kurscbClick(Sender: TObject);
    procedure r3to_livecbClick(Sender: TObject);
    procedure r3mod_tcbClick(Sender: TObject);
    procedure r3dom_tcbClick(Sender: TObject);
    procedure r3data_prcbClick(Sender: TObject);
    procedure r3naim_grupcbClick(Sender: TObject);
    procedure r3st_emailcbClick(Sender: TObject);
    procedure r4BtnClick(Sender: TObject);
    procedure r4idCBClick(Sender: TObject);
    procedure r4b_dataCBClick(Sender: TObject);
    procedure r4sexCBClick(Sender: TObject);
    procedure r4civCBClick(Sender: TObject);
    procedure r4regionCBClick(Sender: TObject);
    procedure r4gorodCBClick(Sender: TObject);
    procedure r4adrCBClick(Sender: TObject);
    procedure r4fioCBClick(Sender: TObject);
    procedure r4kursCBClick(Sender: TObject);
    procedure r4to_liveCBClick(Sender: TObject);
    procedure r4mod_tCBClick(Sender: TObject);
    procedure r4dom_tCBClick(Sender: TObject);
    procedure r4data_prCBClick(Sender: TObject);
    procedure r4data_otCBClick(Sender: TObject);
    procedure r4naim_grupCBClick(Sender: TObject);
    procedure r4st_emailCBClick(Sender: TObject);
    procedure r5BtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_reports: TFrm_reports;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_reports.adrCBClick(Sender: TObject);
begin
  Stud_report1Grid.Columns[6].Visible:=adrCB.Checked;
  if adrCB.Checked then Stud_report1Grid.Columns[6].Title.Caption:='Адрес';
end;

procedure TFrm_reports.b_dataCBClick(Sender: TObject);
begin
 Stud_report1Grid.Columns[1].Visible:=b_dataCB.Checked;
 if b_dataCB.Checked then
    Stud_report1Grid.Columns[1].Title.Caption:='Дата рождения';
end;

procedure TFrm_reports.civCBClick(Sender: TObject);
begin
  Stud_report1Grid.Columns[3].Visible:=civCB.Checked;
  if civCB.Checked then
  Stud_report1Grid.Columns[3].Title.Caption:='Гражданство';
end;

procedure TFrm_reports.data_prCBClick(Sender: TObject);
begin
Stud_report1Grid.Columns[11].Visible:=data_prCB.Checked;
if data_prCB.Checked then
  Stud_report1Grid.Columns[11].Title.Caption:='Дата приема';
end;

procedure TFrm_reports.dom_tCBClick(Sender: TObject);
begin
Stud_report1Grid.Columns[10].Visible:=dom_tCB.Checked;
if dom_tCB.Checked then Stud_report1Grid.Columns[10].Title.Caption:='Домашний';
end;

procedure TFrm_reports.fioCBClick(Sender: TObject);
begin
Stud_report1Grid.Columns[7].Visible:=fioCB.Checked;
 if fioCB.Checked then  Stud_report1Grid.Columns[7].Title.Caption:='ФИО';
end;

procedure TFrm_reports.FormActivate(Sender: TObject);
var cb:Integer;
begin
  dm.reportQuery.SQL.Clear;
  dm.reportQuery.SQL.Text:= 'select '+
 '  stud.stud_id, ' +
    '  stud.b_data, ' +
    '  CASE stud.pol WHEN 1 THEN ''Мужской'' ELSE ''Женский'' END AS sex, ' +
    '  stud.civ, ' +
    '  stud.region, ' +
    '  stud.gorod, ' +
    '  stud.adr, ' +
    '  stud.passp_fam + '' '' + stud.passp_naim + ISNULL('' '' + stud.passp_otch, '''') AS fio, ' +
 '  CASE stud.mesto_jit WHEN 1 THEN ''Съем'' ELSE ''Общежитие'' END AS to_live, ' +
    '  stud.mod_t, ' +
    '  stud.dom_t, ' +
    '  stud.data_pr, ' +
    '  gruppa.naim_grup, ' +
    '  stud.st_email ' +
    'FROM stud ' +
    'INNER JOIN gruppa ON gruppa.grup_id = stud.grup_id ' +
    'INNER JOIN spec ON spec.spec_id = gruppa.spec_id ' +
    'WHERE 1=1 ' +
    '  AND stud.data_ot IS NULL ' +
    '  AND is_akadem = 0 ';
  dm.reportQuery.Open;
  dm.StudQuery.Open;
  dm.PrikazQuery.Open;
  dm.GruppQuery.Open;
  dm.specQuery.Open;
  Stud_report1Grid.Columns[0].Title.Caption := 'Номер порядковый';
  Stud_report1Grid.Columns[1].Title.Caption:='Дата рождения';
  Stud_report1Grid.Columns[2].Title.Caption:='Пол';
  Stud_report1Grid.Columns[3].Title.Caption:='Гражданство';
  Stud_report1Grid.Columns[4].Title.Caption:='Регион';
  Stud_report1Grid.Columns[5].Title.Caption:='Город';
  Stud_report1Grid.Columns[6].Title.Caption:='Адрес';
  Stud_report1Grid.Columns[7].Title.Caption:='ФИО';
  Stud_report1Grid.Columns[8].Title.Caption:='Проживание';
  Stud_report1Grid.Columns[9].Title.Caption:='Мобильный';
  Stud_report1Grid.Columns[10].Title.Caption:='Домашний';
  Stud_report1Grid.Columns[11].Title.Caption:='Дата приема';
  Stud_report1Grid.Columns[12].Title.Caption:='Группа';
  Stud_report1Grid.Columns[13].Title.Caption:='Email';
  with Frm_reports do
 begin
    for cb := 0 to ComponentCount - 1 do
 begin
    if(Components[cb] is TCheckBox)  then
   begin
      (Components[cb] as TCheckBox).Enabled:=false;
 end;
 end;
 end;
end;

procedure TFrm_reports.FormClose(Sender: TObject; var Action: TCloseAction);
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

end;

procedure TFrm_reports.FormCreate(Sender: TObject);
  var cb:Integer;
begin
    UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
  with Frm_reports do
 begin
    for cb := 0 to ComponentCount - 1 do
 begin
    if(Components[cb] is TCheckBox)  then
   begin
      (Components[cb] as TCheckBox).Checked:=False;
 end;
 end;
 end;
  reprotPC.ActivePage:=perosnalcaseTab;

end;

procedure TFrm_reports.gorodCBClick(Sender: TObject);
begin
Stud_report1Grid.Columns[5].Visible:=gorodCB.Checked;
if gorodCB.Checked then
  Stud_report1Grid.Columns[5].Title.Caption:='Город';
end;

procedure TFrm_reports.mod_tCBClick(Sender: TObject);
begin
Stud_report1Grid.Columns[9].Visible:=mod_tCB.Checked;
if mod_tCB.Checked then Stud_report1Grid.Columns[9].Title.Caption:='Мобильный';
end;

procedure TFrm_reports.naim_grupCBClick(Sender: TObject);
begin
 Stud_report1Grid.Columns[12].Visible:=naim_grupCB.Checked;
if naim_grupCB.Checked
then  Stud_report1Grid.Columns[12].Title.Caption:='Группа';
//if naim_grupCB then
//begin
//Stud_report1Grid.Columns[12].Visible;
//Stud_report1Grid.Columns[12].Caption:='Группа';
//end
//else
//begin
//Stud_report1Grid.Columns[12].Visible:=false
//end;
end;

procedure TFrm_reports.r2adrCBClick(Sender: TObject);
begin
secondrepotGrid.Columns[6].Visible:=r2adrCB.Checked;
if r2adrCB.Checked then secondrepotGrid.Columns[6].Title.Caption:='Адрес';

end;

procedure TFrm_reports.r2b_dataCBClick(Sender: TObject);
begin
secondrepotGrid.Columns[1].Visible:=r2b_dataCB.Checked;
if r2b_dataCB.Checked then
secondrepotGrid.Columns[1].Title.Caption:='Дата рождения'
end;

procedure TFrm_reports.r2cbIdClick(Sender: TObject);
begin
  secondrepotGrid.Columns[0].Visible:=r2cbId.Checked;
if r2cbId.Checked then
secondrepotGrid.Columns[0].Title.Caption:='Номер прядковый';
end;

procedure TFrm_reports.r2civCBClick(Sender: TObject);
begin
secondrepotGrid.Columns[3].Visible:=r2civCB.Checked;
if r2civCB.Checked then  secondrepotGrid.Columns[3].Title.Caption:='Гражданство';
end;

procedure TFrm_reports.r2dom_tCBClick(Sender: TObject);
begin
secondrepotGrid.Columns[11].Visible:=r2dom_tCB.Checked;
if r2dom_tCB.Checked then
secondrepotGrid.Columns[11].Title.Caption:='Домащний';
end;

procedure TFrm_reports.r2fioCBClick(Sender: TObject);
begin
secondrepotGrid.Columns[7].Visible:=r2fioCB.Checked;
if r2fioCB.Checked then secondrepotGrid.Columns[7].Title.Caption:='ФИО';
end;

procedure TFrm_reports.r2gorodCBClick(Sender: TObject);
begin
secondrepotGrid.Columns[5].Visible:=r2gorodCB.Checked;
if r2gorodCB.Checked then secondrepotGrid.Columns[5].Title.Caption:='Город';
end;

procedure TFrm_reports.r2kursCBClick(Sender: TObject);
begin
secondrepotGrid.Columns[8].Visible:=r2kursCB.Checked;
if r2kursCB.Checked then secondrepotGrid.Columns[8].Title.Caption:='Курс';
end;

procedure TFrm_reports.r2mod_tcbClick(Sender: TObject);
begin
secondrepotGrid.Columns[10].Visible:=r2mod_tcb.Checked;
if r2mod_tcb.Checked then
secondrepotGrid.Columns[10].Title.Caption:='Мобильный';
end;

procedure TFrm_reports.r2naim_grupCBClick(Sender: TObject);
begin
secondrepotGrid.Columns[13].Visible:=r2naim_grupCB.Checked;
if r2naim_grupCB.Checked then
secondrepotGrid.Columns[13].Title.Caption:='Группа';
end;

procedure TFrm_reports.r2dpCBClick(Sender: TObject);
begin
secondrepotGrid.Columns[12].Visible:=r2dpCB.Checked;
if r2dpCB.Checked then secondrepotGrid.Columns[12].Title.Caption:='Дата приеиа';
end;

procedure TFrm_reports.r2regionCBClick(Sender: TObject);
begin
secondrepotGrid.Columns[4].Visible:=r2regionCB.Checked;
if r2regionCB.Checked then secondrepotGrid.Columns[4].Title.Caption:='Регион';
end;

procedure TFrm_reports.r2sexcbClick(Sender: TObject);
begin
    secondrepotGrid.Columns[2].Visible:=r2sexcb.Checked;
    if r2sexcb.Checked then secondrepotGrid.Columns[2].Title.Caption:='Пол';
end;

procedure TFrm_reports.r2st_emailCBClick(Sender: TObject);
begin
secondrepotGrid.Columns[14].Visible:=r2st_emailCB.Checked;
if r2st_emailCB.Checked  then
secondrepotGrid.Columns[14].Title.Caption:='Email';
end;

procedure TFrm_reports.r2to_liveCBClick(Sender: TObject);
begin
secondrepotGrid.Columns[9].Visible:=r2to_liveCB.Checked;
if r2to_liveCB.Checked then
secondrepotGrid.Columns[9].Title.Caption:='Проживание';
end;

procedure TFrm_reports.r3adrcbClick(Sender: TObject);
begin
thrdrepGrid.Columns[6].Visible:=r3adrcb.Checked;
if r3adrcb.Checked then
    thrdrepGrid.Columns[6].Title.Caption:='Адрес проживания';
end;

procedure TFrm_reports.r3b_dataClick(Sender: TObject);
begin
thrdrepGrid.Columns[1].Visible:=r3b_data.Checked;
if r3b_data.Checked then
    thrdrepGrid.Columns[1].Title.Caption:='Дата рождения';
end;

procedure TFrm_reports.r3civcbClick(Sender: TObject);
begin
thrdrepGrid.Columns[3].Visible:=r3civcb.Checked;
if r3civcb.Checked then thrdrepGrid.Columns[3].Title.Caption:='Гражданство';
end;

procedure TFrm_reports.r3data_prcbClick(Sender: TObject);
begin
thrdrepGrid.Columns[12].Visible:=r3data_prcb.Checked;
if r3data_prcb.Checked then thrdrepGrid.Columns[12].Title.Caption:='Дата приема';
end;

procedure TFrm_reports.r3dom_tcbClick(Sender: TObject);
begin
thrdrepGrid.Columns[11].Visible:=r3dom_tcb.Checked;
if r3dom_tcb.Checked  then thrdrepGrid.Columns[11].Title.Caption:='Домашний';
end;

procedure TFrm_reports.r3fiocbClick(Sender: TObject);
begin
thrdrepGrid.Columns[7].Visible:=r3fiocb.Checked;
if r3fiocb.Checked then
    thrdrepGrid.Columns[7].Title.Caption:='ФИО';
end;

procedure TFrm_reports.r3gorodClick(Sender: TObject);
begin
thrdrepGrid.Columns[5].Visible:=r3gorod.Checked;
if r3gorod.Checked  then thrdrepGrid.Columns[5].Title.Caption:='Город';
end;

procedure TFrm_reports.r3IdcbClick(Sender: TObject);
begin
thrdrepGrid.Columns[0].Visible :=r3Idcb.Checked;
if r3Idcb.Checked then
    thrdrepGrid.Columns[0].Title.Caption :='Номер порядковый';
end;

procedure TFrm_reports.r3kurscbClick(Sender: TObject);
begin
thrdrepGrid.Columns[8].Visible:=r3kurscb.Checked;
if r3kurscb.Checked then thrdrepGrid.Columns[8].Title.Caption:='Курс';
end;

procedure TFrm_reports.r3mod_tcbClick(Sender: TObject);
begin
thrdrepGrid.Columns[10].Visible:=r3mod_tcb.Checked;
if r3mod_tcb.Checked then thrdrepGrid.Columns[10].Title.Caption:='Мобильный';
end;

procedure TFrm_reports.r3naim_grupcbClick(Sender: TObject);
begin
thrdrepGrid.Columns[13].Visible:=r3naim_grupcb.Checked;
if r3naim_grupcb.Checked  then thrdrepGrid.Columns[13].Title.Caption:='Группа';
end;

procedure TFrm_reports.r3regioncbClick(Sender: TObject);
begin
thrdrepGrid.Columns[4].Visible:=r3regioncb.Checked;
if r3regioncb.Checked then
    thrdrepGrid.Columns[4].Title.Caption:='Регион проживания';
end;

procedure TFrm_reports.r3st_emailcbClick(Sender: TObject);
begin
thrdrepGrid.Columns[14].Visible:=r3st_emailcb.Checked;
if r3st_emailcb.Checked then thrdrepGrid.Columns[14].Title.Caption:='Email';
end;

procedure TFrm_reports.r3to_livecbClick(Sender: TObject);
begin
thrdrepGrid.Columns[9].Visible:=r3to_livecb.Checked;
if r3to_livecb.Checked then thrdrepGrid.Columns[9].Title.Caption:='Проживание';
end;

procedure TFrm_reports.r3_sexcbClick(Sender: TObject);
begin
thrdrepGrid.Columns[2].Visible:=r3_sexcb.Checked;
if r3_sexcb.Checked then thrdrepGrid.Columns[2].Title.Caption:='Пол';
end;

procedure TFrm_reports.r4adrCBClick(Sender: TObject);
begin
r4repgrid.Columns[6].Visible:=r4adrCB.Checked;
if r4adrCB.Checked then r4repgrid.Columns[6].Title.Caption:='Адрес';
end;

procedure TFrm_reports.r4BtnClick(Sender: TObject);
var
    thorh_report:TADOStoredProc;
   I,cbe:Integer;
begin
    thorh_report := nil;
  try
    thorh_report := TADOStoredProc.Create(nil);
    try
      with thorh_report do
      begin
        Connection := DM.Connection;
        if not Connection.Connected then
          raise Exception.Create('Cоединение с базой не установлено');
        ProcedureName := 'thorh_report';
        Parameters.Clear;
        Parameters.CreateParameter(
        'd1',
        ftDate,
        pdInput,
        0,
        r4begindateinp.Date
        );
        Parameters.CreateParameter(
        'd2',
        ftDate,
        pdInput,
        0,
        r4enddateinp.Date
        );
        Open;
        DM.reportQuery.Close;
        DM.reportQuery.Recordset := thorh_report.Recordset;
      end;
    except
      on E: EADOError do
        ShowMessage('Ошибка: ' + E.Message);
      on E: Exception do
        ShowMessage('Ошибка: ' + E.Message);
    end;
  finally
    FreeAndNil(thorh_report);
  end;
   with r4repgrid do
   begin
     for I := 0 to columns.Count - 1 do
       begin
         Columns[i].Visible:=False;
       end;
   end;

 with Frm_reports do
 begin
    for cbe := 0 to ComponentCount - 1 do
 begin
    if(Components[cbe] is TCheckBox)  then
   begin
      (Components[cbe] as TCheckBox).Enabled:=true;
 end;
 end;
 end;
  MessageDlg('Таблица скрыта, отчет формируется динамически'
  ,mtInformation,[mbOK],0);
end;

procedure TFrm_reports.r4b_dataCBClick(Sender: TObject);
begin
r4repgrid.Columns[1].Visible:=r4b_dataCB.Checked;
if r4b_dataCB.Checked  then r4repgrid.Columns[1].Title.Caption:='Дата рождения';
end;

procedure TFrm_reports.r4civCBClick(Sender: TObject);
begin
r4repgrid.Columns[3].Visible:=r4civcb.Checked;
if r4civCB.Checked then r4repgrid.Columns[3].Title.Caption:='Гражданство';
end;

procedure TFrm_reports.r4data_otCBClick(Sender: TObject);
begin
r4repgrid.Columns[13].Visible:=r4data_otCB.Checked;
if r4data_otCB.Checked then
    r4repgrid.Columns[13].Title.Caption:='Дата отчисления';

end;

procedure TFrm_reports.r4data_prCBClick(Sender: TObject);
begin
r4repgrid.Columns[12].Visible:=r4data_prCB.Checked;
if r4data_prCB.Checked then r4repgrid.Columns[12].Title.Caption:='Дата приема';
end;

procedure TFrm_reports.r4dom_tCBClick(Sender: TObject);
begin
r4repgrid.Columns[11].Visible:=r4dom_tCB.Checked;
if r4dom_tCB.Checked then r4repgrid.Columns[11].Title.Caption:='Домашний';
end;

procedure TFrm_reports.r4fioCBClick(Sender: TObject);
begin
r4repgrid.Columns[7].Visible:=r4fioCB.Checked;
if r4fioCB.Checked then r4repgrid.Columns[7].Title.Caption:='ФИО';
end;

procedure TFrm_reports.r4gorodCBClick(Sender: TObject);
begin
r4repgrid.Columns[5].Visible:=r4gorodCB.Checked;
if r4gorodCB.Checked then r4repgrid.Columns[5].Title.Caption:='Город';
end;

procedure TFrm_reports.r4idCBClick(Sender: TObject);
begin
r4repgrid.Columns[0].Visible:=r4idCB.Checked;
if r4idCB.Checked then r4repgrid.Columns[0].Title.Caption:='Номер порядковый';
end;

procedure TFrm_reports.r4kursCBClick(Sender: TObject);
begin
r4repgrid.Columns[8].Visible:=r4kursCB.Checked;
if r4kursCB.Checked then r4repgrid.Columns[8].Title.Caption:='Курс';

end;

procedure TFrm_reports.r4mod_tCBClick(Sender: TObject);
begin
r4repgrid.Columns[10].Visible:=r4mod_tCB.Checked;
if r4mod_tCB.Checked then r4repgrid.Columns[10].Title.Caption:='Мобильный';
end;

procedure TFrm_reports.r4naim_grupCBClick(Sender: TObject);
begin
r4repgrid.Columns[14].Visible:=r4naim_grupCB.Checked;
if r4naim_grupCB.Checked then r4repgrid.Columns[14].Title.Caption:='Группа';
end;

procedure TFrm_reports.r4regionCBClick(Sender: TObject);
begin
r4repgrid.Columns[4].Visible:=r4regionCB.Checked;
if r4regionCB.Checked then r4repgrid.Columns[4].Title.Caption:='Регион';
end;

procedure TFrm_reports.r4sexCBClick(Sender: TObject);
begin
    r4repgrid.Columns[2].Visible:=r4sexCB.Checked;
    if r4sexCB.Checked then    r4repgrid.Columns[2].Title.Caption:='Пол';
end;

procedure TFrm_reports.r4st_emailCBClick(Sender: TObject);
begin
r4repgrid.Columns[15].Visible:=r4st_emailCB.Checked;
if r4st_emailCB.Checked then r4repgrid.Columns[15].Title.Caption:='Email';
end;

procedure TFrm_reports.r4to_liveCBClick(Sender: TObject);
begin
r4repgrid.Columns[9].Visible:=r4to_liveCB.Checked;
if r4to_liveCB.Checked then r4repgrid.Columns[9].Title.Caption:='Проживание';
end;

procedure TFrm_reports.r5BtnClick(Sender: TObject);

var  thith_report:TADOStoredProc;
begin
    thith_report := nil;
  try
    thith_report := TADOStoredProc.Create(nil);
    try
      with thith_report do
      begin
        Connection := DM.Connection;
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
        ProcedureName := 'thith_report';
        Parameters.Clear;
        Parameters.CreateParameter(
        'd1',
        ftDate,
        pdInput,
        0,
        r5beginDate_inp.Date
        );
        Parameters.CreateParameter(
        'd2',
        ftDate,
        pdInput,
        0,
        r5endDateinp.Date
        );
        Open;
        DM.reportQuery.Close;
        DM.reportQuery.Recordset := thith_report.Recordset;
      end;
    except
      on E: EADOError do
        ShowMessage('Ошибка: ' + E.Message);
      on E: Exception do
        ShowMessage('Ошибка: ' + E.Message);
    end;
  finally
    FreeAndNil(thith_report);
  end;
end;




procedure TFrm_reports.regionCBClick(Sender: TObject);
begin
  Stud_report1Grid.Columns[4].Visible:=regionCB.Checked;
if regionCB.Checked then Stud_report1Grid.Columns[4].Title.Caption:='Регион';
end;

procedure TFrm_reports.reprotPCChange(Sender: TObject);
var cbe:Integer;
begin
 case reprotPC.TabIndex of
 0:
 begin
 with dm.reportQuery do
 begin
  SQL.Clear;
  SQL.Text:= 'select '+
 '  stud.stud_id, ' +
    '  stud.b_data, ' +
    '  CASE stud.pol WHEN 1 THEN ''Мужской'' ELSE ''Женский'' END AS sex, ' +
    '  stud.civ, ' +
    '  stud.region, ' +
    '  stud.gorod, ' +
    '  stud.adr, ' +
    '  stud.passp_fam + '' '' + stud.passp_naim + ISNULL('' '' + stud.passp_otch, '''') AS fio, ' +
 '  CASE stud.mesto_jit WHEN 1 THEN ''Съем'' ELSE ''Общежитие'' END AS to_live, ' +
    '  stud.mod_t, ' +
    '  stud.dom_t, ' +
    '  stud.data_pr, ' +
    '  gruppa.naim_grup, ' +
    '  stud.st_email ' +
    'FROM stud ' +
    'INNER JOIN gruppa ON gruppa.grup_id = stud.grup_id ' +
    'INNER JOIN spec ON spec.spec_id = gruppa.spec_id ' +
    'WHERE 1=1 ' +
    '  AND stud.data_ot IS NULL ' +
    '  AND is_akadem = 0 ';
       Close;
       Open;
        Stud_report1Grid.Columns[0].Title.Caption := 'Номер порядковый';
        Stud_report1Grid.Columns[1].Title.Caption:='Дата рождения';
        Stud_report1Grid.Columns[2].Title.Caption:='Пол';
        Stud_report1Grid.Columns[3].Title.Caption:='Гражданство';
        Stud_report1Grid.Columns[4].Title.Caption:='Регион';
        Stud_report1Grid.Columns[5].Title.Caption:='Город';
        Stud_report1Grid.Columns[6].Title.Caption:='Адрес';
        Stud_report1Grid.Columns[7].Title.Caption:='ФИО';
        Stud_report1Grid.Columns[8].Title.Caption:='Проживание';
        Stud_report1Grid.Columns[9].Title.Caption:='Мобильный';
        Stud_report1Grid.Columns[10].Title.Caption:='Домашний';
        Stud_report1Grid.Columns[11].Title.Caption:='Дата приема';
        Stud_report1Grid.Columns[12].Title.Caption:='Группа';
        Stud_report1Grid.Columns[13].Title.Caption:='Email';
 end;
 end;
 1:
begin
   with dm.reportQuery do
   begin
    SQL.Clear;
    SQL.Text:='select '+
    '  stud.stud_id, ' +
    '  stud.b_data, ' +
    '  CASE stud.pol WHEN 1 THEN ''Мужской'' ELSE ''Женский'' END AS sex, ' +
    '  stud.civ, ' +
    '  stud.region, ' +
    '  stud.gorod, ' +
    '  stud.adr, ' +
    '  stud.passp_fam + '' '' + stud.passp_naim + ISNULL('' '' + stud.passp_otch, '''') AS fio, ' +
    ' gruppa.kurs,'+
 '  CASE stud.mesto_jit WHEN 1 THEN ''Съем'' ELSE ''Общежитие'' END AS to_live, ' +
    '  stud.mod_t, ' +
    '  stud.dom_t, ' +
    '  stud.data_pr, ' +
    '  gruppa.naim_grup, ' +
    '  stud.st_email ' +
    'FROM stud ' +
    'INNER JOIN gruppa ON gruppa.grup_id = stud.grup_id ' +
    'INNER JOIN spec ON spec.spec_id = gruppa.spec_id ' +
    'WHERE 1=1 ' +
    '  AND stud.data_ot IS NULL ' +
    '  AND is_akadem = 0 ';
    Close;
    Open;
    secondrepotGrid.Columns[0].Title.Caption:='Номер прядковый';
    secondrepotGrid.Columns[1].Title.Caption:='Дата рождения';
    secondrepotGrid.Columns[2].Title.Caption:='Пол';
    secondrepotGrid.Columns[3].Title.Caption:='Гражданство';
    secondrepotGrid.Columns[4].Title.Caption:='Регион';
    secondrepotGrid.Columns[5].Title.Caption:='Город';
    secondrepotGrid.Columns[6].Title.Caption:='Адрес';
    secondrepotGrid.Columns[7].Title.Caption:='ФИО';
    secondrepotGrid.Columns[8].Title.Caption:='Курс';
    secondrepotGrid.Columns[9].Title.Caption:='Проживание';
    secondrepotGrid.Columns[10].Title.Caption:='Мобильный';
    secondrepotGrid.Columns[11].Title.Caption:='Домащний';
    secondrepotGrid.Columns[12].Title.Caption:='Дата приеиа';
    secondrepotGrid.Columns[13].Title.Caption:='Группа';
    secondrepotGrid.Columns[14].Title.Caption:='Email';
end;
end;
2:
begin
with dm.reportQuery do
begin
  SQL.Clear;
  SQL.Text:='select '+
    '  stud.stud_id, ' +
    '  stud.b_data, ' +
    '  CASE stud.pol WHEN 1 THEN ''Мужской'' ELSE ''Женский'' END AS sex, ' +
    '  stud.civ, ' +
    '  stud.region, ' +
    '  stud.gorod, ' +
    '  stud.adr, ' +
    '  stud.passp_fam + '' '' + stud.passp_naim + ISNULL('' '' + stud.passp_otch, '''') AS fio, ' +
    ' gruppa.kurs,'+
 '  CASE stud.mesto_jit WHEN 1 THEN ''Съем'' ELSE ''Общежитие'' END AS to_live, ' +
    '  stud.mod_t, ' +
    '  stud.dom_t, ' +
    '  stud.data_pr, ' +
    '  gruppa.naim_grup, ' +
    '  stud.st_email ' +
    'FROM stud ' +
    'INNER JOIN gruppa ON gruppa.grup_id = stud.grup_id ' +
    'INNER JOIN spec ON spec.spec_id = gruppa.spec_id ' +
    'WHERE 1=1 ' +
    '  AND stud.data_ot IS NULL '+
    '  AND is_akadem = 0 ';
    close;
    Open;
    thrdrepGrid.Columns[0].Title.Caption :='Номер порядковый';
    thrdrepGrid.Columns[1].Title.Caption:='Дата рождения';
    thrdrepGrid.Columns[2].Title.Caption:='Пол';
    thrdrepGrid.Columns[3].Title.Caption:='Гражданство';
    thrdrepGrid.Columns[4].Title.Caption:='Регион проживания';
    thrdrepGrid.Columns[5].Title.Caption:='Город';
    thrdrepGrid.Columns[6].Title.Caption:='Адрес проживания';
    thrdrepGrid.Columns[7].Title.Caption:='ФИО';
    thrdrepGrid.Columns[8].Title.Caption:='Курс';
	thrdrepGrid.Columns[9].Title.Caption:='Проживание';
    thrdrepGrid.Columns[10].Title.Caption:='Мобильный';
    thrdrepGrid.Columns[11].Title.Caption:='Домашний';
    thrdrepGrid.Columns[12].Title.Caption:='Дата приема';
    thrdrepGrid.Columns[13].Title.Caption:='Группа';
    thrdrepGrid.Columns[14].Title.Caption:='Email';
end;
end;
3:
begin
    with dm.reportQuery do
    begin
        SQL.Clear;
        sql.Text:='select '+
 '  stud.stud_id, ' +
    '  stud.b_data, ' +
    '  CASE stud.pol WHEN 1 THEN ''Мужской'' ELSE ''Женский'' END AS sex, ' +
    '  stud.civ, ' +
    '  stud.region, ' +
    '  stud.gorod, ' +
    '  stud.adr, ' +
    '  stud.passp_fam + '' '' + stud.passp_naim + ISNULL('' '' + stud.passp_otch, '''') AS fio, ' +
 '  CASE stud.mesto_jit WHEN 1 THEN ''Съем'' ELSE ''Общежитие'' END AS to_live, ' +
    '  stud.mod_t, ' +
    '  stud.dom_t, ' +
    '  stud.data_pr, ' +
    '  stud.data_ot,'+
    '  gruppa.naim_grup, ' +
    '  stud.st_email ' +
    'FROM stud ' +
    'INNER JOIN gruppa ON gruppa.grup_id = stud.grup_id ' +
    'INNER JOIN spec ON spec.spec_id = gruppa.spec_id ' +
    'WHERE 1=1 ' +
    '  AND stud.data_ot  IS   NULL ' +
    '  AND is_akadem = 0 ';
    Close;
    Open;
    r4repgrid.Columns[0].Title.Caption:='Номер порядковый';
    r4repgrid.Columns[1].Title.Caption:='Дата рождения';
    r4repgrid.Columns[2].Title.Caption:='Пол';
    r4repgrid.Columns[3].Title.Caption:='Гражданство';
    r4repgrid.Columns[4].Title.Caption:='Регион';
    r4repgrid.Columns[5].Title.Caption:='Город';
    r4repgrid.Columns[6].Title.Caption:='Адрес';
    r4repgrid.Columns[7].Title.Caption:='ФИО';
    r4repgrid.Columns[8].Title.Caption:='Проживание';
    r4repgrid.Columns[9].Title.Caption:='Мобильный';
    r4repgrid.Columns[10].Title.Caption:='Домашний';
    r4repgrid.Columns[11].Title.Caption:='Дата приема';
    r4repgrid.Columns[12].Title.Caption:='Дата отчисления';
    r4repgrid.Columns[13].Title.Caption:='Группа';
    r4repgrid.Columns[14].Title.Caption:='Email';
    end;
end;

 end; //case

 with Frm_reports do
 begin
    for cbe := 0 to ComponentCount - 1 do
 begin
    if(Components[cbe] is TCheckBox)  then
   begin
      (Components[cbe] as TCheckBox).Checked:=False;
 end;
 end;
 end;

end;

procedure TFrm_reports.seconreportBtnClick(Sender: TObject);
   var
   second_report:TADOStoredProc;
   I,cbe:Integer;

begin
  second_report := nil;
  try
    second_report := TADOStoredProc.Create(nil);
    try
      with second_report do
      begin
        Connection := DM.Connection;
        if not Connection.Connected then
          raise Exception.Create('Соединение с базой не установлено');
        ProcedureName := 'second_report';
        Parameters.Clear;
        Parameters.CreateParameter(
        'grup_id',
        ftInteger,
        pdInput,
        0,
        r2groupDBL.KeyValue
        );
        Parameters.CreateParameter(
        't_date',
        ftDate,
        pdInput,
        0,
        r2_date_inp.Date
        );
        Open;
        DM.reportQuery.Close;
        DM.reportQuery.Recordset := second_report.Recordset;
      end;
    except
      on E: EADOError do
        ShowMessage('Ошибка: ' + E.Message);
      on E: Exception do
        ShowMessage('Ошибка: ' + E.Message);
    end;
  finally
    FreeAndNil(second_report);
  end;
   with secondrepotGrid do
   begin
     for I := 0 to columns.Count - 1 do
       begin
         Columns[i].Visible:=False;
       end;
   end;

 with Frm_reports do
 begin
    for cbe := 0 to ComponentCount - 1 do
 begin
    if(Components[cbe] is TCheckBox)  then
   begin
      (Components[cbe] as TCheckBox).Enabled:=true;
 end;
 end;
 end;
  MessageDlg('Таблица скрыта,отчет формирутеся динамически',mtInformation,
 [mbOK],0);
end;

procedure TFrm_reports.SexCBClick(Sender: TObject);
begin
 Stud_report1Grid.Columns[2].Visible:=sexCB.Checked;
 if SexCB.Checked then
  Stud_report1Grid.Columns[2].Title.Caption:='Пол';
end;

procedure TFrm_reports.stud_idCBClick(Sender: TObject);
begin
Stud_report1Grid.Columns[0].Visible := stud_idCB.Checked;
if stud_idCB.Checked then
  Stud_report1Grid.Columns[0].Title.Caption := 'Номер порядковый';
end;

procedure TFrm_reports.Stud_report1BtnClick(Sender: TObject);
var
 frist_report:TADOStoredProc;
  i,cb,cbe:Integer;
begin
    frist_report := nil;
  try
    frist_report := TADOStoredProc.Create(nil);
    try
      with frist_report do
      begin
        Connection := DM.Connection;
        if not Connection.Connected then
          raise Exception.Create('Соединенние с базой не установлено');
        ProcedureName := 'frist_report';
        Parameters.Clear;
        Parameters.CreateParameter(
        'stud_id',
        ftInteger,
        pdInput,
        0,
        Stud_report1DBL.KeyValue
        );
        Open;
        DM.reportQuery.Close;
        DM.reportQuery.Recordset := frist_report.Recordset;
      end;
    except
      on E: EADOError do
        ShowMessage('Ошибка: ' + E.Message);
      on E: Exception do
        ShowMessage('Ошибка: ' + E.Message);
    end;
  finally
    FreeAndNil(frist_report);
  end;
 with Stud_report1Grid do
 begin
  for I := 0 to Columns.Count - 1 do
  begin
    Columns[i].Visible:=False;
  end;
  end;
 MessageDlg('Таблица скрыта,отчет формирутеся динамически',mtInformation,
 [mbOK],0);
 with Frm_reports do
 begin
    for cb := 0 to ComponentCount - 1 do
 begin
    if(Components[cb] is TCheckBox)  then
   begin
      (Components[cb] as TCheckBox).Checked:=False;
 end;
 end;
 end;
   with Frm_reports do
 begin
    for cbe := 0 to ComponentCount - 1 do
 begin
    if(Components[cbe] is TCheckBox)  then
   begin
      (Components[cbe] as TCheckBox).Enabled:=true;
 end;
 end;
 end;



end;


procedure TFrm_reports.st_emailCBClick(Sender: TObject);
begin
Stud_report1Grid.Columns[13].Visible:=st_emailCB.Checked;
  if st_emailCB.Checked then
  Stud_report1Grid.Columns[13].Title.Caption:='Email';
end;

procedure TFrm_reports.thrdrepBtnClick(Sender: TObject);
 var
   third_report:TADOStoredProc;
   I,cbe:Integer;
begin
   third_report := nil;
  try
    third_report := TADOStoredProc.Create(nil);
    try
      with third_report do
      begin
        Connection := DM.Connection;
        if not Connection.Connected then
          raise Exception.Create('Cоединение с базой не установлено');
        ProcedureName := 'third_report';
        Parameters.Clear;
        Parameters.CreateParameter(
        'd1',
        ftDate,
        pdInput,
        0,
        r3begin_data_inp.Date
        );
        Parameters.CreateParameter(
        'd2',
        ftDate,
        pdInput,
        0,
        r3Enddatainp.Date
        );
        Open;
        DM.reportQuery.Close;
        DM.reportQuery.Recordset := third_report.Recordset;
      end;
    except
      on E: EADOError do
        ShowMessage('Ошибка: ' + E.Message);
      on E: Exception do
        ShowMessage('Ошибка: ' + E.Message);
    end;
  finally
    FreeAndNil(third_report);
  end;
   with thrdrepGrid do
   begin
     for I := 0 to columns.Count - 1 do
       begin
         Columns[i].Visible:=False;
       end;
   end;

 with Frm_reports do
 begin
    for cbe := 0 to ComponentCount - 1 do
 begin
    if(Components[cbe] is TCheckBox)  then
   begin
      (Components[cbe] as TCheckBox).Enabled:=true;
 end;
 end;
 end;
  MessageDlg('Таблица скрыта,отчет формирутеся динамически'
  ,mtInformation,[mbOK],0);
end;

procedure TFrm_reports.to_liveCBClick(Sender: TObject);
begin
Stud_report1Grid.Columns[8].Visible:=to_liveCB.Checked;
if to_liveCB.Checked then
 Stud_report1Grid.Columns[8].Title.Caption:='Проживание';
end;

end.

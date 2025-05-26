unit Un_klient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DB,ADODB, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls;

type
  TFrm_klient = class(TForm)
    klientPC: TPageControl;
    selTab: TTabSheet;
    insTab: TTabSheet;
    updTab: TTabSheet;
    delTab: TTabSheet;
    klient_inp_boxBox: TGroupBox;
    klient_data_box: TGroupBox;
    klient_grouper: TGroupBox;
    klient_btn_Box: TGroupBox;
    klientCondEdit: TLabeledEdit;
    klientfndEdit: TLabeledEdit;
    klient_sel_Btn: TButton;
    klient_fio_Radio: TRadioButton;
    klient_adr_Radio: TRadioButton;
    klient_resetRadio: TRadioButton;
    ins_schet_data_Box: TGroupBox;
    ins_schetrbtnBox: TGroupBox;
    ins_schet_insBtn: TButton;
    sh_upd_datapBox: TGroupBox;
    sh_upd_inpBox: TGroupBox;
    schet_u_btntBox: TGroupBox;
    sh_upd_Btn: TButton;
    sh_s_lbl: TStaticText;
    sh_upd_DBL: TDBLookupComboBox;
    sh_del_inpBox: TGroupBox;
    sh_delbtnBox: TGroupBox;
    sh_del_data_Box: TGroupBox;
    sh_del_lbl: TStaticText;
    sh_delDBL: TDBLookupComboBox;
    del_sh_lbl: TStaticText;
    sh_del_btn: TButton;
    about_schetPC: TPageControl;
    about_schet_Tab_one: TTabSheet;
    ins_schet_inp_Box: TGroupBox;
    klient_sel_Grid: TDBGrid;
    d_ustlbl: TStaticText;
    d_ust_inp: TDateTimePicker;
    upd_sh_vrem_splbl: TStaticText;
    shvrem_sp_inp: TDateTimePicker;
    vrem_p_lbl: TStaticText;
    vrem_p_inp: TDateTimePicker;
    vrem_sp_lbl: TStaticText;
    vrem_sp_inp: TDateTimePicker;
    ins_s_Nomer_inp: TLabeledEdit;
    ins_type_lbl: TStaticText;
    s_type_id_DBL: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure klient_sel_BtnClick(Sender: TObject);
    procedure klientfndEditKeyPress(Sender: TObject; var Key: Char);
    procedure klient_fio_RadioClick(Sender: TObject);
    procedure klient_adr_RadioClick(Sender: TObject);
    procedure klient_resetRadioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_klient: TFrm_klient;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_klient.FormActivate(Sender: TObject);
begin
  dm.operQuery.Open;
  dm.schetQuery.OPEN;
  dm.masterQuery.Open;
  dm.klientQuery.open;
  AdjustDBGridColumnWidths('Frm_klient',6000, 10);
end;

procedure TFrm_klient.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
  Action := caFree;
end;

procedure TFrm_klient.FormCreate(Sender: TObject);
begin
  Frm_klient.KeyPreview:=true;
  Frm_klient.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);
end;

procedure TFrm_klient.klientfndEditKeyPress(Sender: TObject; var Key: Char);
begin
    try
   dm.klientQuery.SQL.Text:=
   'select'+' '+
   'klient.klient_id,'+' '+
   'klient.fio,'+' '+
   'klient.adr,'+' '+
   'klient.prim,'+' '+
   'klient.kont_d,'+' '+
   'klient.tel,'+' '+
   'klient.pokaz,'+' '+
   'operator.oper_naim,'+' '+
   'schet.Nomer,'+' '+
   'm_master.fio_master'+' '+
  'from klient'+' '+' '+
  'inner join operator on operator.oper_id=klient.oper_id'+' '+
  'inner join schet on schet.schet_id=klient.schet_id'+' '+
  'inner join m_master on m_master.id_master=klient.id_master'+' '+
  'where 1=1'+' '+
   'and klient.adr like'+
   QuotedStr(Concat(klientfndedit.Text,#37));
   dm.klientQuery.close;
   dm.klientQuery.Open;
except on E: Exception do
  begin
  ShowMessage('Ошибка'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_klient.klient_adr_RadioClick(Sender: TObject);
begin
    if  klient_adr_Radio.Checked=true then
  begin
    try
     with dm.klientQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
   'select'+' '+
   'klient.klient_id,'+' '+
   'klient.fio,'+' '+
   'klient.adr,'+' '+
   'klient.prim,'+' '+
   'klient.kont_d,'+' '+
   'klient.tel,'+' '+
   'klient.pokaz,'+' '+
   'operator.oper_naim,'+' '+
   'schet.Nomer,'+' '+
   'm_master.fio_master'+' '+
  'from klient'+' '+' '+
  'inner join operator on operator.oper_id=klient.oper_id'+' '+
  'inner join schet on schet.schet_id=klient.schet_id'+' '+
  'inner join m_master on m_master.id_master=klient.id_master'+' '+
  'where 1=1'+' '+
  'order by klient.adr asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_klient.klient_fio_RadioClick(Sender: TObject);
begin
    if  klient_fio_Radio.Checked=true then
  begin
    try
     with dm.klientQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
   'select'+' '+
   'klient.klient_id,'+' '+
   'klient.fio,'+' '+
   'klient.adr,'+' '+
   'klient.prim,'+' '+
   'klient.kont_d,'+' '+
   'klient.tel,'+' '+
   'klient.pokaz,'+' '+
   'operator.oper_naim,'+' '+
   'schet.Nomer,'+' '+
   'm_master.fio_master'+' '+
  'from klient'+' '+' '+
  'inner join operator on operator.oper_id=klient.oper_id'+' '+
  'inner join schet on schet.schet_id=klient.schet_id'+' '+
  'inner join m_master on m_master.id_master=klient.id_master'+' '+
  'where 1=1'+' '+
  'order by klient.fio asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('Ошибка :'+' '+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_klient.klient_resetRadioClick(Sender: TObject);
  var i,j,c:Integer;
begin
    if klient_resetRadio.Checked=true then
with Frm_klient do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_klient do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.klientQuery do
     begin
     Close;
     sql.Clear;
     sql.Text:=
     'select'+' '+
   'klient.klient_id,'+' '+
   'klient.fio,'+' '+
   'klient.adr,'+' '+
   'klient.prim,'+' '+
   'klient.kont_d,'+' '+
   'klient.tel,'+' '+
   'klient.pokaz,'+' '+
   'operator.oper_naim,'+' '+
   'schet.Nomer,'+' '+
   'm_master.fio_master'+' '+
  'from klient'+' '+' '+
  'inner join operator on operator.oper_id=klient.oper_id'+' '+
  'inner join schet on schet.schet_id=klient.schet_id'+' '+
  'inner join m_master on m_master.id_master=klient.id_master'+' '+
  'where 1=1';
    Open;
     end;
    with Frm_klient do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_klient.klient_sel_BtnClick(Sender: TObject);
begin
  try
    if not DM.Connection.Connected then
      raise Exception.Create('Соедиенеие с базой не установлено');
    with DM.sel_klient do
    begin
      Close;
      Parameters.ParamByName('@fio').Value :=klientcondedit.Text;
      Open;
       DM.klientQuery.Recordset:=dm.sel_klient.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;

end.

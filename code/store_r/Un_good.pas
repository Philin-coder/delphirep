unit Un_good;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,db,adodb, ComCtrls, Grids, DBGrids, ExtCtrls;

type
  TFrm_good = class(TForm)
    goodPC: TPageControl;
    Sel_tab: TTabSheet;
    Good_sel_grouper: TGroupBox;
    Good_sel_data_box: TGroupBox;
    good_sel_btn_box: TGroupBox;
    good_Sel_cond_box: TGroupBox;
    good_selBtn: TButton;
    Good_SelGrid: TDBGrid;
    good_fnd_inp: TLabeledEdit;
    good_cond_inp: TLabeledEdit;
    Radio_naim_gruper: TRadioButton;
    RadioSelreset: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure good_selBtnClick(Sender: TObject);
    procedure good_fnd_inpKeyPress(Sender: TObject; var Key: Char);
    procedure Radio_naim_gruperClick(Sender: TObject);
    procedure RadioSelresetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_good: TFrm_good;

implementation

uses Un_dm, Un_func, Un_man;

{$R *.dfm}

procedure TFrm_good.FormActivate(Sender: TObject);
begin
   dm.goodQuery.Open;
end;

procedure TFrm_good.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_good.FormCreate(Sender: TObject);
begin
 frm_good.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
end;

procedure TFrm_good.good_fnd_inpKeyPress(Sender: TObject; var Key: Char);
begin
   try
   dm.goodQuery.SQL.Text:=
   'select'+' '+
   'good.id_good,'+' '+
    'good.naim_good,'+' '+
    'good.quant_good,'+' '+
    'good.cost_good'+' '+
    'from good'+' '+
    'where 1=1'+' '+
     'and good.naim_good like'+
   QuotedStr(Concat(good_fnd_inp.Text,#37));
   dm.goodQuery.close;
   dm.goodQuery.Open;
except on E: Exception do
  begin
  ShowMessage('wrong situation'+' '+E.Message);
  end;
  end;
end;

procedure TFrm_good.good_selBtnClick(Sender: TObject);
begin
try
    if not DM.Connection.Connected then
      raise Exception.Create('Cоединение с базой не установлено');
    with DM.sel_good do
    begin
      Close;
      Parameters.ParamByName('@naim_good').Value := good_cond_inp.Text;
      Open;
       DM.goodQuery.Recordset:=dm.sel_good.Recordset;
    end;
  except
    on E: EDatabaseError do
      ShowMessage('Ошибка: ' + E.Message);
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;

procedure TFrm_good.RadioSelresetClick(Sender: TObject);
var i,j,c:Integer;
begin
if RadioSelreset.Checked then
  with Frm_good do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
       with Frm_good do
    for c := 0 to ComponentCount - 1 do
     begin
       if (Components[c] is TCheckBox)  then
        begin
          (Components[c] as TCheckBox).Checked:=False;
        end;
     end;
     with dm.goodQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:=
     'select'+' '+
    'good.id_good,'+' '+
    'good.naim_good,'+' '+
    'good.quant_good,'+' '+
    'good.cost_good'+' '+
    'from good'+' '+
    'where 1=1';
     Open;
     end;
    with Frm_good do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;

procedure TFrm_good.Radio_naim_gruperClick(Sender: TObject);
begin
if radio_naim_gruper.Checked=true then
  begin
    try
     with dm.goodQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
    'select'+' '+
    'good.id_good,'+' '+
    'good.naim_good,'+' '+
    'good.quant_good,'+' '+
    'good.cost_good'+' '+
    'from good'+' '+
    'where 1=1'+' '+
    'order by good.naim_good asc';
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

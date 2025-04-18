unit Un_csv_loader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,db,adodb, ComCtrls, Grids, DBGrids, ExtCtrls, DBCtrls,
  StrUtils;

type
  TFrm_csv_loader = class(TForm)
    csvlPC: TPageControl;
    delTab: TTabSheet;
    csvldeldataBox: TGroupBox;
    rpobtn_box: TGroupBox;
    rpBtn: TButton;
    csvlGrd: TDBGrid;
    csvOD: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rpBtnClick(Sender: TObject);
  private
    procedure   LoadGoodsFromCSV(const FileName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_csv_loader: TFrm_csv_loader;

implementation

uses Un_dm, Un_func, Un_man;

{$R *.dfm}
procedure TFrm_csv_loader.LoadGoodsFromCSV(const FileName: string);
var
  StringList: TStringList;
  i, FieldCount: Integer;
  Fields: array[0..2] of string;
  SIdGood, SNameGood, SPriceGood: string;
  IDGood: Integer;
  PriceGood: Double;
  Fmt: TFormatSettings;
begin
IDGood := 0;
PriceGood := 0.0;
  StringList := TStringList.Create;
  try
    GetLocaleFormatSettings(0, Fmt);
    Fmt.DecimalSeparator := '.';

    StringList.LoadFromFile(FileName);

    with DM.gQuery do
    begin
      Close;
      SQL.Text := 'DELETE FROM goods';
      ExecSQL;
    end;

    for i := 1 to StringList.Count - 1 do
    begin
      FieldCount := SplitString(StringList[i], ',', Fields);

      if FieldCount < 3 then
      begin
        ShowMessage('Ошибка: недостаточно данных в строке.');
        Continue;
      end;

      SIdGood := Fields[0];
      SNameGood := Fields[1];
      SPriceGood := Fields[2];

      try
        IDGood := StrToIntDef(Trim(SIdGood), 0);
        PriceGood := StrToFloat(Trim(SPriceGood), Fmt);
      except
        on E: Exception do
        begin
          ShowMessage('Ошибка при преобразовании: ' + E.Message);
          Continue;
        end;
      end;

      with DM.gQuery do
      begin
        Close;
        SQL.Text :=
          'INSERT INTO goods (GoodsId, goods_naim, goods_cost) ' +
          'VALUES (:GoodsId, :goods_naim, :goods_cost)';

        Parameters.ParamByName('GoodsId').Value := IDGood;
        Parameters.ParamByName('goods_naim').Value := Trim(SNameGood);
        Parameters.ParamByName('goods_cost').Value := PriceGood;

        ExecSQL;
      end;
    end;

    DM.gQuery.Close;
    DM.gQuery.SQL.Text := 'SELECT * FROM goods';
    DM.gQuery.Open;

    ShowMessage('Данные успешно загружены.');
  except
    on E: Exception do
      ShowMessage('Ошибка при загрузке: ' + E.Message);
  end;
  StringList.Free;
end;

procedure TFrm_csv_loader.rpBtnClick(Sender: TObject);
begin
 if csvOD.Execute then
  begin
    LoadGoodsFromCSV(csvOD.FileName);
  end;
end;

procedure TFrm_csv_loader.FormActivate(Sender: TObject);
begin
dm.GQuery.Open;
end;

procedure TFrm_csv_loader.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_csv_loader.FormCreate(Sender: TObject);
begin
Frm_csv_loader.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
 csvOD.Filter:='CSV Files (*.csv)|*.csv|All Files (*.*)|*.*';
end;

end.

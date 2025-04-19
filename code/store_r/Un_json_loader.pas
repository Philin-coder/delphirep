unit Un_json_loader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,db,adodb, ComCtrls, Grids, DBGrids, ExtCtrls, DBCtrls,
  StrUtils;

type
  TFrm_json_loader = class(TForm)
    JSPC: TPageControl;
    delTab: TTabSheet;
    jsldeldataBox: TGroupBox;
    jsbtn_box: TGroupBox;
    jsBtn: TButton;
    jsGrd: TDBGrid;
    jsOD: TOpenDialog;
    procedure jsBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_json_loader: TFrm_json_loader;

implementation

uses Un_dm, Un_func, Un_man, Un_hlp;

{$R *.dfm}

procedure TFrm_json_loader.FormActivate(Sender: TObject);
begin
  dm.GQuery.Open;
end;

procedure TFrm_json_loader.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_json_loader.FormCreate(Sender: TObject);
begin
Frm_json_loader.KeyPreview:=true;
 Frm_json_loader.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
end;

procedure TFrm_json_loader.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=112) then
begin
 try
UpdateFormProperties('Frm_help', 'Форма работы со справкой',
clBtnFace, 1024, 768);
Frm_help.ShowModal;
except
Frm_help.Free;
raise;
end;

end;

end;

procedure TFrm_json_loader.jsBtnClick(Sender: TObject);
begin
LoadJSONToTableFromDialog(
  jsOD,
  'goods',
  'GoodsId',
  'goods_naim',
  'goods_cost',
  DM.gQuery
);

end;

end.

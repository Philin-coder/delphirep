unit Un_xml_loader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,db,adodb, ComCtrls, Grids, DBGrids, ExtCtrls, DBCtrls,
  StrUtils;

type
  TFrm_xml_loader = class(TForm)
    xmlPC: TPageControl;
    delTab: TTabSheet;
    xmlldeldataBox: TGroupBox;
    xmlbtn_box: TGroupBox;
    xlBtn: TButton;
    xmllGrd: TDBGrid;
    xmlOD: TOpenDialog;
    procedure xlBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_xml_loader: TFrm_xml_loader;

implementation

uses Un_dm, Un_func, Un_man;

{$R *.dfm}

procedure TFrm_xml_loader.FormActivate(Sender: TObject);
begin
  dm.GQuery.Open;
end;

procedure TFrm_xml_loader.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_xml_loader.FormCreate(Sender: TObject);
begin
Frm_xml_loader.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
 with xmlOD do
begin
  Title := 'Âûבונטעו XML פאיכ';
  Filter := 'XML פאיכû (*.xml)|*.xml';
  InitialDir := GetCurrentDir;
end;

end;

procedure TFrm_xml_loader.xlBtnClick(Sender: TObject);
begin
LoadXMLToTableFromDialog(
  xmlOD,
  'goods',
  'GoodsId',
  'goods_naim',
  'goods_cost',
  DM.gQuery 
);
end;

end.

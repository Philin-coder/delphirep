unit Un_autor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,jpeg,db,adodb, ExtCtrls, StdCtrls, ImgList, ComCtrls, ToolWin;

type
  Tfrm_autor = class(TForm)
    autor_inpBox: TGroupBox;
    autor_btnBox: TGroupBox;
    autor_pass_btn: TButton;
    autor_main_image: TImage;
    autor_log_inp: TLabeledEdit;
    autor_pas_inp: TLabeledEdit;
    autorTB: TToolBar;
    watchlBtn: TToolButton;
    hideBtn: TToolButton;
    autorImageList: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure watchlBtnClick(Sender: TObject);
    procedure hideBtnClick(Sender: TObject);
    procedure autor_pass_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_autor: Tfrm_autor;

implementation

uses Un_dm, Un_func, Un_main;

{$R *.dfm}

procedure Tfrm_autor.autor_pass_btnClick(Sender: TObject);
begin
  if(autor_log_inp.Text=dm.userQuery.FieldByName('usver_name').AsString)and
(autor_pas_inp.Text=dm.userQuery.FieldByName('user_pas').AsString)  then
begin
  Close;
end
else
begin
  showMessage('Пароль некорректен');
  Exit;
end;

end;

procedure Tfrm_autor.FormActivate(Sender: TObject);
  var i:Integer;
begin
  dm.userQuery.Open;
  AdjustDBGridColumnWidths('Frm_autor',6000, 10);
   with Frm_autor do
    begin
  for I := 0 to ComponentCount - 1 do
if (Components[i]is  TLabeledEdit) then
begin
  (Components[i]as TLabeledEdit).PasswordChar:='*';
end;
end;
  autor_log_inp.Text:='simonov';
  autor_pas_inp.Text:='alpha_pass';


end;

procedure Tfrm_autor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure Tfrm_autor.FormCreate(Sender: TObject);
begin
  UpdateFormShowHint('Frm_autor');
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  UniformizeComponentAnchors(Self);
  LoadFormState(Self);
  AdjustImageProperties(autor_main_image);
  LoadImageFromResource('AUTOR_IMAGE', autor_main_image);
  LoadIconFromResource('IYE',1,AUTORImageList);
     watchlBtn.ImageIndex:=0;
     LoadIconFromResource('DS',1,AUTORImageList);
     hideBtn.ImageIndex:=1;
end;

procedure Tfrm_autor.hideBtnClick(Sender: TObject);
begin
  autor_log_inp.PasswordChar:='*';
  autor_pas_inp.PasswordChar:='*';
end;

procedure Tfrm_autor.watchlBtnClick(Sender: TObject);
begin
  autor_log_inp.PasswordChar:=#0;
  autor_pas_inp.PasswordChar:=#0;
end;

end.

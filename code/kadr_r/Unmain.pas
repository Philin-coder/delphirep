unit Unmain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,jpeg,
  Dialogs,dateutils, Menus, ExtCtrls;

type
  TFrmMain = class(TForm)
    ItemMenu: TMainMenu;
    prof_menu: TMenuItem;
    MainImage: TImage;
    dog_menu: TMenuItem;
    ank_menu: TMenuItem;
    vak_menu: TMenuItem;
    res_menu: TMenuItem;
    procedure FormActivate(Sender: TObject);
    function DateToStr_(Dat : TDate): String;
    function   CommaPoint (X: String) : String;
    procedure prof_menuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dog_menuClick(Sender: TObject);
    procedure ank_menuClick(Sender: TObject);
    procedure vak_menuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses Un_dm, Un_pfor, Un_dog, Un_ank, Un_vak;

{$R *.dfm}
function TfrmMain.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;

procedure TFrmMain.dog_menuClick(Sender: TObject);
begin
Frm_dog.ShowModal;
end;

procedure TFrmMain.ank_menuClick(Sender: TObject);
begin
  Frm_ank.ShowModal;
end;

function   TfrmMain.CommaPoint (X: String) : String;
var iii : Integer;
begin
 iii:=pos(',',X) ;
 if iii<>0 then
 Result:=copy(X,1,iii-1)+'.'+copy(X,iii+1,5)
 else
 Result:=x;
end;

procedure TFrmMain.FormActivate(Sender: TObject);
begin
With MainImage do
begin
Stretch:=True;
Picture.LoadFromFile('1.jpeg');
end;

end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
With MainImage do
begin
Picture:=nil;
end;

end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
with FrmMain do
begin
  width:=1024;
  height:=768;
  Position:=poScreenCenter;
end;

end;

procedure TFrmMain.prof_menuClick(Sender: TObject);
begin
Frm_pfor.ShowModal;
end;

procedure TFrmMain.vak_menuClick(Sender: TObject);
begin
     Frm_vak.ShowModal;
end;

end.

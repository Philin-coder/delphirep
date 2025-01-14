unit Unmain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,jpeg,
  Dialogs,dateutils;

type
  TFrmMain = class(TForm)
    procedure FormActivate(Sender: TObject);
    function DateToStr_(Dat : TDate): String;
    function   CommaPoint (X: String) : String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}
function TfrmMain.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
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
with FrmMain do
begin
  width:=1024;
  height:=768;

end;
end;

end.

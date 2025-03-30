unit Un_autorize;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,jpeg, ImgList, ExtCtrls, StdCtrls;

type
  TFrm_author = class(TForm)
    authorImage: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_author: TFrm_author;

implementation

uses Un_func, Un_main;

{$R *.dfm}

procedure TFrm_author.FormCreate(Sender: TObject);
var Time_today:String;
begin
With Frm_author do
begin
  Width:=1024;
  Height:=768;
  Position:=poScreenCenter;
    Time_today:=GetTimeOfDay;
      if Time_today = 'Утро' then
        LoadImageFromResource('MORING_IMAGE',authorImage)
  else if Time_today = 'День' then
    LoadImageFromResource('DAY_IMAGE',authorImage)
  else if Time_today = 'Вечер' then
        LoadImageFromResource('EVENING_IMAGE',authorImage)
  else if time_today = 'Ночь' then
  LoadImageFromResource('NIGHT_IMAGE',authorImage)


end;
with authorImage do
begin
 AutoSize:=True;
 Stretch:=true;
end;
end;

end.

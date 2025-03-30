unit Un_autorize;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,jpeg, ImgList, ExtCtrls;

type
  TFrm_author = class(TForm)
    authorImage: TImage;
    dayImageList: TImageList;
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
begin
With Frm_author do
begin
  Width:=1024;
  Height:=768;
  Position:=poScreenCenter;

end;
end;

end.

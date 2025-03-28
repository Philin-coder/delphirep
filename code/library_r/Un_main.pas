unit Un_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TFrm_main = class(TForm)
    main_image: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_main: TFrm_main;

implementation

uses Un_func, Un_dm;

{$R *.dfm}
const
  FileName = 'connection_string.txt';

procedure TFrm_main.FormActivate(Sender: TObject);
begin
    SaveConnectionStringToFile(FileName, dm.connection.ConnectionString);
   // ShowMessage('������ ����������� ������� ��������� � ����: ' + FileName);
end;

procedure TFrm_main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SaveFormState(Self);
   Action := caFree;
  main_Image.Picture:=nil;
end;

procedure TFrm_main.FormCreate(Sender: TObject);
begin
With Frm_main do
begin
  Width:=1024;
  Height:=768;
  Position:=poScreenCenter;
end;
LoadIconFromResource('MAIN_ICON');
try
  HandleAnimatedCursor(0, 'my_cur.ani');
//  ShowMessage('������ ������� �������� � ����������');
except
  on E: Exception do
    ShowMessage('������: ' + E.Message);
end;
HandleAnimatedCursor(1);
//HandleAnimatedCursor(2);
LoadImageFromResource('BACKGROUND_IMAGE',main_Image);

LoadFormState(Self);
With main_Image do
begin
  Stretch:=True;
  AutoSize:=True;
end;
end;

end.

unit Un_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ImgList, Menus, ComCtrls, ToolWin;

type
  TFrm_main = class(TForm)
    main_image: TImage;
    iconImageList: TImageList;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
  procedure ChangeFormColor(Sender: TObject);
var
  public
    { Public declarations }
  end;

var
  Frm_main: TFrm_main;

implementation

uses Un_func, Un_dm, Un_autorize;

{$R *.dfm}
const
  FileName = 'connection_string.txt';
  procedure TFrm_main.ChangeFormColor(Sender: TObject);
begin
  if Sender is TToolButton then
  begin
    // Определяем, какая кнопка была нажата, по её Tag или Caption
    case TToolButton(Sender).Tag of
      0: Self.Color := clRed;       // Кнопка 1
      1: Self.Color := clGreen;     // Кнопка 2
      2: Self.Color := clBlue;      // Кнопка 3
      3: Self.Color := clYellow;    // Кнопка 4
    else
      Self.Color := clWhite;        // Цвет по умолчанию
    end;
  end;
end;
procedure TFrm_main.FormActivate(Sender: TObject);
begin
    SaveConnectionStringToFile(FileName, dm.connection.ConnectionString);
   // ShowMessage('Строка подключения успешно сохранена в файл: ' + FileName);
end;

procedure TFrm_main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SaveFormState(Self);
   Action := caFree;
  main_Image.Picture:=nil;
  iconImageList.Clear;
end;

procedure TFrm_main.FormCreate(Sender: TObject);
const
  ButtonNames: array[0..3] of string = ('Добавить', 'Удалить',
  'Редактировать', 'Выбрать');
  var
  ButtonClicks: array of TNotifyEvent;
begin
With Frm_main do
begin
  Width:=1024;
  Height:=768;
  Position:=poScreenCenter;
  iconImageList.Clear;
  LoadIconFromResource('ADD_ICON',1,iconImageList);
  LoadIconFromResource('DELETE_ICON',1,iconImageList);
  LoadIconFromResource('EDIT_ICON',1,iconImageList);
  LoadIconFromResource('SELECT_ICON',1,iconImageList);
// ShowMessage(IntToStr(iconImageList.Count));
   SetLength(ButtonClicks, 4);
  ButtonClicks[0] := ChangeFormColor; // Обработчик для кнопки "Красный"
  ButtonClicks[1] := ChangeFormColor; // Обработчик для кнопки "Зелёный"
  ButtonClicks[2] := ChangeFormColor; // Обработчик для кнопки "Синий"
  ButtonClicks[3] := ChangeFormColor; // Обработчик для кнопки "Жёлтый"

  // Создание ToolBar с кнопками
  CreateToolBarWithButtons(Self, iconImageList, ButtonNames, ButtonClicks);



end;
LoadIconFromResource('MAIN_ICON',0);
try
  HandleAnimatedCursor(0, 'my_cur.ani');
//  ShowMessage('Курсор успешно загружен и установлен');
except
  on E: Exception do
    ShowMessage('Ошибка: ' + E.Message);
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

procedure TFrm_main.FormShow(Sender: TObject);
begin
Frm_author.ShowModal;
end;

end.

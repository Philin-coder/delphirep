unit Un_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus,jpeg;
const
  FileName = 'connection_string.txt';

type
  TFrm_main = class(TForm)
    main_Image: TImage;
    ItemMenu: TMainMenu;
    usver_item: TMenuItem;
    manager_item: TMenuItem;
    usl_item: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure usver_itemClick(Sender: TObject);
    procedure manager_itemClick(Sender: TObject);
    procedure usl_itemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_main: TFrm_main;

implementation

uses Un_func, Un_dm, Un_user, Un_manager, Un_usl;

{$R *.dfm}

procedure TFrm_main.FormActivate(Sender: TObject);
begin
   SaveConnectionStringToFile(FileName, dm.connection.ConnectionString);
end;

procedure TFrm_main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  main_Image.Picture := nil;
  SaveFormState(Self);
end;

procedure TFrm_main.FormCreate(Sender: TObject);
begin
  SetFormPropertiesIfNeeded;
  AdjustImageProperties(main_Image);
  LoadFormState(Self);
  LoadImageFromResource('BACKGROUND_IMAGE', main_Image);
end;

procedure TFrm_main.manager_itemClick(Sender: TObject);
begin
  try
    UpdateFormProperties('Frm_manager', 'Форма работы с данными менеджера',
      clBtnFace, 1024, 768);
    Frm_manager.ShowModal;
  except
    Frm_manager.Free;
    raise;
  end;
end;

procedure TFrm_main.usl_itemClick(Sender: TObject);
begin
   try
    UpdateFormProperties('Frm_usluga', 'Форма работы с данными об услуге',
      clBtnFace, 1024, 768);
    Frm_usluga.ShowModal;
  except
    Frm_usluga.Free;
    raise;
  end;
end;

procedure TFrm_main.usver_itemClick(Sender: TObject);
begin
  try
    UpdateFormProperties('Frm_user', 'Форма работы с данными пользователя',
      clBtnFace, 1024, 768);
    Frm_user.ShowModal;
  except
    Frm_user.Free;
    raise;
  end;
end;

end.

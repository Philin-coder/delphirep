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
    mplan_item: TMenuItem;
    klient_item: TMenuItem;
    N1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure usver_itemClick(Sender: TObject);
    procedure manager_itemClick(Sender: TObject);
    procedure usl_itemClick(Sender: TObject);
    procedure mplan_itemClick(Sender: TObject);
    procedure klient_itemClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_main: TFrm_main;

implementation

uses Un_func, Un_dm, Un_user, Un_manager, Un_usl, Un_mplan, Un_klient,
  Un_report, Un_autor;

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

procedure TFrm_main.FormShow(Sender: TObject);
begin
  try
    UpdateFormProperties('frm_autor', '����� ����������� ',
      clBtnFace, 1024, 768);
    frm_autor.ShowModal;
  except
    frm_autor.Free;
    raise;
  end;
end;

procedure TFrm_main.klient_itemClick(Sender: TObject);
begin
  try
    UpdateFormProperties('Frm_klient', '����� ������ � ������� �������',
      clBtnFace, 1024, 768);
    Frm_klient.ShowModal;
  except
    Frm_klient.Free;
    raise;
  end;
end;

procedure TFrm_main.manager_itemClick(Sender: TObject);
begin
  try
    UpdateFormProperties('Frm_manager', '����� ������ � ������� ���������',
      clBtnFace, 1024, 768);
    Frm_manager.ShowModal;
  except
    Frm_manager.Free;
    raise;
  end;
end;

procedure TFrm_main.mplan_itemClick(Sender: TObject);
begin
   try
    UpdateFormProperties('Frm_plan', '����� ������ � ������ �������� �����',
      clBtnFace, 1024, 768);
    Frm_plan.ShowModal;
  except
    Frm_plan.Free;
    raise;
  end;
end;

procedure TFrm_main.N1Click(Sender: TObject);
begin
   try
    UpdateFormProperties('Frm_report', '����� ������ � ������� ����������',
      clBtnFace, 1024, 768);
    Frm_report.ShowModal;
  except
    Frm_report.Free;
    raise;
  end;
end;

procedure TFrm_main.usl_itemClick(Sender: TObject);
begin
   try
    UpdateFormProperties('Frm_usluga', '����� ������ � ������� �� ������',
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
    UpdateFormProperties('Frm_user', '����� ������ � ������� ������������',
      clBtnFace, 1024, 768);
    Frm_user.ShowModal;
  except
    Frm_user.Free;
    raise;
  end;
end;

end.

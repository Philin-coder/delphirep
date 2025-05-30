unit Un_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,jpeg, Menus;

const
  FileName = 'connection_string.txt';


type
  TFrm_main = class(TForm)
    main_Image: TImage;
    ItemMenu: TMainMenu;
    teacher_item: TMenuItem;
    subjet_item: TMenuItem;
    stud_item: TMenuItem;
    grade_item: TMenuItem;
    report_item: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure teacher_itemClick(Sender: TObject);
    procedure subjet_itemClick(Sender: TObject);
    procedure stud_itemClick(Sender: TObject);
    procedure grade_itemClick(Sender: TObject);
    procedure report_itemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_main: TFrm_main;

implementation

uses Un_func, Un_dm, Un_teacher, Un_subject, Un_stud, Un_grade, Un_report;

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
  with main_Image do
  begin
    Stretch := True;
    AutoSize := True;
  end;
  LoadFormState(Self);
  LoadImageFromResource('BACKGROUND_IMAGE', main_Image);
end;

procedure TFrm_main.grade_itemClick(Sender: TObject);
begin
  try
    UpdateFormProperties('Frm_stud', '����� ������ � ������� �� ������',
      clBtnFace, 1024, 768);
    Frm_grade.ShowModal;
  except
    Frm_grade.Free;
    raise;
  end;
end;

procedure TFrm_main.report_itemClick(Sender: TObject);
begin
   try
    UpdateFormProperties('Frm_report', '����� ������ � �������',
      clBtnFace, 1024, 768);
    Frm_report.ShowModal;
  except
    Frm_report.Free;
    raise;
  end;
end;

procedure TFrm_main.stud_itemClick(Sender: TObject);
begin
  try
    UpdateFormProperties('Frm_stud', '����� ������ � ������� ��������',
      clBtnFace, 1024, 768);
    Frm_stud.ShowModal;
  except
    Frm_stud.Free;
    raise;
  end;
end;

procedure TFrm_main.subjet_itemClick(Sender: TObject);
begin
  try
    UpdateFormProperties('Frm_subject', '����� ������ � ������� ��������',
      clBtnFace, 1024, 768);
    Frm_subject.ShowModal;
  except
    Frm_subject.Free;
    raise;
  end;
end;

procedure TFrm_main.teacher_itemClick(Sender: TObject);
begin
   try
    UpdateFormProperties('Frm_teacher', '����� ������ � ������� �������������',
      clBtnFace, 1024, 768);
    Frm_teacher.ShowModal;
  except
    Frm_teacher.Free;
    raise;
  end;
end;

end.

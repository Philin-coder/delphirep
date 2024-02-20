unit ufrm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Menus,  Clipbrd;

type

  { TFrm2 }

  TFrm2 = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    PopupMenu1: TPopupMenu;
    procedure Button1Click(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);

  private

  public

  end;

var
  Frm2: TFrm2;

implementation

{$R *.lfm}

{ TFrm2 }



procedure TFrm2.MenuItem1Click(Sender: TObject);
begin
  LabeledEdit2.Text:=Clipboard.AsText;
end;

procedure TFrm2.FormCreate(Sender: TObject);
begin
  with Frm2  do
begin
  Width:=1024;
  Height:=768;
  Position:=poScreenCenter;
end;

end;

procedure TFrm2.Button1Click(Sender: TObject);
Var lst1,lst2:TStringList;
begin
  lst1:=TStringList.Create;
  lst2:=TStringList.Create;
  if(LabeledEdit1.Text=LabeledEdit2.Text)then
  begin
      ShowMessage('Файлы одинаковые');
      Exit;
  end
  else
  begin
      lst1.LoadFromFile(LabeledEdit1.Text);
      lst2.LoadFromFile(LabeledEdit2.Text);
      Memo1.Lines.Add(lst1.Text);
      Memo1.Lines.add(lst2.Text);
      with TStringList.Create do
begin
  Sorted:=True;
  Duplicates:=dupIgnore;
  AddStrings(lst1);
  if Count<>lst1.Count then
    Result:='Все-таки были дубликаты';
  AddStrings(lst2);
  if Count=Strings2.Count then
   Result:='Строки равны';
end;

  end;

end;


end.


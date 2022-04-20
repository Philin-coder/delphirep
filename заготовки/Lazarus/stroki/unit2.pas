unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Menus;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Panel1: TPanel;
    procedure MenuItem1Click(Sender: TObject);

  private

  public

  end;

var
  Form2: TForm2;

implementation
   uses Unit1;
{$R *.lfm}

   { TForm2 }

   procedure TForm2.MenuItem1Click(Sender: TObject);
   begin
     Form1.ShowModal;
   end;

   { TForm2 }



end.


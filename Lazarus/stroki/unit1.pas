unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SynHighlighterMulti, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    SaveDialog1: TSaveDialog;
    TreeView1: TTreeView;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);




  private

  public

  end;

var
  Form1: TForm1;


implementation

{$R *.lfm}
uses Unit2;
{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);

begin
  if SaveDialog1.Execute then
  begin
    Memo1.Lines.SaveToFile(SaveDialog1.FileName+'.txt');
    ShowMessage('имя файла'+SaveDialog1.filename+'.txt');
    TreeView1.Items.BeginUpdate;
    TreeView1.Items.AddChild(TreeView1.Items.Item[0], 'имя файла'+SaveDialog1.filename+'.txt');
    TreeView1.Items.EndUpdate;
    TreeView1.Selected;
  end;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  TreeView1.Items.Clear;
  TreeView1.Items.Add(nil,'адреса');
end;



end.


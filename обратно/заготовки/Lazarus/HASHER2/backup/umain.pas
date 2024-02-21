unit umain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  md5_hash;

type

  { TFmain }

  TFmain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Fmain: TFmain;

implementation

{$R *.lfm}

{ TFmain }

procedure TFmain.FormCreate(Sender: TObject);
begin
  fmain.Width:=1024;
  Fmain.Height:=768;
  Fmain.Position:=poScreenCenter;
  Fmain.Color:=clBlack;
  Fmain.Memo1.Text:='hello worldя';

end;

procedure TFmain.Button1Click(Sender: TObject);
begin
  Edit1.Clear;
//  edit1.Text:=md5UTF8(trim(memo1.Text));
end;

procedure TFmain.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  edit1.Text:=md5(trim(memo1.Text));
end;

end.


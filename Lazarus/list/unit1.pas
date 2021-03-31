unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);


  private

  public

  end;

var
  Form1: TForm1;
  type r=record
    name:string[30];
    sirname:string[30];
  end;
    var l:^r;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.Button1Click(Sender: TObject);
begin
new(l);
l^.name:='Иван';
l^.sirname:='Петров';
Memo1.Lines.Add(l^.name+' '+l^.sirname);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
func(a:String):String;
end;



end.


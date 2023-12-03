unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TFmain = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    procedure FormCreate(Sender: TObject);




  private


    { Private declarations }


  public


    { Public declarations }
  end;



var
  Fmain: TFmain;
implementation



{$R *.dfm}
procedure get_board(var x:Integer; var y:Integer; w:Integer; var h:Integer);
var bs:TBrushStyle;
begin

end;



procedure TFmain.FormCreate(Sender: TObject);
begin
Fmain.Width:=1024;
Fmain.Height:=768;
Fmain.Position:=poScreenCenter;
Fmain.Caption:='Chesssmaster';
end;

end.

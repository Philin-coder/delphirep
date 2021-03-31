unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    ComboBox1: TComboBox;
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses form;

{$R *.dfm}

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
if Form2.ComboBox1.ItemIndex=0 then
begin
Form2.Close;
ShowMessage('первый user');
Form1.Color:=clRed;
//ShowMessage('первый user пришел');
end;
if   Form2.ComboBox1.ItemIndex=1 then
begin
Form2.Close;
ShowMessage('второй user');
Form1.Color:=clBlue;
Form1.BitBtn1.Visible:=true;
end;

end;

end.

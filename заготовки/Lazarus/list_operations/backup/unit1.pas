unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    ApplicationProperties1: TApplicationProperties;
    BitBtn1: TBitBtn;
    TrayIcon1: TTrayIcon;
    procedure ApplicationProperties1Minimize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ApplicationProperties1Minimize(Sender: TObject);
begin
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
end;

procedure TForm1.TrayIcon1DblClick(Sender: TObject);
begin
end;

end.


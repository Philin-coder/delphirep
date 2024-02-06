unit umain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  ExtCtrls, StdCtrls;

type

  { TFmain }

  TFmain = class(TForm)
    Button1: TButton;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);


  private

  public

  end;

var
  Fmain: TFmain;

implementation

{$R *.lfm}

{ TFmain }

procedure TFmain.FormActivate(Sender: TObject);
begin
     with Fmain do
begin
  Width:=2048;
  Height:=1024;
  Position:=poScreenCenter;
end;



end;

procedure TFmain.MenuItem1Click(Sender: TObject);
begin
  Fspiral.ShowModal;
end;



procedure TFmain.Button1Click(Sender: TObject);
begin
  ShowMessage('First programm');
end;



end.


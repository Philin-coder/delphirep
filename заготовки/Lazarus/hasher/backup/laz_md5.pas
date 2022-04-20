unit laz_md5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs,md5_hash;

type

  { Tmd5_main }

  Tmd5_main = class(TForm)



  private

  public

  end;

var
  md5_main: Tmd5_main;

implementation

{$R *.lfm}

{ Tmd5_main }

procedure Tmd5_main.FormActivate(Sender: TObject);
begin

end;

procedure Tmd5_main.FormCreate(Sender: TObject);
begin
  md5_main.Width:=1024;
  md5_main.Height:=768;
  md5_main.Position:=poScreenCenter;
end;

procedure Tmd5_main.FormShow(Sender: TObject);
begin

end;

end.


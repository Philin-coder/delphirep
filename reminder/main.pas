unit main;

interface

uses
  Windows, Messages, SysUtils, Variants,Serv_f, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFmain = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;

implementation

uses Ulog, fadm_pass, logged_users;

{$R *.dfm}

end.

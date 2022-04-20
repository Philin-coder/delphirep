unit fdm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tdm }

  Tdm = class(TForm)
    DataSource1: TDataSource;
    SQLConnector1: TSQLConnector;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  dm: Tdm;

implementation
uses vid;

{$R *.lfm}

{ Tdm }

procedure Tdm.Button1Click(Sender: TObject);
begin
   ShowMessage(Utf8ToAnsi('hi'));
end;

end.


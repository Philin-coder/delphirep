unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mssqlconn, sqldb;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    MSSQLConnection2: TMSSQLConnection;
    SQLQuery1: TSQLQuery;
    procedure MSSQLConnection2AfterConnect(Sender: TObject);
  private

  public

  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

{ TDataModule1 }

procedure TDataModule1.MSSQLConnection2AfterConnect(Sender: TObject);
begin

end;

end.


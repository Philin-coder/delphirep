unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mssqlconn;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    MSSQLConnection2: TMSSQLConnection;
  private

  public

  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

end.


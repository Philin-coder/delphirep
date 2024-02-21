program normal_map;

{$APPTYPE CONSOLE}

uses
  SysUtils;

begin
{*
Materials.pas
//процедура позволяет создать карту рельефа с помощью фильтра Собеля и добавить прямоугольную рамку к ней
procedure TMaterialTexture.GenNormalMap
GLMultiPolygon.pas
//процедура генерации рельефа кромки для контура
procedure TGLContours.GenNormalMapEx


*}
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

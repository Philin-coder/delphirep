library mylib;

uses
  Windows;

function AddNumbers(num1, num2: Integer): Integer; stdcall;
asm
  xor eax,eax
  mov eax, num1
  add eax,  num2
 end;

exports
  AddNumbers;

begin
end.


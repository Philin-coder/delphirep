library mylib;


uses
  SysUtils,
  Classes;

{$R *.res}
    function addNumber(num1,num2:Integer):Boolean; stdcall;
    asm
  CMP EDX, 0
  JE @Error

  MOV EAX, [EAX]
  ADD EAX, [EDX]
  MOV ECX, [ECX]
  MOV [ECX], EAX

  MOV EAX, 1
  RET

@Error:
  XOR EAX, EAX
    end;
    exports addNumber;
begin
end.

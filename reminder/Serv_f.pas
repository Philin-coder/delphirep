﻿unit Serv_f;

interface

uses Windows, SysUtils,DateUtils,Dialogs,IniFiles,Graphics;

function md5UTF8 (buf: UTF8String): AnsiString;
function md5 (buf: AnsiString): AnsiString;
Procedure get_rnd_char(n:Integer);
function get_data(cur_d:TDateTime):string;
function transfer_pass(s:AnsiString):string;
procedure get_right_params();
procedure ini_creator(p_ini:string);
procedure ini_reader(p_ini:string);






implementation

uses fadm_pass, User_creator, logged_users, main, Uthrme_creator;



type
  tdata = array [0..15] of DWORD;
  tcur = array[0..3] of DWord;
  type mx=array[1..1000] of Byte;





var HEX: array[Word] of AnsiString;
var Ini : TIniFile;

function LRot32 (a, b: LongWord): LongWord;
asm
  mov  ecx, edx
  rol  eax, cl
end; {func LRot32}



procedure md5calculate(var A, B, C, D: DWord; var data: tdata; var CurrentHash: tcur);
begin
  CurrentHash[0] := $67452301;
  CurrentHash[1] := $efcdab89;
  CurrentHash[2] := $98badcfe;
  CurrentHash[3] := $10325476;

  A := CurrentHash[0];
  B := CurrentHash[1];
  C := CurrentHash[2];
  D := CurrentHash[3];

  A := B + LRot32 (A + (D xor (B and (C xor D))) + data[ 0] + $d76aa478, 7);
  D := A + LRot32 (D + (C xor (A and (B xor C))) + data[ 1] + $e8c7b756, 12);
  C := D + LRot32 (C + (B xor (D and (A xor B))) + data[ 2] + $242070db, 17);
  B := C + LRot32 (B + (A xor (C and (D xor A))) + data[ 3] + $c1bdceee, 22);
  A := B + LRot32 (A + (D xor (B and (C xor D))) + data[ 4] + $f57c0faf, 7);
  D := A + LRot32 (D + (C xor (A and (B xor C))) + data[ 5] + $4787c62a, 12);
  C := D + LRot32 (C + (B xor (D and (A xor B))) + data[ 6] + $a8304613, 17);
  B := C + LRot32 (B + (A xor (C and (D xor A))) + data[ 7] + $fd469501, 22);
  A := B + LRot32 (A + (D xor (B and (C xor D))) + data[ 8] + $698098d8, 7);
  D := A + LRot32 (D + (C xor (A and (B xor C))) + data[ 9] + $8b44f7af, 12);
  C := D + LRot32 (C + (B xor (D and (A xor B))) + data[10] + $ffff5bb1, 17);
  B := C + LRot32 (B + (A xor (C and (D xor A))) + data[11] + $895cd7be, 22);
  A := B + LRot32 (A + (D xor (B and (C xor D))) + data[12] + $6b901122, 7);
  D := A + LRot32 (D + (C xor (A and (B xor C))) + data[13] + $fd987193, 12);
  C := D + LRot32 (C + (B xor (D and (A xor B))) + data[14] + $a679438e, 17);
  B := C + LRot32 (B + (A xor (C and (D xor A))) + data[15] + $49b40821, 22);

  A := B + LRot32 (A + (C xor (D and (B xor C))) + data[ 1] + $f61e2562, 5);
  D := A + LRot32 (D + (B xor (C and (A xor B))) + data[ 6] + $c040b340, 9);
  C := D + LRot32 (C + (A xor (B and (D xor A))) + data[11] + $265e5a51, 14);
  B := C + LRot32 (B + (D xor (A and (C xor D))) + data[ 0] + $e9b6c7aa, 20);
  A := B + LRot32 (A + (C xor (D and (B xor C))) + data[ 5] + $d62f105d, 5);
  D := A + LRot32 (D + (B xor (C and (A xor B))) + data[10] + $02441453, 9);
  C := D + LRot32 (C + (A xor (B and (D xor A))) + data[15] + $d8a1e681, 14);
  B := C + LRot32 (B + (D xor (A and (C xor D))) + data[ 4] + $e7d3fbc8, 20);
  A := B + LRot32 (A + (C xor (D and (B xor C))) + data[ 9] + $21e1cde6, 5);
  D := A + LRot32 (D + (B xor (C and (A xor B))) + data[14] + $c33707d6, 9);
  C := D + LRot32 (C + (A xor (B and (D xor A))) + data[ 3] + $f4d50d87, 14);
  B := C + LRot32 (B + (D xor (A and (C xor D))) + data[ 8] + $455a14ed, 20);
  A := B + LRot32 (A + (C xor (D and (B xor C))) + data[13] + $a9e3e905, 5);
  D := A + LRot32 (D + (B xor (C and (A xor B))) + data[ 2] + $fcefa3f8, 9);
  C := D + LRot32 (C + (A xor (B and (D xor A))) + data[ 7] + $676f02d9, 14);
  B := C + LRot32 (B + (D xor (A and (C xor D))) + data[12] + $8d2a4c8a, 20);

  A := B + LRot32 (A + (B xor C xor D) + data[ 5] + $fffa3942, 4);
  D := A + LRot32 (D + (A xor B xor C) + data[ 8] + $8771f681, 11);
  C := D + LRot32 (C + (D xor A xor B) + data[11] + $6d9d6122, 16);
  B := C + LRot32 (B + (C xor D xor A) + data[14] + $fde5380c, 23);
  A := B + LRot32 (A + (B xor C xor D) + data[ 1] + $a4beea44, 4);
  D := A + LRot32 (D + (A xor B xor C) + data[ 4] + $4bdecfa9, 11);
  C := D + LRot32 (C + (D xor A xor B) + data[ 7] + $f6bb4b60, 16);
  B := C + LRot32 (B + (C xor D xor A) + data[10] + $bebfbc70, 23);
  A := B + LRot32 (A + (B xor C xor D) + data[13] + $289b7ec6, 4);
  D := A + LRot32 (D + (A xor B xor C) + data[ 0] + $eaa127fa, 11);
  C := D + LRot32 (C + (D xor A xor B) + data[ 3] + $d4ef3085, 16);
  B := C + LRot32 (B + (C xor D xor A) + data[ 6] + $04881d05, 23);
  A := B + LRot32 (A + (B xor C xor D) + data[ 9] + $d9d4d039, 4);
  D := A + LRot32 (D + (A xor B xor C) + data[12] + $e6db99e5, 11);
  C := D + LRot32 (C + (D xor A xor B) + data[15] + $1fa27cf8, 16);
  B := C + LRot32 (B + (C xor D xor A) + data[ 2] + $c4ac5665, 23);

  A := B + LRot32 (A + (C xor (B or (not D))) + data[ 0] + $f4292244, 6);
  D := A + LRot32 (D + (B xor (A or (not C))) + data[ 7] + $432aff97, 10);
  C := D + LRot32 (C + (A xor (D or (not B))) + data[14] + $ab9423a7, 15);
  B := C + LRot32 (B + (D xor (C or (not A))) + data[ 5] + $fc93a039, 21);
  A := B + LRot32 (A + (C xor (B or (not D))) + data[12] + $655b59c3, 6);
  D := A + LRot32 (D + (B xor (A or (not C))) + data[ 3] + $8f0ccc92, 10);
  C := D + LRot32 (C + (A xor (D or (not B))) + data[10] + $ffeff47d, 15);
  B := C + LRot32 (B + (D xor (C or (not A))) + data[ 1] + $85845dd1, 21);
  A := B + LRot32 (A + (C xor (B or (not D))) + data[ 8] + $6fa87e4f, 6);
  D := A + LRot32 (D + (B xor (A or (not C))) + data[15] + $fe2ce6e0, 10);
  C := D + LRot32 (C + (A xor (D or (not B))) + data[ 6] + $a3014314, 15);
  B := C + LRot32 (B + (D xor (C or (not A))) + data[13] + $4e0811a1, 21);
  A := B + LRot32 (A + (C xor (B or (not D))) + data[ 4] + $f7537e82, 6);
  D := A + LRot32 (D + (B xor (A or (not C))) + data[11] + $bd3af235, 10);
  C := D + LRot32 (C + (A xor (D or (not B))) + data[ 2] + $2ad7d2bb, 15);
  B := C + LRot32 (B + (D xor (C or (not A))) + data[ 9] + $eb86d391, 21);

  Inc (CurrentHash[0], A);
  Inc (CurrentHash[1], B);
  Inc (CurrentHash[2], C);
  Inc (CurrentHash[3], D);
end;

function md5 (buf: AnsiString): AnsiString;
type
  pint = ^Integer;
  tbyte = array [0..15] of byte;
  //tdata = array [0..15] of DWORD;
  pdata = ^tdata;
  pbyte = ^tbyte;
var
  i, Len: Integer;
  data: pdata;
  CurrentHash: tcur;
  P: array[0..7] of Word absolute CurrentHash;
  A, B, C, D: DWord;
begin
  Len := Length (buf);
  SetLength (buf, 64);
  buf[Len+1] := #$80;
  FillChar (buf[Len+2], 63 - Len, 0);
  pint (@buf[57])^ := Len * 8;

  data := addr (buf[1]);

  md5calculate(a,b,c,d,data^,CurrentHash);

  Result := HEX[P[0]];
  for i := 1 to 7 do
    Result := Concat (Result, HEX[P[i]]);
end; {func md5}

function md5UTF8 (buf: UTF8String): AnsiString;
type
  pint = ^Integer;
  tbyte = array [0..15] of byte;
  //tdata = array [0..15] of DWORD;
  pdata = ^tdata;
  pbyte = ^tbyte;
var
  i, Len: Integer;
  data: pdata;
  CurrentHash: tcur;
  P: array[0..7] of Word absolute CurrentHash;
  A, B, C, D: DWord;
begin
  {$IFDEF UNICODE}{$ELSE}
  buf:= UTF8ToAnsi(buf);
  {$EndIf}
  Len := Length (buf);
  SetLength (buf, 64);
  buf[Len+1] := #$80;
  FillChar (buf[Len+2], 63 - Len, 0);
  pint (@buf[57])^ := Len * 8;

  data := addr (buf[1]);

  md5calculate(a,b,c,d,data^,CurrentHash);

  Result := HEX[P[0]];
  for i := 1 to 7 do
    Result := Concat (Result, HEX[P[i]]);
end; {func md5}

Procedure get_rnd_char(n:Integer);
var x:mx;
var i:Integer;
begin
for I:=1 to n do
begin
Randomize;
x[i]:=Random(59)+64;
end;
for I := 1 to n do
begin
//if (x[i]>97)and (x[i]<122) then
//fmain.Form1.LabeledEdit1.Text:=fmain.Form1.LabeledEdit1.Text+' '+IntToStr(x[i]);
Fadm_passs.Edit1.Text:=Fadm_passs.Edit1.Text+' '+chr(x[i]);
//239 -80
end;
end;

function get_data(cur_d:TDateTime):string;
begin
  result:='Сегодня' +' '+DateToStr(Date);
end;

function transfer_pass(s:AnsiString):string;
begin
if (Fadm_passs.RadioButton1.Checked=true) then
if Fadm_passs.LabeledEdit1.Text<>'' then
begin
 begin
Result:=Fadm_passs.LabeledEdit2.Text;
s:=Fadm_passs.LabeledEdit3.Text;
if Fadm_passs.CheckBox1.Checked=true then
begin
user_creation.LabeledEdit2.Text:=s;
end
else if Fadm_passs.CheckBox1.Checked=false then
begin
user_creation.LabeledEdit2.Text:=Result;
end;


//ShowMessage(QuotedStr(Result)+#10#13+QuotedStr(s));
s:='';
end;
end
else if (Fadm_passs.RadioButton2.Checked=true)then
     begin
     if (Fadm_passs.LabeledEdit4.Text<>'') and  (Fadm_passs.Edit1.Text<>'')  then
      begin
       Result:=Fadm_passs.LabeledEdit4.Text;
       s:='';
       ShowMessage(Result);
      end;
     end
     else
     begin
       MessageDlg('введите символы для  формирования пароля',mtError,[mbOk], 0);
     end;

end;
procedure get_right_params();
begin
    Fadm_passs.GroupBox1.Enabled:=False;
    Fadm_passs.GroupBox1.Visible:=False;
    Fadm_passs.GroupBox2.Visible:=False;
    Fadm_passs.GroupBox2.Enabled:=False;
    Fadm_passs.LabeledEdit1.Text:='hello worldя';
    Fadm_passs.Image1.Visible:=True;
    Fadm_passs.Image1.AutoSize:=true;
    Fadm_passs.Image1.Stretch:=True;
    Fadm_passs.Image1.Picture.LoadFromFile('dog.jpg');
    Fadm_passs.BitBtn1.ShowHint:=True;
    Fadm_passs.ShowHint:=True;
    Fadm_passs.BitBtn1.Hint:='Запоинить понравившийся пароль';
    Fadm_passs.BitBtn2.Hint:='Создать пользователя ';
    ShowMessage(get_data(Now));


end;

procedure ini_creator(p_ini:string);
begin
  Ini:=nil;
  try
  Ini := TIniFile.Create(P_Ini);
  ini.WriteString('Color','cdval',ColorToString(Fmain.CD.Color));
  ini.WriteString('Form_font','ffont','Tahoma');
  ini.WriteInteger('Form_fomt_size','ffont_size',8);
  ini.Free;
  except
  ShowMessage('Не удается сохранить настройки в файл : '+Ini.FileName);
end;
end;

procedure ini_reader(p_ini:string);
begin
     if FileExists(P_ini) then
begin
  Ini := TIniFile.Create(p_ini);
  Fmain.Color:=StringToColor(ini.ReadString('Color','cdval','$FFFFFF'));
  Fmain.Font.Name:=ini.ReadString('Forn_font','ffont',fmain.fd.Font.Name);
  Fmain.Font.Size:=ini.ReadInteger('Form_fomt_size','ffont_size',Fmain.Fd.Font.Size);
  ini.Free;
end
  else
  begin
    ShowMessage('Файл не найден');
  end;
end;





var DEC, Tmp: Integer;
    LH: string;

initialization

for DEC := 0 to $ffff do
begin
  Tmp := DEC and $ff;
  LH := IntToHex (Tmp, 2);
  Tmp := DEC shr 8;
  HEX[DEC] := Concat (LH, IntToHex (Tmp, 2));
end; {for}


end.
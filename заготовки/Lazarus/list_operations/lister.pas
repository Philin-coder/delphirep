unit lister;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  (*Тип данных - определяет данные, которые будет содержать каждый элемент списка.*)
type  TData = record
    Name : String;
  end;
  (*Тип, описывающий элемент списка.*)
  TPElem = ^TElem;
  TElem = record
    Data : TData;
    PNext : TPElem;
    PPrev : TPElem;
  end;
  (*Тип, описывающий список.*)
  TList = record
    PFirst : TPElem;
    PLast : TPElem;
  end;

implementation

{$R *.lfm}

procedure ListFree(var aList : TList);
var
  PNext, PDel : TPElem;
begin
  if aList.PFirst = nil then Exit;

  PNext := aList.PFirst;
  while PNext <> nil do begin
    PDel := PNext;
    PNext := PNext^.PNext;
    Dispose(PDel);
  end;

  aList.PFirst := nil;
  aList.PLast := nil;
end;

procedure AddF(var aList : TList; const aPElem : TPElem);
begin
  if aPElem = nil then Exit;

  aPElem^.PNext := nil;
  aPElem^.PPrev := nil;
  if aList.PFirst = nil then begin
    aList.PFirst := aPElem;
    aList.PLast := aPElem;
  end else begin
    aPElem^.PNext := aList.PFirst;
    aList.PFirst^.PPrev := aPElem;
    aList.PFirst := aPElem;
  end;
end;
procedure AddL(var aList : TList; const aPElem : TPElem);
begin
  if aPElem = nil then Exit;

  aPElem^.PNext := nil;
  aPElem^.PPrev := nil;
  if aList.PFirst = nil then begin
    aList.PFirst := aPElem;
    aList.PLast := aPElem;
  end else begin
    aList.PLast^.PNext := aPElem;
    aPElem^.PPrev := aList.PLast;
    aList.PLast := aPElem;
  end;
end;

(*Вставка элемента в список.
Вставка производится перед элементом aPBase. Если aPBase = nil,
то вставка выполняется в начало списка.*)
procedure Ins(var aList : TList; const aPBase, aPElem : TPElem);
begin
  if aPElem = nil then Exit;

  if (aList.PFirst = nil) or (aPBase = nil) or (aPBase = aList.PFirst) then begin
    AddF(aList, aPElem);
  end else begin
    aPElem^.PPrev := aPBase^.PPrev;
    aPElem^.PNext := aPBase;
    aPBase^.PPrev := aPElem;
    aPElem^.PPrev^.PNext := aPElem;
  end;
end;
(*Возвращение указателя на элемент по его номеру в списке.
Если элемента с заданным номером не существует, то возвращается nil.*)
function GetByNum(const aList : TList; const aI : Longword) : TPElem;
var
  i : Longword;
  PNext : TPElem;
begin
  Result := nil;

  i := 1;
  PNext := aList.PFirst;
  while (i <= aI) and (PNext <> nil) do begin
    if i = aI then begin
      Result := PNext;
      Break;
    end;
    Inc(i);
    PNext := PNext^.PNext;
  end;
end;

(*Поиск элемента в списке по данным.
Если элемент не найден, то возвращается nil.*)
function FindElem(const aList : TList; const aData : TData) : TPElem;
var
  PNext : TPElem;
begin
  Result := nil;

  PNext := aList.PFirst;
  while PNext <> nil do begin
    if PNext^.Data.Name = aData.Name then begin
      Result := PNext;
      Break;
    end;
    PNext := PNext^.PNext;
  end;
end;
  (*Удаление элемента по указателю на него.*)
function DelByRef(var aList : TList; var aPElem : TPElem) : Boolean;
begin
  Result := False;
  if aPElem = nil then Exit;

  if aPElem = aList.PFirst then begin
    aList.PFirst := aPElem^.PNext;
    if aList.PFirst = nil then
      aList.PLast := nil
    else
      aList.PFirst^.PPrev := nil
    ;
  end else if aPElem = aList.PLast then begin
    aList.PLast := aPElem^.PPrev;
    if aList.PLast = nil then
      aList.PFirst := nil
    else
      aList.PLast^.PNext := nil
    ;
  end else begin
    aPElem^.PPrev^.PNext := aPElem^.PNext;
    aPElem^.PNext^.PPrev := aPElem^.PPrev;
  end;

  Dispose(aPElem);
  aPElem := nil;
  Result := True;
end;
(*Удаление элемента по его номеру.*)
function DelByNum(var aList : TList; const aI : Longword) : Boolean;
var
  PElem : TPElem;
begin
  PElem := GetByNum(aList, aI);
  Result := DelByRef(aList, PElem);
end;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  List:TList;
  PElem:TPElem;
  i:Integer;
begin
  //Инициализация списка.
    List.PFirst := nil;
    List.PLast := nil;
    //Создаём несколько элементов и помещаем их в список
  //через процедуру добавления в начало списка.
  for i := 1 to 5 do begin
    New(PElem);
    PElem^.Data.Name := 'AddF ' + IntToStr(i);
    AddL(List, PElem);
  end;

  //Создаём несколько элементов и помещаем их в список
  //через процедуру добавления в конец списка.
  for i := 1 to 5 do begin
    New(PElem);
    PElem^.Data.Name := 'AddL ' + IntToStr(i);
    AddL(List, PElem);
  end;

  //Показываем весь список в Мемо.
  Memo1.Lines.Add('Список:');
  PElem := List.PFirst;
  while PElem <> nil do begin
    Memo1.Lines.Add(PElem^.Data.Name);
    PElem := PElem^.PNext;
  end;

  //Удаляем 9 и 3 элементы.
  DelByNum(List, 9);
  DelByNum(List, 3);

  //Показываем весь список в Мемо.
  Memo1.Lines.Add('Список:');
  PElem := List.PFirst;
  while PElem <> nil do begin
    Memo1.Lines.Add(PElem^.Data.Name);
    PElem := PElem^.PNext;
  end;

  //Удаление списка из памяти.
  ListFree(List);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
end;

(*Очистка Мемо.*)



end.


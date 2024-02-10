unit umain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  ExtCtrls, StdCtrls, Grids, uspiral,windows;

type

  { TFmain }


  TFmain = class(TForm)
    ApplicationProperties1: TApplicationProperties;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    Memo2: TMemo;
    MenuItem1: TMenuItem;
    PageControl1: TPageControl;
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TrayIcon1: TTrayIcon;
    procedure ApplicationProperties1Minimize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);


  private

  public

  end;

var
  Fmain: TFmain;
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
    var
    i:Integer;
  x,a:real;
  b:String;
  h:Array[1..5] of real=(1, 0.2, 0.1, 0.01, 0.001);
  p1,p2,p3: array [1..5] of real;




implementation

{$R *.lfm}


{ TFmain }
function y(x:Real):real;
begin
  y:=ln((2*x*x+x-3)/(3*x*x+15*x+12));
end;


procedure ListFree(var aList : TList);
var
  PNext, PDel : TPElem;
begin
  if aList.PFirst = nil then Exit;

  PNext := aList.PFirst;
  while PNext <> nil do
begin
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



procedure TFmain.FormActivate(Sender: TObject);
begin
     with Fmain do
begin
  Width:=2048;
  Height:=1024;
  Position:=poScreenCenter;
end;



end;

procedure TFmain.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0,0]:='h';
  StringGrid1.Cells[0,1]:='p1';
  StringGrid1.Cells[0,2]:='p2';
  StringGrid1.Cells[0,3]:='p2';
  StringGrid1.Cells[1,0]:='1';
  StringGrid1.Cells[2,0]:='0.2';
  StringGrid1.Cells[3,0]:='0.1';
  StringGrid1.Cells[4,0]:='0.01';
  StringGrid1.Cells[5,0]:='0.001';

end;

procedure TFmain.MenuItem1Click(Sender: TObject);
begin
  Fspiral.ShowModal;
end;

procedure TFmain.TrayIcon1DblClick(Sender: TObject);
begin
  TrayIcon1.ShowBalloonHint;
ShowWindow(Handle,SW_RESTORE);
SetForegroundWindow(Handle);
TrayIcon1.Visible:=False;
end;



procedure TFmain.Button1Click(Sender: TObject);
begin
  ShowMessage('First programm');
end;

procedure TFmain.ApplicationProperties1Minimize(Sender: TObject);
begin
  TrayIcon1.visible:=true;
//Убираем с панели задач
 ShowWindow(Handle,SW_HIDE);  // Скрываем программу
   ShowWindow(Application.Handle,SW_HIDE);  // Скрываем кнопку с TaskBar'а
SetWindowLong(Application.Handle, GWL_EXSTYLE,
GetWindowLong(Application.Handle, GWL_EXSTYLE) or (not WS_EX_APPWINDOW));
end;

procedure TFmain.Button2Click(Sender: TObject);
var xn:Integer;
var xk:Integer;
var x:Integer;
var y:real;
  var i:Integer;
begin
x:=0;
xn:=StrToInt(Edit1.Text);
xk:=StrToInt(Edit2.Text);
Memo1.Lines.Clear;
for i:=xn to xk do
begin
  y:=77*Cos(Sqr(x)+1);
  Memo1.Lines.Add(FloatToStr(y));

end;

end;

procedure TFmain.Button3Click(Sender: TObject);
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
Memo2.Lines.Add('Список:');
PElem := List.PFirst;
while PElem <> nil do begin
  Memo2.Lines.Add(PElem^.Data.Name);
  PElem := PElem^.PNext;
end;

  //Удаляем 9 и 3 элементы.
  DelByNum(List, 9);
  DelByNum(List, 3);
    //Показываем весь список в Мемо.
  Memo2.Lines.Add('Список:');
  PElem := List.PFirst;
  while PElem <> nil do begin
    Memo2.Lines.Add(PElem^.Data.Name);
    PElem := PElem^.PNext;
  end;
  //Удаление списка из памяти.
  ListFree(List);
end;


procedure TFmain.Button4Click(Sender: TObject);
begin
  Memo2.Clear;
end;

procedure TFmain.Button5Click(Sender: TObject);
begin
  TrayIcon1.visible:=true; // делаем значок в трее видимым
trayicon1.balloontitle:=('Текст 1');
trayicon1.balloonhint:=('Текст 2');
trayicon1.showballoonHint;// показываем наше уведомление
end;

procedure TFmain.Button6Click(Sender: TObject);
begin
  x:=5; //начало
  for i:=1 to 5 do
  begin
  p1[i]:=(y(x+h[i])-y(x))/h[i];// btnjls счета
    p2[i]:=(y(x)-y(x-h[i]))/h[i];
    p3[i]:=(y(x+h[i])-y(x-h[i]))/(2*h[i]);
end;
  for i:=1 to 5 do
  begin
    a:=p1[i];
    str(a:4:4,b);
     StringGrid1.Cells[i,1]:=b;
      a:=p2[i];
   str(a:4:4,b);
   StringGrid1.Cells[i,2]:=b;
   a:=p3[i];
   str(a:4:4,b);
   StringGrid1.Cells[i,3]:=b;
   end;

  end;
end;



end.


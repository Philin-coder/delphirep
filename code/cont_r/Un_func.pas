unit Un_func;

interface
uses
dateUtils,
sysUtils,
Controls,
Classes,
Graphics,
Dialogs,
Forms,
StdCtrls,
IniFiles,
ComCtrls,
DBCtrls,
Windows,
ExtCtrls;

function  DateToStr_(Dat : TDate): String;
function  CommaPoint (X: String) : String;
function  FindFormByName(const AName: string): TForm;
procedure SaveFormState(AForm: TForm);
procedure LoadFormState(AForm: TForm);
procedure UpdateFormProperties(const FormName: string;
  NewCaption: string = '';
  NewColor: TColor = clNone;
  NewWidth: Integer = -1;
  NewHeight: Integer = -1);
 procedure UniformizeComponentSizes(AComponent: TComponent; AWidth, AHeight:
 Integer; AColor: TColor; AFontName: string; AFontSize: Integer);
 procedure SaveConnectionStringToFile(const FileName, ConnectionString: string);
 function min3(a, b, c: integer): integer;
 function LeveDist(s, t: string): integer;
 function levi_checker(Str_one,str_two:string):Boolean;
implementation


function    CommaPoint (X: String) : String;
var iii : Integer;
begin
 iii:=pos(',',X) ;
 if iii<>0 then
 Result:=copy(X,1,iii-1)+'.'+copy(X,iii+1,5)
 else
 Result:=x;
end;

function DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;

function FindFormByName(const AName: string): TForm;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to Screen.FormCount - 1 do
  begin
    if SameText(Screen.Forms[i].Name, AName) then
    begin
      Result := Screen.Forms[i];
      Break;
    end;
  end;
end;

procedure UpdateFormProperties(const FormName: string;
  NewCaption: string;
  NewColor: TColor;
  NewWidth: Integer;
  NewHeight: Integer);
var
  Form: TForm;
          var l:Integer;
          var b:Integer;
          var d:Integer;
begin
  Form := FindFormByName(FormName);
  if not Assigned(Form) then
  begin
    ShowMessageFmt('����� "%s" �� �������!', [FormName]);
    Exit;
  end;

   with Form do
  begin
    if NewCaption <> '' then
      Caption := NewCaption;

    if NewColor <> clNone then
      Color := NewColor;

    if NewWidth > 0 then
      Width := NewWidth;

    if NewHeight > 0 then
      Height := NewHeight;
      form.Position:=poScreenCenter;
      for l := 0 to ComponentCount - 1 do
      begin
        if (Components[l] is TLabeledEdit ) then
        begin
          (Components[l] as TLabeledEdit).Clear;
        end;
  for b := 0 to ComponentCount - 1 do
  begin
    if (Components[b] is TButton) then
    begin
      (Components[b] as TButton).Anchors:=[akLeft,akRight];
    end;
      for d := 0 to ComponentCount - 1 do
  begin
    if (Components[d] is TDateTimePicker ) then
    begin
      (Components[b] as TDateTimePicker).Date:=Now;
    end;

  end;
      end;
    end;


  end;
end;
  procedure SaveFormState(AForm: TForm);
var
  IniFile: TIniFile;
  FileName: string;
begin

  FileName := ChangeFileExt(Application.ExeName, '.ini');

  IniFile := TIniFile.Create(FileName);
  try
    IniFile.WriteInteger(AForm.Name, 'Left', AForm.Left);
    IniFile.WriteInteger(AForm.Name, 'Top', AForm.Top);
    IniFile.WriteInteger(AForm.Name, 'Width', AForm.Width);
    IniFile.WriteInteger(AForm.Name, 'Height', AForm.Height);
  finally
    IniFile.Free;
  end;
end;

procedure LoadFormState(AForm: TForm);
var
  IniFile: TIniFile;
  FileName: string;
begin
  FileName := ChangeFileExt(Application.ExeName, '.ini');
  if not FileExists(FileName) then Exit;
  IniFile := TIniFile.Create(FileName);
  try
    AForm.Left := IniFile.ReadInteger(AForm.Name, 'Left', AForm.Left);
    AForm.Top := IniFile.ReadInteger(AForm.Name, 'Top', AForm.Top);
    AForm.Width := IniFile.ReadInteger(AForm.Name, 'Width', AForm.Width);
    AForm.Height := IniFile.ReadInteger(AForm.Name, 'Height', AForm.Height);
  finally
    IniFile.Free;
  end;
end;
 procedure UniformizeComponentSizes(AComponent: TComponent; AWidth,
 AHeight: Integer; AColor: TColor; AFontName: string; AFontSize: Integer);
var
  i: Integer;
  Control: TControl;
begin
  if AComponent is TControl then
  begin
    Control := TControl(AComponent);
    if Control is TLabeledEdit then
    begin
      TLabeledEdit(Control).Width := AWidth;
      TLabeledEdit(Control).Height := AHeight;
      TLabeledEdit(Control).Color := AColor;
      TLabeledEdit(Control).Font.Name := AFontName;
      TLabeledEdit(Control).Font.Size := AFontSize;
    end
    else if Control is TEdit then
    begin
      TEdit(Control).Width := AWidth;
      TEdit(Control).Height := AHeight;
      TEdit(Control).Color := AColor;
      TEdit(Control).Font.Name := AFontName;
      TEdit(Control).Font.Size := AFontSize;
    end
    else if Control is TDBLookupComboBox then
    begin
      TDBLookupComboBox(Control).Width := AWidth;
      TDBLookupComboBox(Control).Height := AHeight;
      TDBLookupComboBox(Control).Color := AColor;
      TDBLookupComboBox(Control).Font.Name := AFontName;
      TDBLookupComboBox(Control).Font.Size := AFontSize;
    end;
  end;
  if AComponent is TWinControl then
  begin
    for i := 0 to TWinControl(AComponent).ControlCount - 1 do
    begin
      UniformizeComponentSizes(TWinControl(AComponent).Controls[i], AWidth,
      AHeight, AColor, AFontName, AFontSize);
    end;
  end;
end;

procedure SaveConnectionStringToFile(const FileName, ConnectionString: string);
var
  FileStream: TextFile;
begin
  AssignFile(FileStream, FileName);
  try
    Rewrite(FileStream);
    Writeln(FileStream, ConnectionString);
  finally
    CloseFile(FileStream);
  end;
end;
const
 cuthalf = 100; // ���������, �������������� ����. �����
  // �������������� �����

var
  buf: array[0..((cuthalf * 2) - 1)] of integer; // ������� �����, ��������
  // �������, ��������������
  // � ��������

function min3(a, b, c: integer): integer;
begin
  Result := a;
  if b < Result then
    Result := b;
  if c < Result then
    Result := c;
end;

// ���������� ������� � �������� ������������� �������� � ����� ���������:
// ������� �� �������� �������� ����������� �������, ����� ��������
// ����� ��������� ������������ ����� �����
// ��� ������� ��� 1) �������� ������ � �� ��������� � �����������������
// 2) ��������� �������������� (� ���� ������� ��������
// � ����������� onfilterRecord)
// ����� �������, � ���������� ���������� ������ ������������ ������
// ��� ��������� ������ �������, ������� �������� ������� ������
// �������� �������� ����� (�� i)... ��� ����������� ����, ����� �� �������
// ������ �������� "������ �������", ������ ���������� flip
// �. �. ��� flip = false ������ �������� ������ �������� �������������
// �������, � ������ - ���������; ��� flip = true ��������,
// ������ �������� - ��������� ������, ������ �������� - �������������

function LeveDist(s, t: string): integer;
var
  i, j, m, n: integer;
  cost: integer;
  flip: boolean;
begin
  s := copy(s, 1, cuthalf - 1);
  t := copy(t, 1, cuthalf - 1);
  m := length(s);
  n := length(t);
  if m = 0 then
    Result := n
  else if n = 0 then
    Result := m
  else
  begin
    flip := false;
    for i := 0 to n do
      buf[i] := i;
    for i := 1 to m do
    begin
      if flip then
        buf[0] := i
      else
        buf[cuthalf] := i;
      for j := 1 to n do
      begin
        if s[i] = t[j] then
          cost := 0
        else
          cost := 1;
        if flip then
          buf[j] := min3((buf[cuthalf + j] + 1),
            (buf[j - 1] + 1),
            (buf[cuthalf + j - 1] + cost))
        else
          buf[cuthalf + j] := min3((buf[j] + 1),
            (buf[cuthalf + j - 1] + 1),
            (buf[j - 1] + cost));
      end;
      flip := not flip;
    end;
    if flip then
      Result := buf[cuthalf + n]
    else
      Result := buf[n];
  end;
end;
function levi_checker(Str_one,str_two:string):Boolean;
begin
 if (Trim(Str_one) = '') or (Trim(Str_two) = '') then
  begin
    Result := False;
    Exit;
  end;
  if LeveDist(Str_one, Str_two) = 0 then
    Result := True
  else
    Result := False;
end;

end.

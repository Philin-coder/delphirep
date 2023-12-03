unit bat_maker;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,TypInfo;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    sa: TLabeledEdit;
    SD: TSaveDialog;
    RadioButton1: TRadioButton;
    Button2: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure res_creator(Sender:TObject);
    procedure memo_filler(sender:TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure text_exchanger(sender:TObject);
    function us_case(str:string):string;
    procedure ext_gen(sender:TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
var
  lst:TStringList;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var buf:String;
begin
  buf:='';
  try
    with sd,sa, Memo1 do
    begin
    Title:='place yor bat';
    FileName:=sa.Text;
    InitialDir:=GetCurrentDir;
    filter:= 'Bat file|*.bat|';
    DefaultExt:='bat';
    FilterIndex:=1;
    if Text<>'' then
  begin
    if Execute then
    begin
    buf:='';
    buf:=Lines[0];
    Clear;
    Lines[0]:=buf+' '+sa.Text+' '+'rc';
    Lines.SaveToFile(FileName);
    MessageDlg('Программку можно закрыть',mtInformation,[mbYes],0);
    sa.Clear;
    sa.Free;
    sd.Free;
    end;
  end
  else
  begin
        MessageDlg('Проверьте поля ввода', mtInformation,[mbOK],0);
  end;
  end;
  except on E: Exception do
  begin
    MessageDlg('Проверьте поля ввода', mtInformation,[mbOK],0);
    exit;
  end;

  end;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  //memo_filler(Self);
  //text_exchanger(self);
  //us_case('ico'); // получение типа файла по расширению

end;




procedure TForm1.ext_gen(sender: TObject);
var i:Integer;
var ts,r:string;

begin
  with GroupBox1 do
  for I := 0 to ControlCount - 1 do
    begin
      if (Controls[i])is TLabeledEdit then
      begin
      ts:=(Controls[i] as TLabeledEdit).Text;
      (Controls[i] as TLabeledEdit).Text:=ts+' '+'test_ftype'+' '+'test_filename';
      r:=Copy(ts,Pos('_',ts)+1,3);// расширения

    end;
    end;
end;


procedure TForm1.FormActivate(Sender: TObject);
begin
with Form1 do
begin
  Caption:='single form';
  Width:=1024;
  Height:=768;
  sa.SetFocus;
  RadioButton1.Checked:=False;
  end;
end;
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
  var i:Integer;
begin
  i:=0;
  while GroupBox1.ComponentCount>0 do
begin
  GroupBox1.Components[i].Free;
end;
  while Panel1.ComponentCount>0 do
begin
  Panel1.Components[i].Free;
end;
  FreeAndNil(lst);
end;






procedure TForm1.memo_filler(sender: TObject);
  var i:Integer;
  var ls:TStringList;
begin
  ls:=TStringList.Create;
try
with ls, GroupBox1 do
begin
  for i := 0 to GroupBox1.ControlCount - 1 do
  begin
    if (Controls[i]) is TLabeledEdit then
    begin
      ls.Append((Controls[i] as TLabeledEdit).Text);
      ls.Duplicates:=dupIgnore;
     end;
  end;
  Memo1.Lines.Assign(ls);
end;
finally
  FreeAndNil(ls);
end;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
var i:Integer;
begin
  if RadioButton1.Checked=True then
begin
  Memo1.Clear;
  sa.Clear;
  sa.SetFocus;
Button1.Enabled:=False;
begin
with TButton.Create(self) do
    begin
      Parent:=Panel1;
      name:='res_creator_btn'+IntToStr(Form1.ComponentCount);
      Left:=560;
      top:=8;
      Height:=27;
      Width:=100;
      Caption:='Добавить ресурс';
      OnClick:=res_creator;
    end;
      with GroupBox1 do
      begin
      for I := 0 to ControlCount - 1 do
      begin
      if Controls[i] is TLabeledEdit then
      begin
        //ntrols[i] as TLabeledEdit).OnChange:=event_test;
      end;
      end;
      end;
    end;
end;
end;

procedure TForm1.res_creator(Sender: TObject);
begin
if Sender is TButton then
begin
  GroupBox1.Height:=GroupBox1.Height+sa.Height;
  with TLabeledEdit.Create(GroupBox1)  do
  begin
    GroupBox1.Height:=GroupBox1.Height+ GroupBox1.Height;
    Parent:=GroupBox1;
    //top:=(10+sa.Top*2);
    top:=GroupBox1.Height div 2+10;
    Width:=sa.Width;
    EditLabel.Caption:=sa.EditLabel.Caption;
    Anchors:=[akLeft,akTop,akRight];
    name:='res_field'+IntToStr(GroupBox1.ComponentCount);
    Text:='';
    GroupBox1.Height:=(GroupBox1.Height+sa.Height+50) div 2;
  end;
end;
//ShowMessage(TButton(Sender).Caption);

end;

procedure TForm1.text_exchanger(sender: TObject);
  var i:Integer;
  var ts:String;
  var r:String;
begin
  ts:='';
  r:='';
  with GroupBox1 do
  for I := 0 to ControlCount - 1 do
    begin
      if (Controls[i])is TLabeledEdit then
      begin
      ts:=(Controls[i] as TLabeledEdit).Text;
      (Controls[i] as TLabeledEdit).Text:=ts+' '+'test_ftype'+' '+'test_filename';
      r:=Copy(ts,Pos('_',ts)+1,3);// расширения
      us_case(QuotedStr(r));
      end;

      ts:='';
      r:='';

    end;
end;
Type TStringSet=(bmp,ico,cur,ani,jpg, wav,txt);
function TForm1.us_case(str: string):string;
  var strval:TStringSet;
begin
strval:=TStringSet(GetEnumValue(TypeInfo(TStringSet), str));  // генерация групп файлов
case strval of
  bmp:
  begin
    Result:='BITMAP';
    ShowMessage(Result);
  end;
  ico:
  begin
      Result:='ICON';
      ShowMessage(Result);
  end;
  cur:
  begin
    Result:='CURSOR';
    ShowMessage(Result);
  end;
  ani:
  begin
   Result:='ANICURSOR';
    ShowMessage(Result);
  end;

  jpg:
  begin
    Result:='JPEG';
    ShowMessage(Result);
  end;
  wav:
  begin
    Result:='WAVE';
    ShowMessage(Result);
  end;
  txt:
  begin
  Result:='TEXT';
  ShowMessage(Result);
  end;
end;   //case

end;

end.

unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TFmain = class(TForm)
    GroupBox1: TGroupBox;
    OD1: TOpenDialog;
    XMLDocument1: TXMLDocument;
    Memo1: TMemo;
    GroupBox3: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    SD1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;

implementation

{$R *.dfm}

procedure TFmain.Button1Click(Sender: TObject);
var
S:AnsiString;
Ws:WideString;
fs:TFileStream;
Od:TOpenDialog;
begin
od:=od1;
if OD.InitialDir='' then od.InitialDir:=ExtractFilePath(ParamStr(0));
if not Od.Execute then Exit;
if not FileExists(od.FileName) then begin
  MessageBox(0, 'Файл с заданным именем не найден. Действие отменено.'
      ,'Файл не найден!', MB_OK + MB_ICONWARNING + MB_APPLMODAL);
end;
XMLDocument1.LoadFromFile(OD1.FileName);
XMLDocument1.Options:=XMLDocument1.Options-[doNodeAutoCreate,doAutoSave]+[doNodeAutoIndent,doAttrNull];
XMLDocument1.NodeIndentStr:=' ';
XMLDocument1.Active:=true;
fs:=TFileStream.Create(od.FileName,fmOpenRead, fmShareDenyWrite);
try
  if XMLDocument1.Encoding='Utf-8' then
  begin
    SetLength(s,fs.Size);
    fs.Read(s[1],fs.Size);
    Memo1.Text:=Utf8ToAnsi(s);
  end
    else if XMLDocument1.Encoding='Utf-16' then
    begin
    SetLength(ws,fs.Size div 2);    
    fs.Read(ws[1],fs.Size);  
    Memo1.Text:=WideCharLenToString(pwidechar(ws),Length(ws));
    end
    else
    begin
      SetLength(s,fs.Size);
      fs.Read(s[1],fs.Size);
      Memo1.Text:=s;
    end;
         
    

finally
      FreeAndNil(fs);
end;
end;

procedure TFmain.Button2Click(Sender: TObject);
var sd:TSaveDialog;
res:Integer;
begin
sd:=SD1;
if sd.InitialDir='' then
Sd.InitialDir := ExtractFilePath( ParamStr(0) );
  if not Sd.Execute then Exit;
  if FileExists(Sd.FileName) then begin
    Res := MessageBox(0, 'Файл с заданным именем уже существует. Перезаписать?'
      ,'Перезаписать?', MB_YESNO + MB_ICONQUESTION + MB_APPLMODAL);
    if Res <> IDYES then
      Exit;
  end;
  XMLDocument1.SaveToFile(Sd.FileName+'.xls');
  ShowMessage('файл сохранен');

end;

end.

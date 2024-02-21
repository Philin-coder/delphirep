unit Uthrme_creator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,IniFiles, Buttons;

type
  TFtheme_creator = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    SpeedButton1: TSpeedButton;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ftheme_creator: TFtheme_creator;



implementation

uses main,Serv_f;

{$R *.dfm}

procedure TFtheme_creator.Button1Click(Sender: TObject);
begin
ini_reader(ExtractFileDir(Application.ExeName)+'\settings.ini');

end;

procedure TFtheme_creator.CheckBox1Click(Sender: TObject);
begin
Fmain.CD.Execute;
if CheckBox1.Checked then
  begin
  ini_creator(ExtractFileDir(Application.ExeName)+'\settings.ini');
  end
  else
  begin
    MessageDlg('Параметр для Сохраненмия не выбран',mtInformation,[mbOK],0);
  end;
end;




procedure TFtheme_creator.CheckBox2Click(Sender: TObject);
begin
if Fmain.Fd.Execute then Fmain.Font.Name:=Fmain.fd.Font.Name;
end;

procedure TFtheme_creator.CheckBox3Click(Sender: TObject);
begin
if Fmain.Fd.Execute then Fmain.Font.Size:=Fmain.fd.Font.Size;
end;

procedure TFtheme_creator.SpeedButton1Click(Sender: TObject);
begin
ShowMessage(QuotedStr(Fmain.Font.Name));
end;

end.

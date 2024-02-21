unit main;

interface

uses
  Windows, Messages, SysUtils, Variants,Serv_f, Classes, Graphics, Controls, Forms,
  Dialogs,IniFiles, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtDlgs;

type
  TFmain = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RichEdit1: TRichEdit;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    GroupBox3: TGroupBox;
    Button1: TButton;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    Fd: TFontDialog;
    SD: TSaveTextFileDialog;
    OD: TOpenTextFileDialog;
    CD: TColorDialog;
    procedure FormActivate(Sender: TObject);
    procedure Button1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;

implementation

uses Ulog, fadm_pass, logged_users, Uthrme_creator;

{$R *.dfm}

procedure TFmain.Button1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=32) then Ftheme_creator.ShowModal ;
end;

procedure TFmain.FormActivate(Sender: TObject);
begin

Fmain.Width:=1024;
Fmain.Height:=768;
Fmain.Position:=poScreenCenter;
Fmain.Caption:='Главная форма пользователя'+' '+flogged_users.ComboBox1.Text;
RichEdit1.Clear;
DateTimePicker1.Date:=Now;
end;

end.

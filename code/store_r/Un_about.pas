unit Un_about;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,jpeg, StdCtrls, ExtCtrls, ComCtrls,DateUtils;

type
  TFrm_about = class(TForm)
    mainBox: TGroupBox;
    btnBox: TGroupBox;
    leftBox: TGroupBox;
    rightBox: TGroupBox;
    TimePanel: TFlowPanel;
    mTimer: TTimer;
    closeBtn: TButton;
    RERight: TRichEdit;
    logobox: TGroupBox;
    logo_Image: TImage;
    repanel: TPanel;
    REleft: TRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mTimerTimer(Sender: TObject);
    procedure closeBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_about: TFrm_about;

implementation

uses Un_func, Un_hlp;

{$R *.dfm}

procedure TFrm_about.closeBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_about.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  mTimer.Enabled:=False;
end;

procedure TFrm_about.FormCreate(Sender: TObject);
begin
Frm_about.KeyPreview:=true;
 Frm_about.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
 leftBox.Width:=(mainBox.Width)div 2;
 rightBox.Width:=(mainBox.Width)div 2;
 TimePanel.Font.Size:=20;
 with logo_image do
 begin
    AutoSize:=true;
    Stretch:=True;
 end;
  logoBox.Margins.Left := 0;
  logoBox.Margins.Right := 0;
  logoBox.Margins.Top := 0;
  logoBox.Margins.Bottom := 0;
  logoBox.Align := alTop;
 TimePanel.Align := alTop;
  TimePanel.Margins.Top := 0;
  TimePanel.Margins.Bottom := 0;
  logoBox.Align := alTop;
  logoBox.Margins.Top := 0;
  logoBox.Margins.Bottom := 0;
  LoadImageFromResource('LG_IMAGE',logo_Image);
  LoadTextFromResource('MYTEXT', REleft);
  FormatRichText(
    REleft,       // Компонент TRichEdit
    12,              
    'Arial',         
    clBlue,          
    True,            // Включение маркеров
    True,
    ssVertical             // Установка ReadOnly = True
  );
    LoadTextFromResource('PROGTEXT', RERight);
  FormatRichText(
    RERight,       // Компонент TRichEdit
    12,              
    'Arial',         
    clGreen,          
    True,            // Включение маркеров
    True,             // Установка ReadOnly = True
     ssVertical
  );
end;

procedure TFrm_about.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=112) then
begin
 try
UpdateFormProperties('Frm_help', 'Форма работы со справкой',
clBtnFace, 1024, 768);
Frm_help.ShowModal;
except
Frm_help.Free;
raise;
end;

end;
end;

procedure TFrm_about.FormResize(Sender: TObject);
begin
    leftBox.Width := mainBox.Width div 2;
    rightBox.Width := mainBox.Width div 2;
    leftBox.Align := alLeft;
    rightBox.Align := alClient;
    logoBox.Align := alTop;
end;

procedure TFrm_about.FormShow(Sender: TObject);
begin
 mTimer.Enabled:=True;
end;

procedure TFrm_about.mTimerTimer(Sender: TObject);
begin
  TimePanel.Caption:=DateTimeToStr(Now);
end;

end.

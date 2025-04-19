unit Un_hlp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFrm_help = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_help: TFrm_help;

implementation

uses Un_about, Un_func;

{$R *.dfm}

procedure TFrm_help.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SaveFormState(Self);
end;

procedure TFrm_help.FormCreate(Sender: TObject);
begin
 Frm_help.KeyPreview:=True;
 frm_help.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
end;

procedure TFrm_help.FormKeyUp(Sender: TObject; var Key: Word;
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

end.

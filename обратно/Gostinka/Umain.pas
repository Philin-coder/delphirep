unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls,jpeg;

type
  TFmain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Image1: TImage;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;

implementation

uses ureg, Uadmn, UUsl, Unom, Udog, Uopl, Ureport;

{$R *.dfm}

procedure TFmain.FormShow(Sender: TObject);
begin
//Freg.ShowModal;
Image1.Picture.LoadFromFile('1.jpg');

end;

procedure TFmain.N2Click(Sender: TObject);
begin
Freport.ShowModal;
end;

procedure TFmain.N3Click(Sender: TObject);
begin
Fadmin.ShowModal;
end;

procedure TFmain.N4Click(Sender: TObject);
begin
fusl.ShowModal;
end;

procedure TFmain.N5Click(Sender: TObject);
begin
Close;
end;

procedure TFmain.N6Click(Sender: TObject);
begin
Fnom.ShowModal;
end;

procedure TFmain.N7Click(Sender: TObject);
begin
Fdog.ShowModal;
end;

procedure TFmain.N8Click(Sender: TObject);
begin
Fopl.ShowModal;
end;

end.

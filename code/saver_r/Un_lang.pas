unit Un_lang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFrm_lang = class(TForm)
    langPC: TPageControl;
    selTab: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet1: TTabSheet;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_lang: TFrm_lang;

implementation

{$R *.dfm}

end.

unit Un_autorize;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,adodb, StdCtrls, ExtCtrls;

type
  TFrm_autor = class(TForm)
    Authot_inp_Box: TGroupBox;
    author_btn_Box: TGroupBox;
    autorlogindEdit: TLabeledEdit;
    autorpassEdit: TLabeledEdit;
    enter_btn: TButton;
    main_Image: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure enter_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_autor: TFrm_autor;

implementation

uses Un_dm, Un_func;

{$R *.dfm}

procedure TFrm_autor.enter_btnClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_autor.FormActivate(Sender: TObject);
begin
  dm.userQuery.Open;
end;

procedure TFrm_autor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(Self);
  CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_autor.FormCreate(Sender: TObject);
begin
   Frm_autor.KeyPreview:=true;
  Frm_autor.ShowHint:=true;
  UniformizeButtonsSize(Self,  273, 25);
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
   UniformizeDBLookupListBox(Self, 'Arial', 10, clBlack, clWhite);
  LoadFormState(Self);
end;

end.

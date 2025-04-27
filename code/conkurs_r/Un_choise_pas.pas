unit Un_choise_pas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,adodb,db, ComCtrls, ExtCtrls;

type
  TFrm_cript_choise = class(TForm)
    cript_inp_box: TGroupBox;
    oldpasBox: TGroupBox;
    aldpasslbl: TLabel;
    pass_choiche_lbl: TStaticText;
    passKindCombo: TComboBox;
    cryortPC: TPageControl;
    RandombaseTab: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    rb_input_box: TGroupBox;
    rnd_base_out_pass: TLabeledEdit;
    rnd_base_sym_amoount_inp: TLabeledEdit;
    rnd_base_grader: TUpDown;
    rnd_base_btn_box: TGroupBox;
    rnd_base_init_Btn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure passKindComboChange(Sender: TObject);
    procedure cryortPCChange(Sender: TObject);
    procedure rnd_base_init_BtnClick(Sender: TObject);
  private
          procedure SyncTabControlAndComboBox(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Frm_cript_choise: TFrm_cript_choise;

implementation

uses change_pas_quest, Un_dm, Un_func;

{$R *.dfm}
 procedure TFrm_cript_choise.SyncTabControlAndComboBox(Sender: TObject);
var
  IsUpdatingFromTab: Boolean;
begin
  IsUpdatingFromTab := (Sender = cryortPC);
  if IsUpdatingFromTab then
  begin
    case cryortPC.TabIndex of
      0: passKindCombo.ItemIndex := 0;
    end;
  end
  else
  begin
    case passKindCombo.ItemIndex of
      0: cryortPC.ActivePage := RandombaseTab;
    end;
  end;
end;
procedure TFrm_cript_choise.cryortPCChange(Sender: TObject);
begin
   SyncTabControlAndComboBox(Sender);
end;

procedure TFrm_cript_choise.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    SaveFormState(Self);
    CloseAllQueriesOnDataModule('dm');
end;

procedure TFrm_cript_choise.FormCreate(Sender: TObject);
begin
 Frm_cript_choise.KeyPreview:=true;
 Frm_cript_choise.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
end;

procedure TFrm_cript_choise.passKindComboChange(Sender: TObject);
begin
    SyncTabControlAndComboBox(Sender);
end;

procedure TFrm_cript_choise.rnd_base_init_BtnClick(Sender: TObject);
  var rnd_string:string;
begin
  Randomize;
  rnd_string:=get_rnd_char(rnd_base_grader.Position);
  rnd_base_out_pass.Text:=rnd_base_out_pass.Text+rnd_string;
end;

end.

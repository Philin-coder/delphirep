unit fadm_pass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Serv_f,   ExtCtrls, Buttons, ComCtrls,jpeg;

type
  TFadm_passs = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    Label1: TLabel;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    GroupBox2: TGroupBox;
    ed: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    UpDown1: TUpDown;
    LabeledEdit4: TLabeledEdit;
    Splitter1: TSplitter;
    GroupBox3: TGroupBox;
    Image1: TImage;
    Button2: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    procedure RadioButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure Edit1Change(Sender: TObject);
    procedure zaprosDate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }


  end;

var
  Fadm_passs: TFadm_passs;
  var btn:TButton;

implementation

uses main, Ulog, User_creator;

{$R *.dfm}

{ TFadm_passs }




{ TFadm_passs }




procedure TFadm_passs.BitBtn1Click(Sender: TObject);
var pass_to_transfer:String;
begin
  pass_to_transfer:=transfer_pass(Trim(LabeledEdit2.Text));
end;

procedure TFadm_passs.BitBtn2Click(Sender: TObject);
begin
  user_creation.Show;
end;

procedure TFadm_passs.Button2Click(Sender: TObject);
begin
  zaprosDate(Self);
  Edit1.Clear;
end;

procedure TFadm_passs.Edit1Change(Sender: TObject);
begin
  LabeledEdit4.Text:=md5(trim(Edit1.Text));
end;

procedure TFadm_passs.FormCreate(Sender: TObject);
begin
  get_right_params();
end;

procedure TFadm_passs.RadioButton1Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
begin
  GroupBox1.Enabled:=True;
  GroupBox1.Visible:=True;
  GroupBox2.Visible:=False;
  GroupBox2.Enabled:=False;
  LabeledEdit2.Text:=md5(trim(LabeledEdit1.Text));
  LabeledEdit3.Text:=md5UTF8(trim(LabeledEdit1.Text));
  Image1.Visible:=False;

end
else
begin
  GroupBox1.Enabled:=False;
  GroupBox1.Visible:=False
end;
end;

procedure TFadm_passs.RadioButton2Click(Sender: TObject);
begin
if RadioButton2.Checked=True  then
begin
  GroupBox1.Enabled:=False;
  GroupBox1.Visible:=False;
  GroupBox2.Enabled:=True;
  GroupBox2.Visible:=True;
end;


end;

procedure TFadm_passs.UpDown1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  get_rnd_char(UpDown1.Position);
//LabeledEdit4.Text:=md5(trim(Edit1.Text));
//LabeledEdit5.Text:=md5UTF8(trim(Edit1.Text));
end;


procedure TFadm_passs.zaprosDate(Sender: Tobject);
var i:Integer;
begin
     for i:=1 to 4 do
     begin
      TLabeledEdit(FindComponent('LabeledEdit'+IntToStr(i))).Text:='';
     end;

end;

end.

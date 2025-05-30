unit Un_spec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, ADODB,DB, DBCtrls;

type
  TFrm_spec = class(TForm)
    SpecPage: TPageControl;
    SelTab: TTabSheet;
    InsTab: TTabSheet;
    UpdTab: TTabSheet;
    delTab: TTabSheet;
    SpecgroupBox: TGroupBox;
    SpecbtnBox: TGroupBox;
    SpecDataBox: TGroupBox;
    SpecSelGrid: TDBGrid;
    SpecSelBtn: TButton;
    SpecCondBox: TGroupBox;
    Spec_condEdit: TLabeledEdit;
    Spec_fnd_edit: TLabeledEdit;
    Spec_groupradio: TRadioButton;
    SpecResetRadio: TRadioButton;
    spec_inpBox: TGroupBox;
    spec_inp: TLabeledEdit;
    Spec_ins_btn_Box: TGroupBox;
    Spec_insBtn: TButton;
    SpecDataInsBox: TGroupBox;
    Spec_insGrd: TDBGrid;
    Spec_upd_inp_Box: TGroupBox;
    spec_upd_spec_inp: TLabeledEdit;
    Speclbl: TStaticText;
    SpecUpdDBL: TDBLookupComboBox;
    Spec_upd_btn_Box: TGroupBox;
    Spec_upd_Btn: TButton;
    Spec_upd_dataBox: TGroupBox;
    SpecUpddataGrd: TDBGrid;
    delspedatacBox: TGroupBox;
    delspeclbl: TStaticText;
    delSpecDBL: TDBLookupComboBox;
    dlspecbtnBox: TGroupBox;
    delspecBtn: TButton;
    delspecdataBox: TGroupBox;
    delspecGrd: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpecSelBtnClick(Sender: TObject);
    procedure SpecResetRadioClick(Sender: TObject);
    procedure Spec_groupradioClick(Sender: TObject);
    procedure Spec_fnd_editKeyPress(Sender: TObject; var Key: Char);
    procedure Spec_insBtnClick(Sender: TObject);
    procedure Spec_upd_BtnClick(Sender: TObject);
    procedure delspecBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_spec: TFrm_spec;

implementation

uses Un_dm, Un_main, Un_func;

{$R *.dfm}

procedure TFrm_spec.Spec_upd_BtnClick(Sender: TObject);
  var
    upd_spec:TADOStoredProc;
begin
 if Trim(spec_upd_spec_inp.Text)='' then
 begin
   MessageDlg('��������� ��� ����',mtError,[mbOK],0);
   Beep;
   Exit;
 end;
 upd_spec :=nil;
 try
 upd_spec :=TADOStoredProc.Create(nil);
 try
 with upd_spec do
 begin
   Connection :=dm.Connection;
   if not Connection.Connected then
   begin
     raise Exception.Create('���������� � �����  �� �����������');
   end;
   ProcedureName :='upd_spec';
   Parameters.Clear;
   Parameters.CreateParameter(
   'spec_maim',
   ftString,
   pdInput,
   1000,
   spec_upd_spec_inp.Text
   );
   Parameters.CreateParameter(
   'spec_id',
   ftInteger,
   pdInput,
   0,
   SpecUpdDBL.KeyValue
   );
   ExecProc;
   dm.specQuery.Close;
   dm.specQuery.Open;
   MessageDlg('��������� �������', mtInformation, [mbOK], 0);
 end;
 except on E: EADOError do
 begin
   ShowMessage('������'+' '+e.Message);
 end;
 on E: Exception do
 begin
  ShowMessage('������'+' '+e.Message);
 end;
 end;
 finally
 FreeAndNil(upd_spec);
 end;
end;

procedure TFrm_spec.delspecBtnClick(Sender: TObject);
var del_spec:TADOStoredProc;
begin
 del_spec :=nil;
 try
 del_spec :=TADOStoredProc.Create(nil);
 try
 with del_spec do
 begin
   Connection :=dm.Connection;
   if not Connection.Connected then
   begin
     raise Exception.Create('���������� � �����  �� �����������');
   end;
   ProcedureName :='del_spec';
   Parameters.Clear;
   Parameters.CreateParameter(
   'spec_id',
   ftInteger,
   pdInput,
   0,
   delSpecDBL.KeyValue
   );
   ExecProc;
   dm.specQuery.Close;
   dm.specQuery.Open;
   MessageDlg('��������� �������', mtInformation, [mbOK], 0);
 end;
 except on E: EADOError do
 begin
   ShowMessage('������'+' '+e.Message);
 end;
 on E: Exception do
 begin
  ShowMessage('������'+' '+e.Message);
 end;
 end;
 finally
 FreeAndNil(del_spec);
 end;

end;

procedure TFrm_spec.FormActivate(Sender: TObject);
begin
  dm.specQuery.Open;
end;

procedure TFrm_spec.FormClose(Sender: TObject; var Action: TCloseAction);
 var
 q:Integer;
begin
 SaveFormState(Self);
 with dm do
 begin
 for q := 0 to ComponentCount - 1 do
 begin
   if(Components[q] is TADOQuery)  then
   begin
      (Components[q] as TADOQuery).Close;
   end;
 end;
 end;
end;

procedure TFrm_spec.FormCreate(Sender: TObject);

begin
  UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
  UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
  LoadFormState(Self);
end;

procedure TFrm_spec.SpecResetRadioClick(Sender: TObject);
var i,j:Integer;
begin
 if SpecResetRadio.Checked=True then
begin
  with Frm_spec do
    for I := 0 to ComponentCount - 1 do
     begin
       if (Components[i] is TLabeledEdit)  then
        begin
          (Components[i] as TLabeledEdit).Clear;
        end;
     end;
     with dm.specQuery do
     begin
     Close;
     sql.Clear;
     SQL.Text:=
     'select '+
  'spec.spec_id,'+
  'spec.spec_maim '+
  'from spec';
     Open;
     end;
    with Frm_spec do
    for j := 0 to ComponentCount - 1 do
    begin
      if(Components[j] is TRadioButton)  then
      begin
        (Components[j] as TRadioButton).Checked:=False;
      end;
    end;
end;
end;

procedure TFrm_spec.SpecSelBtnClick(Sender: TObject);
var
  sel_spec: TADOStoredProc;
begin
sel_spec := nil;
  try
    sel_spec := TADOStoredProc.Create(nil);
    try
      with sel_spec do
      begin
        Connection := DM.Connection;
        if not Connection.Connected then
          raise Exception.Create('���������� � �� �� �����������');
        ProcedureName := 'sel_spec';
        Parameters.Clear;
        Parameters.CreateParameter('spec_maim', ftString,
        pdInput, 1000,
        Spec_condEdit.Text);
        Open;
        DM.specQuery.Close;
        DM.specQuery.Recordset := sel_spec.Recordset;
      end;
    except
      on E: EADOError do
        ShowMessage('������ ��: ' + E.Message);
      on E: Exception do
        ShowMessage('������: ' + E.Message);
    end;
  finally
    FreeAndNil(sel_spec);
  end;
end;


procedure TFrm_spec.Spec_fnd_editKeyPress(Sender: TObject; var Key: Char);
begin
try
   dm.specQuery.SQL.Text:='select'+ ' '+
   'spec.spec_id,'+
  'spec.spec_maim'+' '+
  'from spec where 1=1'+' '+
  'and spec_maim like'+
   QuotedStr(Concat(Spec_fnd_edit.Text,#37));
   dm.specQuery.close;
   dm.specQuery.Open;
except   on E: EADOError do
  begin
  ShowMessage('������ ��'+E.Message);
  Exit;
  end;
  end;
end;

procedure TFrm_spec.Spec_groupradioClick(Sender: TObject);
begin
if Spec_groupradio.Checked=true then
  begin
    try
     with dm.specQuery do
     begin
      close;
      sql.Clear;
      sql.Text:=
      'select '+
  'spec.spec_id,'+
  'spec.spec_maim '+
  'from spec order by spec_maim  asc';
      Open;
     end;
    except on E: EADOError do
    begin
      ShowMessage('������ ��'+E.Message);
    end;
    end;
  end;
end;

procedure TFrm_spec.Spec_insBtnClick(Sender: TObject);
const
  AllowedChars: TSysCharSet = ['�'..'�', '�'..'�', '0'..'9', ' ', '-', '.'];
var
  ins_spec:TADOStoredProc;
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
  AreFieldsEmpty := (Trim(spec_inp.Text) = '');
  AreFieldsValid :=ValidateComponentText(spec_inp,AllowedChars);
  if AreFieldsEmpty or not AreFieldsValid then
  begin
    MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������',
    mtError, [mbOK], 0);
    Beep;
    Exit;
  end;
  ins_spec := nil;
  try
    ins_spec := TADOStoredProc.Create(nil);
    try
      with ins_spec do
      begin
        Connection := DM.Connection;
        if not Connection.Connected then
        begin
          raise Exception.Create('���������� � ����� ������ �� �����������');
        end;
        ProcedureName := 'ins_spec';
        Parameters.Clear;
        Parameters.CreateParameter(
          'spec_maim',
          ftString,
          pdInput,
          1000,
          spec_inp.Text
        );
        ExecProc;
        DM.specQuery.Close;
        DM.specQuery.Open;
        MessageDlg('��������� �������', mtInformation, [mbOK], 0);
      end;
    except
      on E: EADOError do
      begin
        ShowMessage('������ ���� ������: ' + E.Message);
      end;
      on E: Exception do
      begin
        ShowMessage('������: ' + E.Message);
      end;
    end;
  finally
    FreeAndNil(ins_spec);
  end;
end;
end.

unit Un_iniEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ToolWin, ComCtrls;

type
  TFrm_ini_editor = class(TForm)
    ini_btnBox: TGroupBox;
    editorlBar: TToolBar;
    inibtnBox: TGroupBox;
    iniBtn: TButton;
    separator_cb: TToolButton;
    appendCB: TCheckBox;
    rewriteCB: TCheckBox;
    iniRE: TRichEdit;
    editorOD: TOpenDialog;
    editorSD: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rewriteCBClick(Sender: TObject);
    procedure appendCBClick(Sender: TObject);
    procedure iniBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ini_editor: TFrm_ini_editor;

implementation

uses Un_func, Un_hlp;

{$R *.dfm}

procedure TFrm_ini_editor.appendCBClick(Sender: TObject);
begin
if appendCB.Checked then 
begin
    rewriteCB.Checked:=False;
end;
end;

procedure TFrm_ini_editor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 SaveFormState(Self);
 rewriteCB.Checked:=False;
 appendCB.Checked:=False;
 iniRE.Clear;
end;

procedure TFrm_ini_editor.FormCreate(Sender: TObject);
var
   AppPath, FolderPath: string;
begin
 AppPath := ExtractFilePath(Application.ExeName);
 FolderPath := IncludeTrailingPathDelimiter(AppPath) + 'hlp_res';
 if not DirectoryExists(FolderPath) then
  begin
    if not CreateDir(FolderPath) then
      raise Exception.Create('�� ������� ������� �����: ' + FolderPath);
  end;
 LoadFormState(Self);
 Frm_ini_editor.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 case Frm_help.helpTC.TabIndex of
 0:
 begin
 with editorSD do
 begin
  Title := '��������� ���� ini';
  FileName := 'sel_hlp.ini';
  InitialDir := FolderPath;
  Filter := '��������� ����� (*.ini)|*.ini';
  DefaultExt := '*.ini';
  Options := editorSD.Options + [ofOverwritePrompt];
 end;
 end;
 1:
 begin
with editorSD do
 begin
  Title := '��������� ���� ini';
  FileName := 'ins_hlp.ini';
  InitialDir := FolderPath;
  Filter := '��������� ����� (*.ini)|*.ini';
  DefaultExt := '*.ini';
  Options := editorSD.Options + [ofOverwritePrompt];
 end;
 end;
 2:
 begin
  with editorSD do
 begin
  Title := '��������� ���� ini';
  FileName := 'upd_hlp.ini';
  InitialDir := FolderPath;
  Filter := '��������� ����� (*.ini)|*.ini';
  DefaultExt := '*.ini';
  Options := editorSD.Options + [ofOverwritePrompt];
 end;
 end;
 3:
 begin
    with editorSD do
 begin
  Title := '��������� ���� ini';
  FileName := 'del_hlp.ini';
  InitialDir := FolderPath;
  Filter := '��������� ����� (*.ini)|*.ini';
  DefaultExt := '*.ini';
  Options := editorSD.Options + [ofOverwritePrompt];
 end;

 end;
 end;//case
    rewriteCB.Checked:=False;
    appendCB.Checked:=False;
end;

procedure TFrm_ini_editor.iniBtnClick(Sender: TObject);
begin
if rewriteCB.Checked then
begin
 SaveRichEditToFile(iniRE, editorSD)
end;
if appendCB.Checked then
begin
case Frm_help.helpTC.TabIndex of
0:
begin
 AppendRichEditToIniFile(iniRE, 'sel_hlp.ini');
 ShowMessage('����� ������� �������� � ����.');
end;
1:
begin
 AppendRichEditToIniFile(iniRE, 'ins_hlp.ini');
 ShowMessage('����� ������� �������� � ����.');
end;
2:
begin
AppendRichEditToIniFile(iniRE, 'upd_hlp.ini');
 ShowMessage('����� ������� �������� � ����.');
end;
3:
begin
  AppendRichEditToIniFile(iniRE, 'del_hlp.ini');
 ShowMessage('����� ������� �������� � ����.');
end;
end; //case
end;
end;



procedure TFrm_ini_editor.rewriteCBClick(Sender: TObject);
begin
if rewriteCB.Checked then
begin
  appendCB.Checked:=False;
end;

end;

end.

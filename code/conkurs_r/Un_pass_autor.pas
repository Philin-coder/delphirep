unit Un_pass_autor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids,db,ADODB, Mask, ToolWin,
  ImgList, DBCtrls;

type
  TFrm_pass_aut = class(TForm)
    pasvarImageList: TImageList;
    get_pas_toolbar: TToolBar;
    get_pas_btn: TToolButton;
    pass_a_dataBox: TGroupBox;
    pass_a_grid: TDBGrid;
    pass_a_ntnBox: TGroupBox;
    pass_a_insBtn: TButton;
    pass_a_inpBox: TGroupBox;
    pass_a_fio_inp: TLabeledEdit;
    pass_a_pwd_inp: TLabeledEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pass_a_insBtnClick(Sender: TObject);
    procedure pass_a_gridCellClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pass_aut: TFrm_pass_aut;

implementation

uses Un_dm, Un_func, change_pas_quest;

{$R *.dfm}
procedure TFrm_pass_aut.FormActivate(Sender: TObject);
begin
  dm.pass_aQuery.Open;
end;

procedure TFrm_pass_aut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SaveFormState(Self);
   CloseAllQueriesOnDataModule('dm');
    pass_a_grid.Columns[2].Visible:=false;
    pass_a_grid.Columns[3].Visible:=False;
end;

procedure TFrm_pass_aut.FormCreate(Sender: TObject);
begin
 Frm_pass_aut.KeyPreview:=true;
 Frm_pass_aut.ShowHint:=true;
 UniformizeButtonsSize(Self,  273, 25);
 UniformizeDBGrids(Self, 'Arial', 10, clBlack, clWhite);
 UniformizeComponentSizes(Self, 998, 21, clWhite, 'Arial', 10);
 LoadFormState(Self);
 pass_a_grid.Columns[0].Title.Caption:='����� ����������';
 pass_a_grid.Columns[1].Title.Caption:='���';
 pass_a_grid.Columns[2].Visible:=false;
 pass_a_grid.Columns[3].Visible:=False;
 pass_a_fio_inp.ShowHint:=True;
 pass_a_pwd_inp.ShowHint:=True;
 pass_a_fio_inp.Hint:='������ �����:'+#10#13+'������ ���� ��������';
 pass_a_pwd_inp.Hint:='������ �����:'+#10#13+'my_pas';
end;

procedure TFrm_pass_aut.pass_a_gridCellClick(Column: TColumn);
 var SelectedRowNumber:Integer;
begin
 if (pass_a_grid.DataSource.DataSet.Active)and
 not(pass_a_grid.DataSource.DataSet.IsEmpty)  then
  begin
    SelectedRowNumber := pass_a_grid.DataSource.DataSet.RecNo;
       try
UpdateFormProperties('Frm_change_pass_quest', '����� �������� ����� ������',
clBtnFace, 1024, 290);
 Frm_change_pass_quest.Number := SelectedRowNumber;
 Frm_change_pass_quest.ShowModal;
except
Frm_change_pass_quest.Free;
raise;
end;
  end
  else
  begin
      ShowMessage('����� ������ ����. ��� ������� ��� �����������.');
       Exit;
  end;
end;

procedure TFrm_pass_aut.pass_a_insBtnClick(Sender: TObject);
  const
AllowedChars: TSysCharSet = ['�'..'�', '�'..'�', '0'..'9', ' ', '-', '.'];
var
  AreFieldsEmpty: Boolean;
  AreFieldsValid: Boolean;
begin
AreFieldsEmpty:=(
(Trim(pass_a_fio_inp.Text)='')or
(Trim(pass_a_pwd_inp.Text)='')
);
AreFieldsValid:=(
ValidateComponentText(pass_a_fio_inp,AllowedChars)
);
if AreFieldsEmpty or not AreFieldsValid then
begin
 MessageDlg('������: ���� �� ����� ������ ��� ����� �� ������ ��������.',
    mtError, [mbOK], 0);
    Beep;
    Exit;
end;
try
      with dm.aut_pas do
      begin
        if not Connection.Connected then
          raise Exception.Create('���������� � ����� �� �����������');
          Close;
          Parameters.ParamByName('@fio').Value:=pass_a_fio_inp.Text;
          Parameters.ParamByName('@user_pas').Value:=pass_a_pwd_inp.Text;
          Open;
          DM.pass_aQuery.Recordset:=dm.aut_pas.Recordset;
      end;
    except
      on E: EADOError do
      begin
        ShowMessage('������: ' + E.Message);
      end;
      on E: Exception do
      begin
        ShowMessage('������: ' + E.Message);
      end;
    end;
     pass_a_grid.Columns[2].Visible:=True;
     pass_a_grid.Columns[3].Visible:=True;
     pass_a_grid.Columns[0].Title.Caption:='����� ����������';
     pass_a_grid.Columns[1].Title.Caption:='���';
     pass_a_grid.Columns[2].Title.Caption:='�������';
     pass_a_grid.Columns[3].Title.Caption:='������';
end;

end.

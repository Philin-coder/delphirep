unit ot;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TFot }

  TFot = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Fot: TFot;

implementation
uses vid;

{$R *.lfm}

{ TFot }

procedure TFot.Button1Click(Sender: TObject);
begin
  if ((LabeledEdit1.Text='login')and(LabeledEdit2.Text='pass')) then
  begin
    ShowMessage('пароль  введен верно');
    fot.hide;
    Form1.ShowModal;
  end
  else ShowMessage('пароль введен неверно');


end;


end.


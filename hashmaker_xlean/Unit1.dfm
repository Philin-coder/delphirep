object Form1: TForm1
  Left = 214
  Top = 176
  Width = 572
  Height = 330
  Caption = 'MD5 test'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 41
    Height = 19
    Caption = #1058#1077#1082#1089#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 33
    Width = 521
    Height = 177
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 216
    Width = 75
    Height = 25
    Caption = 'MD5 UTF8'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 247
    Width = 521
    Height = 21
    TabOrder = 2
  end
  object Button2: TButton
    Left = 89
    Top = 216
    Width = 75
    Height = 25
    Caption = 'MD5 ANSI'
    TabOrder = 3
    OnClick = Button2Click
  end
end

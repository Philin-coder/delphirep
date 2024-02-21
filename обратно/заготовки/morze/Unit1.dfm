object Form1: TForm1
  Left = 192
  Top = 124
  Caption = 'transl'
  ClientHeight = 547
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 96
    Top = 144
    Width = 75
    Height = 25
    Caption = #1052#1086#1088#1079#1077
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 384
    Width = 75
    Height = 25
    Caption = #1056#1091#1089#1089#1082#1080#1081
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 96
    Top = 24
    Width = 585
    Height = 113
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 96
    Top = 176
    Width = 585
    Height = 201
    Lines.Strings = (
      '')
    TabOrder = 3
  end
  object Memo3: TMemo
    Left = 96
    Top = 416
    Width = 585
    Height = 113
    Lines.Strings = (
      '')
    TabOrder = 4
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 16
    Width = 73
    Height = 81
    Caption = 'Language'
    ItemIndex = 0
    Items.Strings = (
      'Rus'
      'Eng')
    TabOrder = 5
    OnClick = RadioGroup1Click
  end
  object Button3: TButton
    Left = 8
    Top = 264
    Width = 75
    Height = 25
    Caption = #1041#1080#1087#1077#1088
    TabOrder = 6
    OnClick = Button3Click
  end
end

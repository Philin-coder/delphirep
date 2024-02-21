object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1064#1080#1092#1088#1086#1074#1072#1085#1077' '#1084#1077#1090#1086#1076#1086#1084' '#1062#1077#1079#1072#1088#1103
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 635
    Height = 105
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 120
    ExplicitWidth = 185
    object LabeledEdit1: TLabeledEdit
      Left = 3
      Top = 24
      Width = 600
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = #1058#1077#1082#1089#1090
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 3
      Top = 72
      Width = 600
      Height = 21
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1076#1074#1080#1075
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 256
    Width = 635
    Height = 43
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 40
      Top = 15
      Width = 75
      Height = 25
      Caption = #1064#1080#1092#1088#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 384
      Top = 15
      Width = 75
      Height = 25
      Caption = #1089#1073#1088#1086#1089
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 105
    Width = 635
    Height = 151
    Align = alClient
    Caption = #1042#1099#1074#1086#1076
    TabOrder = 2
    ExplicitLeft = 232
    ExplicitTop = 120
    ExplicitWidth = 185
    ExplicitHeight = 105
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 631
      Height = 134
      Align = alClient
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
      ExplicitLeft = 224
      ExplicitTop = 32
      ExplicitWidth = 185
      ExplicitHeight = 89
    end
  end
end

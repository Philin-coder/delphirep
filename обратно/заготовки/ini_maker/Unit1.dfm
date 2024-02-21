object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
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
    Height = 248
    Align = alClient
    Caption = #1074#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 51
      Width = 98
      Height = 13
      Caption = #1063#1080#1089#1083#1086#1074#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
    end
    object Edit1: TEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      Text = #1058#1077#1089#1090#1086#1074#1086#1077' '#1079#1085#1077#1072#1095#1077#1085#1080#1077
    end
    object Edit2: TEdit
      Left = 128
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object UpDown1: TUpDown
      Left = 249
      Top = 51
      Width = 16
      Height = 21
      Associate = Edit2
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 111
      Width = 97
      Height = 17
      Caption = #1051#1086#1075#1080#1082#1072
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 248
    Width = 635
    Height = 51
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100'  ini '
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 249
      Top = 6
      Width = 75
      Height = 25
      Caption = #1057#1095#1080#1090#1072#1090#1100'  ini '
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end

object Ftheme_creator: TFtheme_creator
  Left = 0
  Top = 0
  Caption = #1079#1072#1076#1072#1090#1100' '#1090#1077#1084#1091' '#1080' '#1089#1086#1093#1088#1072#1085#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  ClientHeight = 80
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 8
      Top = 0
      Width = 97
      Height = 17
      Caption = #1062#1074#1077#1090
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 104
      Top = 0
      Width = 97
      Height = 17
      Caption = #1065#1088#1080#1092#1090
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 192
      Top = 0
      Width = 97
      Height = 17
      Caption = #1056#1072#1079#1084#1077#1088
      TabOrder = 2
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 288
      Top = 0
      Width = 97
      Height = 17
      Caption = #1053#1072#1095#1077#1088#1090#1072#1085#1080#1077
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 635
    Height = 39
    Align = alClient
    TabOrder = 1
    DesignSize = (
      635
      39)
    object SpeedButton1: TSpeedButton
      Left = 376
      Top = 6
      Width = 23
      Height = 22
      OnClick = SpeedButton1Click
    end
    object Button1: TButton
      Left = 152
      Top = 8
      Width = 121
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
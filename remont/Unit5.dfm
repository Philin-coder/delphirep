object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1056#1077#1084#1086#1085#1090
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
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 635
    Height = 137
    Align = alTop
    Caption = #1063#1090#1086' '#1089#1076#1077#1083#1072#1080#1090#1100
    Items.Strings = (
      ' '#1055#1086#1082#1088#1072#1089#1082#1072' '#1087#1086#1083#1072
      ' '#1055#1086#1073#1077#1083#1082#1072' '#1089#1090#1077#1085
      #1055#1086#1073#1077#1083#1082#1072' '#1087#1086#1090#1086#1083#1082#1072
      #1055#1086#1082#1083#1077#1081#1082#1072' '#1086#1073#1086#1077#1074'.')
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 258
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 633
      Height = 39
      Align = alClient
      Caption = #1055#1086#1076#1089#1095#1080#1090#1072#1090#1100
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 280
      ExplicitTop = 8
      ExplicitWidth = 75
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 635
    Height = 121
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    ExplicitHeight = 41
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 633
      Height = 119
      Align = alClient
      Caption = #1048#1090#1086#1075#1086#1086' '
      TabOrder = 0
      ExplicitLeft = 224
      ExplicitTop = 8
      ExplicitWidth = 185
      ExplicitHeight = 105
      object Memo1: TMemo
        Left = 2
        Top = 15
        Width = 629
        Height = 102
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
        ExplicitLeft = 224
        ExplicitTop = 16
        ExplicitWidth = 185
        ExplicitHeight = 89
      end
    end
  end
end

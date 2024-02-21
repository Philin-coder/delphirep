object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 168
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 635
    Height = 112
    Align = alClient
    Caption = #1042#1074#1077#1076#1080#1090#1077'  '#1083#1086#1075#1080#1085' '#1080' '#1087#1072#1088#1086#1083#1100' '#1072#1076#1084#1080#1085#1072
    TabOrder = 0
    ExplicitHeight = 243
    DesignSize = (
      635
      112)
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 30
      Height = 13
      Caption = #1051#1086#1075#1080#1085
    end
    object Label2: TLabel
      Left = 32
      Top = 64
      Width = 43
      Height = 13
      Caption = #1055#1072#1074#1088#1086#1083#1100
    end
    object Edit2: TEdit
      Left = 96
      Top = 29
      Width = 538
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 571
    end
    object Edit1: TEdit
      Left = 96
      Top = 61
      Width = 531
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      PasswordChar = '*'
      TabOrder = 1
      ExplicitWidth = 564
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 112
    Width = 635
    Height = 56
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = -33
    ExplicitTop = 176
    ExplicitWidth = 668
    object Button1: TButton
      Left = 304
      Top = 24
      Width = 75
      Height = 25
      Caption = #1042#1086#1081#1090#1080' '
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end

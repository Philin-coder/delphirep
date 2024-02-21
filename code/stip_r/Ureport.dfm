object Freport: TFreport
  Left = 0
  Top = 0
  Caption = #1051#1091#1095#1096#1072#1103' '#1075#1088#1091#1087#1087#1072
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 635
    Height = 81
    Align = alTop
    Caption = #1055#1077#1088#1080#1086#1076
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 32
      Width = 37
      Height = 13
      Caption = #1053#1072#1095#1072#1083#1086
    end
    object Label2: TLabel
      Left = 456
      Top = 32
      Width = 30
      Height = 13
      Caption = #1082#1086#1085#1077#1094
    end
    object DateTimePicker1: TDateTimePicker
      Left = 64
      Top = 49
      Width = 186
      Height = 21
      Date = 45322.926244016210000000
      Time = 45322.926244016210000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 424
      Top = 51
      Width = 186
      Height = 21
      Date = 45322.926244016210000000
      Time = 45322.926244016210000000
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 218
    Width = 635
    Height = 81
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 264
      Top = 32
      Width = 75
      Height = 25
      Caption = #1042#1099#1074#1086#1076
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 81
    Width = 635
    Height = 137
    Align = alClient
    Caption = #1044#1072#1085#1085#1099#1077
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 631
      Height = 120
      Align = alClient
      DataSource = DM.DS_report
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end

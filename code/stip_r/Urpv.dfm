object frpv: Tfrpv
  Left = 0
  Top = 0
  Caption = #1056#1055#1042
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 635
    Height = 105
    Align = alTop
    Caption = #1054#1094#1077#1085#1082#1072' '#1074' '#1080#1085#1090#1077#1088#1074#1072#1083#1077
    TabOrder = 0
    ExplicitLeft = 336
    ExplicitTop = 24
    ExplicitWidth = 185
    DesignSize = (
      635
      105)
    object Label1: TLabel
      Left = 70
      Top = 24
      Width = 14
      Height = 13
      Caption = #1054#1090
    end
    object Label2: TLabel
      Left = 430
      Top = 24
      Width = 14
      Height = 13
      Caption = #1044#1086
    end
    object Edit1: TEdit
      Left = 70
      Top = 43
      Width = 121
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = '1'
    end
    object UpDown1: TUpDown
      Left = 197
      Top = 43
      Width = 16
      Height = 21
      Associate = Edit1
      Min = 1
      Max = 5
      Position = 1
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 430
      Top = 43
      Width = 121
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      Text = '1'
    end
    object UpDown2: TUpDown
      Left = 551
      Top = 43
      Width = 16
      Height = 21
      Associate = Edit2
      Min = 1
      Max = 5
      Position = 1
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 226
      Top = 82
      Width = 97
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = #1054#1090#1086#1073#1088#1072#1090#1100
      TabOrder = 4
      OnClick = CheckBox1Click
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
      Left = 248
      Top = 23
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 105
    Width = 635
    Height = 143
    Align = alClient
    Caption = #1044#1072#1085#1085#1099#1077
    TabOrder = 2
    ExplicitTop = 8
    ExplicitHeight = 105
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 631
      Height = 126
      Align = alClient
      DataSource = DM.DS_rpv
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end

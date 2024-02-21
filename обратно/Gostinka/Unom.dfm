object Fnom: TFnom
  Left = 0
  Top = 0
  Caption = #1042#1074#1086#1076' '#1085#1086#1084#1077#1088#1072
  ClientHeight = 985
  ClientWidth = 752
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
    Width = 752
    Height = 145
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    DesignSize = (
      752
      145)
    object LabeledEdit1: TLabeledEdit
      Left = 121
      Top = 24
      Width = 629
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 93
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1085#1086#1084#1077#1088#1072
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 120
      Top = 64
      Width = 629
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 93
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1085#1086#1084#1077#1088#1072
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object LabeledEdit3: TLabeledEdit
      Left = 120
      Top = 105
      Width = 629
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 75
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1090#1072#1090#1091#1089' '#1085#1086#1084#1077#1088#1072
      LabelPosition = lpLeft
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 928
    Width = 752
    Height = 57
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 2
      Top = 15
      Width = 748
      Height = 40
      Align = alClient
      Caption = #1042#1074#1086#1076
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 312
      ExplicitTop = 29
      ExplicitWidth = 75
      ExplicitHeight = 25
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 145
    Width = 752
    Height = 783
    Align = alClient
    Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 2
    ExplicitTop = 8
    ExplicitHeight = 145
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 748
      Height = 766
      Align = alClient
      DataSource = fDm.DSnom
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end

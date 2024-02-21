object Fadmin: TFadmin
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1074#1074#1086#1076#1072' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1077
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
    Height = 113
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    DesignSize = (
      752
      113)
    object LabeledEdit1: TLabeledEdit
      Left = 112
      Top = 32
      Width = 637
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 107
      EditLabel.Height = 13
      EditLabel.Caption = #1060#1080#1086' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1072
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 112
      Top = 80
      Width = 637
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1084#1077#1085#1072
      LabelPosition = lpLeft
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 944
    Width = 752
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 2
      Top = 15
      Width = 748
      Height = 24
      Align = alClient
      Caption = #1042#1074#1086#1076
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 336
      ExplicitTop = 8
      ExplicitWidth = 75
      ExplicitHeight = 25
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 113
    Width = 752
    Height = 831
    Align = alClient
    Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 2
    ExplicitLeft = 296
    ExplicitTop = 464
    ExplicitWidth = 185
    ExplicitHeight = 105
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 748
      Height = 814
      Align = alClient
      DataSource = fDm.DSadm
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end

object user_creation: Tuser_creation
  Left = 0
  Top = 0
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
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
    Height = 121
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    DesignSize = (
      635
      121)
    object LabeledEdit1: TLabeledEdit
      Left = 24
      Top = 40
      Width = 593
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 93
      EditLabel.Height = 13
      EditLabel.Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 24
      Top = 96
      Width = 593
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1072#1088#1086#1083#1100
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 264
    Width = 635
    Height = 35
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 248
      Top = 7
      Width = 153
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 121
    Width = 635
    Height = 143
    Align = alClient
    Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 631
      Height = 126
      Align = alClient
      DataSource = fdm.DS_PASS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end

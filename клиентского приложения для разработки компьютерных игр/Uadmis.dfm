object Fadmins: TFadmins
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1074#1074#1086#1076#1072' '#1087#1072#1088#1086#1083#1103' '#1080' '#1083#1086#1075#1080#1085#1072
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
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = -6
    DesignSize = (
      635
      105)
    object LabeledEdit1: TLabeledEdit
      Left = 16
      Top = 32
      Width = 616
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = #1056#1086#1083#1100
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 16
      Top = 78
      Width = 616
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
    Top = 256
    Width = 635
    Height = 43
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 2
      Top = 15
      Width = 631
      Height = 26
      Align = alClient
      Caption = #1042#1074#1086#1076
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 288
      ExplicitWidth = 75
      ExplicitHeight = 25
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 105
    Width = 635
    Height = 151
    Align = alClient
    Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 2
    ExplicitTop = 8
    ExplicitHeight = 105
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 631
      Height = 134
      Align = alClient
      DataSource = dM.DSpass
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end

object Fadminpass: TFadminpass
  Left = 0
  Top = 0
  Caption = #1092#1086#1088#1084#1072' '#1072#1076#1084#1080#1085#1072
  ClientHeight = 171
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
    Top = 130
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 288
    object Button1: TButton
      Left = 2
      Top = 15
      Width = 631
      Height = 24
      Align = alClient
      Caption = #1042#1093#1086#1076' '
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 232
      ExplicitTop = 16
      ExplicitWidth = 75
      ExplicitHeight = 25
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 635
    Height = 130
    Align = alClient
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 1
    ExplicitLeft = 423
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 105
    DesignSize = (
      635
      130)
    object LabeledEdit1: TLabeledEdit
      Left = 6
      Top = 32
      Width = 629
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = #1051#1086#1075#1080#1085' '
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 3
      Top = 83
      Width = 629
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1072#1088#1086#1083#1100
      TabOrder = 1
    end
  end
end

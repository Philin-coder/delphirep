object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 175
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 706
    Height = 113
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    DesignSize = (
      706
      113)
    object LabeledEdit2: TLabeledEdit
      Left = 24
      Top = 80
      Width = 679
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 6
      EditLabel.Height = 13
      EditLabel.Caption = 'b'
      TabOrder = 0
      ExplicitWidth = 608
    end
    object LabeledEdit1: TLabeledEdit
      Left = 24
      Top = 24
      Width = 679
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 6
      EditLabel.Height = 13
      EditLabel.Caption = 'a'
      TabOrder = 1
      ExplicitWidth = 608
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 116
    Width = 706
    Height = 59
    Align = alBottom
    Caption = #1053#1072#1078#1084#1080' '#1084#1077#1085#1103
    TabOrder = 1
    ExplicitTop = 240
    object Button1: TButton
      Left = 240
      Top = 31
      Width = 75
      Height = 25
      Caption = 'to summ'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end

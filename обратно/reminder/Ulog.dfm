object Flog: TFlog
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1055#1072#1088#1086#1083#1100' '#1080' '#1083#1086#1075#1080#1085
  ClientHeight = 197
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
    Height = 156
    Align = alClient
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    DesignSize = (
      635
      156)
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 24
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      Caption = #1056#1086#1083#1100
    end
    object ComboBox1: TComboBox
      Left = 54
      Top = 13
      Width = 578
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 0
      Text = 'ComboBox1'
    end
    object LabeledEdit1: TLabeledEdit
      Left = 54
      Top = 104
      Width = 578
      Height = 21
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1072#1088#1086#1083#1100
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 156
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Caption = #1042#1093#1086#1076
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end

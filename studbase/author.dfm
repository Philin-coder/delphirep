object authorisze: Tauthorisze
  Left = 0
  Top = 0
  Caption = 'authorisze'
  ClientHeight = 299
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
    Height = 299
    Align = alClient
    Caption = #1074#1074#1086#1076' '#1083#1086#1075#1080#1085#1072'  '#1080' '#1087#1087#1072#1088#1086#1083#1103' '
    TabOrder = 0
    ExplicitHeight = 297
    object LabeledEdit1: TLabeledEdit
      Left = 34
      Top = 32
      Width = 598
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = #1083#1086#1075#1080#1085
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 32
      Top = 81
      Width = 598
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = #1087#1072#1088#1086#1083#1100
      TabOrder = 1
    end
    object Button1: TButton
      Left = 280
      Top = 136
      Width = 75
      Height = 25
      Caption = #1074#1086#1081#1090#1080
      TabOrder = 2
      OnClick = Button1Click
    end
  end
end

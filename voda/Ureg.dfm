object Freg: TFreg
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 204
  ClientWidth = 820
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 820
    Height = 153
    Align = alClient
    Caption = #1042#1074#1086#1076' '#1091#1095#1077#1090#1085#1099#1093' '#1076#1072#1085#1085#1099#1093
    Color = clRed
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      820
      153)
    object LabeledEdit1: TLabeledEdit
      Left = 77
      Top = 40
      Width = 740
      Height = 32
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 55
      EditLabel.Height = 24
      EditLabel.Caption = #1051#1086#1075#1080#1085
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 77
      Top = 96
      Width = 740
      Height = 32
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 68
      EditLabel.Height = 24
      EditLabel.Caption = #1055#1072#1088#1086#1083#1100
      LabelPosition = lpLeft
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 153
    Width = 820
    Height = 51
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 2
      Top = 26
      Width = 816
      Height = 23
      Align = alClient
      Caption = #1042#1074#1086#1076
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end

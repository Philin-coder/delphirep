object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1059#1076#1072#1083#1103#1090#1086#1088
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
  object Panel1: TPanel
    Left = 0
    Top = 258
    Width = 635
    Height = 41
    Align = alBottom
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    object Button1: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = #1087#1086#1084#1077#1088#1103#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Caption = 'del'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 376
      Top = 6
      Width = 75
      Height = 25
      Caption = #1079#1072#1082#1088#1099#1090#1100
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 39
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoSize = True
    TabOrder = 1
    DesignSize = (
      635
      39)
    object LabeledEdit1: TLabeledEdit
      Left = 0
      Top = 17
      Width = 635
      Height = 21
      Hint = 
        #1041#1091#1082#1074#1099' '#1076#1080#1089#1082#1072' '#1091#1082#1072#1079#1099#1074#1072#1090#1100' '#1094#1080#1092#1088#1072#1084#1080' '#1086#1090' 0 '#1090#1077#1082#1091#1097#1080#1081' '#1080' '#1076#1072#1083#1100#1096#1077'  '#1087#1086' '#1089#1087#1080#1089#1082#1091': ' +
        '1  -a, 3, '#1080' '#1090'.'#1076' '
      Anchors = [akLeft, akTop, akRight, akBottom]
      EditLabel.Width = 68
      EditLabel.Height = 13
      EditLabel.Hint = 
        #1041#1091#1082#1074#1099' '#1076#1080#1089#1082#1072' '#1091#1082#1072#1079#1099#1074#1072#1090#1100' '#1094#1080#1092#1088#1072#1084#1080' '#1086#1090' 0 '#1090#1077#1082#1091#1097#1080#1081' '#1080' '#1076#1072#1083#1096#1077'  '#1087#1086' '#1089#1087#1080#1089#1082#1091': 1' +
        '  -a, 3, '#1080' '#1090'.'#1076' '
      EditLabel.Caption = #1053#1086#1084#1077#1088'  '#1044#1080#1089#1082#1072
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 39
    Width = 635
    Height = 219
    Align = alClient
    Lines.Strings = (
      ''
      '')
    TabOrder = 2
    ExplicitLeft = 232
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object SaveDialog1: TSaveDialog
    Left = 544
    Top = 264
  end
  object OpenDialog1: TOpenDialog
    Left = 592
    Top = 264
  end
end

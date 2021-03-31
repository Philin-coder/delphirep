object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 40
    ExplicitTop = -16
    object LabeledEdit1: TLabeledEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 6
      EditLabel.Height = 13
      EditLabel.Caption = 'a'
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 8
      Top = 72
      Width = 121
      Height = 21
      EditLabel.Width = 6
      EditLabel.Height = 13
      EditLabel.Caption = 'B'
      TabOrder = 1
    end
    object Memo1: TMemo
      Left = 135
      Top = 1
      Width = 499
      Height = 297
      Align = alRight
      Lines.Strings = (
        '')
      TabOrder = 2
    end
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 208
    object N1: TMenuItem
      Caption = #1042#1074#1086#1076' '
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1042#1099#1095#1080#1089#1083#1077#1085#1080#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1074#1086#1076
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1074#1099#1093#1086#1076
      OnClick = N4Click
    end
  end
end

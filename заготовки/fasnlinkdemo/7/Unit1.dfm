object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 279
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
    Height = 238
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Memo1: TMemo
      Left = 352
      Top = 1
      Width = 282
      Height = 236
      Align = alRight
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
    end
    object T: TStringGrid
      Left = 1
      Top = 1
      Width = 345
      Height = 236
      Align = alLeft
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 238
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    object SpinEdit1: TSpinEdit
      Left = 256
      Top = 8
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
  end
  object MainMenu1: TMainMenu
    Left = 312
    Top = 152
    object N1: TMenuItem
      Caption = #1042#1074#1086#1076' '#1080#1079' '#1090#1072#1073#1083#1080#1094#1099
      OnClick = N1Click
    end
    object asm1: TMenuItem
      Caption = 'asm'
      object Crvvf1: TMenuItem
        Caption = #1057#1091#1084#1084#1084#1072' '
        OnClick = Crvvf1Click
      end
      object min1: TMenuItem
        Caption = 'min '
        OnClick = min1Click
      end
      object max1: TMenuItem
        Caption = 'max'
        OnClick = max1Click
      end
      object sr1: TMenuItem
        Caption = 'sr'
        OnClick = sr1Click
      end
    end
    object N2: TMenuItem
      Caption = #1057#1073#1088#1086#1089
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
end

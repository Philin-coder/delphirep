object Fmain: TFmain
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 408
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 595
    Height = 408
    Align = alClient
    Stretch = True
    ExplicitLeft = 256
    ExplicitTop = 184
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object MainMenu1: TMainMenu
    Left = 312
    Top = 152
    object N1: TMenuItem
      Caption = #1042#1074#1086#1076#1099
      object N3: TMenuItem
        Caption = #1042#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1077
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1042#1074#1086#1076' '#1091#1089#1083#1091#1075#1080
        OnClick = N4Click
      end
      object N6: TMenuItem
        Caption = #1042#1074#1086#1076' '#1085#1086#1084#1077#1088#1072
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1042#1074#1086#1076' '#1076#1086#1075#1086#1074#1086#1088#1072
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1042#1074#1086#1076' '#1086#1087#1083#1072#1090#1099
        OnClick = N8Click
      end
    end
    object N2: TMenuItem
      Caption = #1054#1090#1095#1077#1090
      OnClick = N2Click
    end
    object N5: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N5Click
    end
  end
end

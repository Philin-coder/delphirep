object Frm_main: TFrm_main
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
  ClientHeight = 319
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = ItemMenu
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object main_Image: TImage
    Left = 0
    Top = 0
    Width = 635
    Height = 319
    Align = alClient
    ExplicitLeft = 272
    ExplicitTop = 120
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object ItemMenu: TMainMenu
    Left = 312
    Top = 152
    object lang_item: TMenuItem
      Caption = '&'#1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1077#1081' '#1086' '#1103#1079#1099#1082#1077
      OnClick = lang_itemClick
    end
    object ts_item: TMenuItem
      Caption = '&'#1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1077#1081' '#1086' '#1089#1086#1093#1088#1072#1085#1103#1077#1084#1086#1084
      OnClick = ts_itemClick
    end
  end
end

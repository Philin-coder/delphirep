object Frm_main: TFrm_main
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
  ClientHeight = 419
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
    Height = 419
    Align = alClient
    ExplicitLeft = 272
    ExplicitTop = 120
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object ItemMenu: TMainMenu
    Left = 312
    Top = 152
    object kind_doc_item: TMenuItem
      Caption = '&'#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1074#1080#1076#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      OnClick = kind_doc_itemClick
    end
    object c_exit_item: TMenuItem
      Caption = '&'#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1088#1080#1095#1080#1085#1077' '#1074#1099#1073#1099#1090#1080#1103
      OnClick = c_exit_itemClick
    end
    object akt_in_item: TMenuItem
      Caption = '&'#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086#1073' '#1072#1082#1090#1077' '#1087#1088#1080#1077#1084#1082#1080
      OnClick = akt_in_itemClick
    end
    object act_out_item: TMenuItem
      Caption = '&'#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086#1073' '#1072#1082#1090#1077' '#1074#1099#1073#1099#1090#1080#1103
      OnClick = act_out_itemClick
    end
    object doc_item: TMenuItem
      Caption = '&'#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1077
      OnClick = doc_itemClick
    end
    object Exempl_item: TMenuItem
      Caption = '&'#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086#1073' '#1101#1082#1079#1077#1084#1087#1083#1103#1088#1077
      OnClick = Exempl_itemClick
    end
    object reporrt_item: TMenuItem
      Caption = '&'#1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1086#1090#1095#1077#1090#1085#1086#1089#1090#1100#1102
      OnClick = reporrt_itemClick
    end
  end
end

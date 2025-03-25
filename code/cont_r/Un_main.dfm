object Frm_main: TFrm_main
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 479
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
  object mainImage: TImage
    Left = 0
    Top = 0
    Width = 635
    Height = 479
    Align = alClient
    ExplicitLeft = 280
    ExplicitTop = 112
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object ItemMenu: TMainMenu
    Left = 312
    Top = 152
    object spec_item: TMenuItem
      Caption = '&'#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      OnClick = spec_itemClick
    end
    object Grup_item: TMenuItem
      Caption = '&'#1043#1088#1091#1087#1087#1072
      OnClick = Grup_itemClick
    end
    object Stud_Item: TMenuItem
      Caption = '&'#1057#1090#1091#1076#1077#1085#1090
      OnClick = Stud_ItemClick
    end
    object Prikaz_item: TMenuItem
      Caption = '&'#1055#1088#1080#1082#1072#1079
      OnClick = Prikaz_itemClick
    end
    object report_itrem: TMenuItem
      Caption = '&'#1054#1090#1095#1077#1090#1085#1086#1089#1090#1100
      object first_report: TMenuItem
        Caption = #1060#1086#1088#1084#1072' '#1089' '#1086#1090#1095#1077#1090#1072#1084#1080
        OnClick = first_reportClick
      end
    end
  end
end

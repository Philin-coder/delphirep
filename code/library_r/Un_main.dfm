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
  KeyPreview = True
  Menu = ItemnMenu
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object main_image: TImage
    Left = 0
    Top = 0
    Width = 635
    Height = 479
    Align = alClient
    ExplicitLeft = 184
    ExplicitTop = 96
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object iconImageList: TImageList
    Left = 288
    Top = 40
  end
  object cursorTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = cursorTimerTimer
    Left = 344
    Top = 128
  end
  object ItemnMenu: TMainMenu
    Left = 248
    Top = 128
    object autor_item: TMenuItem
      Caption = '&'#1040#1074#1090#1086#1088
      OnClick = autor_itemClick
    end
    object genre_item: TMenuItem
      Caption = '&'#1046#1072#1085#1088
      OnClick = genre_itemClick
    end
    object Book_item: TMenuItem
      Caption = '&'#1050#1085#1080#1075#1072
      OnClick = Book_itemClick
    end
    object doc_item: TMenuItem
      Caption = '&'#1044#1086#1082#1091#1084#1077#1085#1090
      OnClick = doc_itemClick
    end
    object reader_item: TMenuItem
      Caption = '&'#1063#1080#1090#1072#1090#1077#1083#1100
      OnClick = reader_itemClick
    end
    object delievry_item: TMenuItem
      Caption = '&'#1042#1099#1076#1072#1095#1072
      OnClick = delievry_itemClick
    end
    object attachment_item: TMenuItem
      Caption = '&'#1042#1083#1086#1078#1077#1085#1080#1103
      OnClick = attachment_itemClick
    end
  end
end

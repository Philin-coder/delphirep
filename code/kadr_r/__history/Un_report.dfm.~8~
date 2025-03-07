object Frm_report: TFrm_report
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090#1099
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object reportPage: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    ActivePage = prof_list_tab
    Align = alClient
    TabOrder = 0
    object prof_list_tab: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1087#1088#1086#1092#1077#1089#1089#1080#1081
      object reportbtnPanel: TPanel
        Left = 0
        Top = 230
        Width = 627
        Height = 41
        Align = alBottom
        TabOrder = 0
        ExplicitLeft = 184
        ExplicitTop = 224
        ExplicitWidth = 185
        object reportButton: TButton
          Left = 288
          Top = 16
          Width = 75
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1042#1099#1074#1086#1076
          TabOrder = 0
          OnClick = reportButtonClick
        end
      end
      object reportGid: TDBGrid
        Left = 0
        Top = 0
        Width = 627
        Height = 230
        Align = alClient
        DataSource = DM.reportDS
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end

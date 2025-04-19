object Frm_csv_loader: TFrm_csv_loader
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' csv'
  ClientHeight = 793
  ClientWidth = 1032
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object csvlPC: TPageControl
    Left = 0
    Top = 0
    Width = 1032
    Height = 793
    ActivePage = delTab
    Align = alClient
    TabOrder = 0
    object delTab: TTabSheet
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072' csv'
      ImageIndex = 3
      object csvldeldataBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1024
        Height = 699
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object csvlGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 682
          Align = alClient
          DataSource = DM.gDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'GoodsId'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'goods_naim'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'goods_cost'
              Visible = True
            end>
        end
      end
      object rpobtn_box: TGroupBox
        Left = 0
        Top = 699
        Width = 1024
        Height = 66
        Align = alBottom
        TabOrder = 1
        object rpBtn: TButton
          Left = 328
          Top = 24
          Width = 121
          Height = 25
          Caption = #1042#1099#1074#1086#1076' csv'
          TabOrder = 0
          OnClick = rpBtnClick
        end
      end
    end
  end
  object csvOD: TOpenDialog
    Left = 560
  end
end

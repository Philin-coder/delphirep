object Frm_main: TFrm_main
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072' '#1087#1088#1086#1077#1082#1090#1072
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
  object groupconditionsel: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    ActivePage = SelTabSheet
    Align = alClient
    TabOrder = 0
    object SelTabSheet: TTabSheet
      Caption = 'Select'
      object groupconditionbox: TGroupBox
        Left = 0
        Top = 0
        Width = 627
        Height = 49
        Align = alTop
        Caption = #1059#1089#1083#1086#1074#1080#1077' '#1086#1090#1073#1086#1088#1072
        TabOrder = 0
        DesignSize = (
          627
          49)
        object selEdit: TEdit
          Left = 16
          Top = 20
          Width = 593
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
      end
      object buttonBox: TGroupBox
        Left = 0
        Top = 224
        Width = 627
        Height = 47
        Align = alBottom
        TabOrder = 1
        object condbutton: TButton
          Left = 232
          Top = 19
          Width = 75
          Height = 25
          Caption = #1053#1072#1078#1084#1080' '#1084#1077#1085#1103
          TabOrder = 0
        end
      end
      object DataBox: TGroupBox
        Left = 0
        Top = 49
        Width = 627
        Height = 175
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object selDBGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 623
          Height = 158
          Align = alClient
          DataSource = DM.DSStud
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object InsTabSheet: TTabSheet
      Caption = 'Insert'
      ImageIndex = 1
    end
    object updTabSheet: TTabSheet
      Caption = 'Update'
      ImageIndex = 2
    end
    object delTabSheet: TTabSheet
      Caption = 'Delete'
      ImageIndex = 3
    end
  end
end

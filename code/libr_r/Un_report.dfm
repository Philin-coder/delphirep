object Frm_report: TFrm_report
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1086#1090#1095#1077#1090#1085#1086#1089#1090#1100#1102
  ClientHeight = 433
  ClientWidth = 1045
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
  PixelsPerInch = 96
  TextHeight = 13
  object rpPC: TPageControl
    Left = 0
    Top = 0
    Width = 1045
    Height = 433
    ActivePage = SelTab
    Align = alClient
    TabOrder = 0
    object SelTab: TTabSheet
      Caption = #1055#1088#1086#1074#1077#1088#1077#1085#1086' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      object kind_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 145
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object rp_data_b_lbl: TStaticText
          Left = 16
          Top = 16
          Width = 115
          Height = 17
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 0
        end
        object rp_data_e_lbl: TStaticText
          Left = 16
          Top = 64
          Width = 103
          Height = 17
          Caption = #1044#1072#1090#1072' '#1082#1086#1085#1094#1072' '#1087#1077#1080#1086#1076#1072
          TabOrder = 1
        end
        object rp_data_b_inp: TDateTimePicker
          Left = 16
          Top = 37
          Width = 1017
          Height = 21
          Date = 45842.735145509260000000
          Time = 45842.735145509260000000
          TabOrder = 2
        end
        object rp_data_e_inp: TDateTimePicker
          Left = 16
          Top = 87
          Width = 1017
          Height = 21
          Date = 45842.735145509260000000
          Time = 45842.735145509260000000
          TabOrder = 3
        end
      end
      object kind_Data_Box: TGroupBox
        Left = 0
        Top = 145
        Width = 1037
        Height = 207
        Align = alClient
        Caption = #1042#1099#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        ExplicitTop = 210
        ExplicitHeight = 142
        object sel_kind_grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 190
          Align = alClient
          DataSource = DM.report1DS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ex_inv_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ex_data_pr'
              Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ex_data_out'
              Title.Caption = #1044#1072#1090#1072' '#1074#1099#1073#1099#1090#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'doc_theme'
              Title.Caption = #1058#1077#1084#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_exit_desc'
              Title.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1074#1099#1073#1099#1090#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'akt_s_nom'
              Title.Caption = #1053#1086#1084#1077#1088' '#1072#1082#1090#1072' '#1074#1099#1073#1099#1090#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ex_test_data'
              Title.Caption = #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1088#1082#1080
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'test_mark'
              Title.Caption = #1054#1058#1084#1077#1090#1082#1072' '#1086' '#1087#1088#1086#1074#1077#1088#1082#1077
              Visible = True
            end>
        end
      end
      object rp_btn_Box: TGroupBox
        Left = 0
        Top = 352
        Width = 1037
        Height = 53
        Align = alBottom
        TabOrder = 2
        object rp_sel_btn: TButton
          Left = 248
          Top = 25
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1086#1088
          TabOrder = 0
          OnClick = rp_sel_btnClick
        end
      end
    end
  end
end

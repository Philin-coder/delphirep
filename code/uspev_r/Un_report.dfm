object Frm_report: TFrm_report
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1086#1090#1095#1077#1090#1086#1084
  ClientHeight = 594
  ClientWidth = 1037
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
  object report_pc: TPageControl
    Left = 0
    Top = 0
    Width = 1037
    Height = 594
    ActivePage = delTab
    Align = alClient
    TabOrder = 0
    object delTab: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1086#1094#1077#1085#1086#1082' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      ImageIndex = 3
      object report_dataBox: TGroupBox
        Left = 0
        Top = 145
        Width = 1029
        Height = 343
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitTop = 105
        ExplicitHeight = 383
        object reportGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 326
          Align = alClient
          DataSource = DM.reportDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_grade'
              Title.Caption = #1053#1086#1084#1077#1088'  '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stud_fio'
              Title.Caption = #1060#1048#1054' '#1089#1090#1091#1076#1077#1085#1090#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name'
              Title.Caption = #1055#1088#1077#1076#1084#1077#1090
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'teacher_fio'
              Title.Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grade_value'
              Title.Caption = #1054#1094#1077#1085#1082#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'date'
              Title.Caption = #1044#1072#1090#1072
              Visible = True
            end>
        end
      end
      object report_btnBox: TGroupBox
        Left = 0
        Top = 488
        Width = 1029
        Height = 78
        Align = alBottom
        TabOrder = 1
        object report_selBtn: TButton
          Left = 448
          Top = 40
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1088#1072#1090#1100
          TabOrder = 0
          OnClick = report_selBtnClick
        end
      end
      object repoer_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 145
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object report_data_b_lbl: TStaticText
          Left = 16
          Top = 24
          Width = 115
          Height = 17
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 0
        end
        object report_data_b_inp: TDateTimePicker
          Left = 16
          Top = 47
          Width = 1009
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          Date = 45796.524669166670000000
          Time = 45796.524669166670000000
          TabOrder = 1
        end
        object report_data_e_lbl: TStaticText
          Left = 16
          Top = 95
          Width = 109
          Height = 17
          Caption = #1044#1072#1090#1072' '#1082#1086#1085#1094#1072' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 2
        end
        object report_data_e_inp: TDateTimePicker
          Left = 16
          Top = 118
          Width = 1009
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          Date = 45796.524669166670000000
          Time = 45796.524669166670000000
          TabOrder = 3
        end
      end
    end
  end
end

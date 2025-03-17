object Frm_stud: TFrm_stud
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089#1086' '#1089' '#1083#1080#1095#1085#1099#1084'  '#1076#1077#1083#1086#1084' '#1089#1090#1091#1076#1077#1085#1090#1072
  ClientHeight = 813
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
  object StudPage: TPageControl
    Left = 0
    Top = 0
    Width = 1037
    Height = 813
    ActivePage = InsTab
    Align = alClient
    TabOrder = 0
    object SelTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086'  '#1089#1090#1091#1076#1077#1085#1090#1077
      object StudgroupBox: TGroupBox
        Left = 0
        Top = 97
        Width = 1029
        Height = 64
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072
        TabOrder = 0
        object Stud_civ_groupradio: TRadioButton
          Left = 56
          Top = 32
          Width = 113
          Height = 17
          Align = alCustom
          Caption = #1055#1086' '#1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1091
          TabOrder = 0
          OnClick = Stud_civ_groupradioClick
        end
        object StudResetRadio: TRadioButton
          Left = 432
          Top = 32
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 1
          OnClick = StudResetRadioClick
        end
        object Stud_gr_groupradio: TRadioButton
          Left = 256
          Top = 33
          Width = 113
          Height = 17
          Align = alCustom
          Caption = #1055#1086' '#1075#1088#1091#1087#1087#1077
          TabOrder = 2
          OnClick = Stud_gr_groupradioClick
        end
        object Studfnd_akademCb: TCheckBox
          Left = 608
          Top = 33
          Width = 241
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1054#1090#1073#1086#1088' '#1090#1077#1093', '#1082#1090#1086' '#1074' '#1072#1082#1072#1076#1077#1084'. '#1086#1090#1087#1091#1089#1082#1077' '
          TabOrder = 3
          OnClick = Studfnd_akademCbClick
        end
      end
      object StudpbtnBox: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object StudSelBtn: TButton
          Left = 256
          Top = 27
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1042#1099#1073#1086#1088
          TabOrder = 0
          OnClick = StudSelBtnClick
        end
      end
      object StudDataBox: TGroupBox
        Left = 0
        Top = 161
        Width = 1029
        Height = 569
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object StudSelGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 552
          Align = alClient
          DataSource = DM.StuddS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'stud_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 10
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'b_data'
              Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sex'
              Title.Caption = #1055#1086#1083
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'civ'
              Title.Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'region'
              Title.Caption = #1054#1073#1083#1072#1089#1090#1100' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gorod'
              Title.Caption = #1043#1086#1088#1086#1076
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'adr'
              Title.Caption = #1040#1076#1088#1077#1089
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'to_live'
              Title.Caption = #1046#1080#1074#1077#1090
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mod_t'
              Title.Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dom_t'
              Title.Caption = #1044#1086#1084#1072#1096#1085#1080#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_pr'
              Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'naim_grup'
              Title.Caption = #1043#1088#1091#1087#1087#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'st_email'
              Title.Caption = #1045'-mail'
              Visible = True
            end>
        end
      end
      object StudCondBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 97
        Align = alTop
        Caption = #1054#1090#1073#1086#1088' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
        TabOrder = 3
        DesignSize = (
          1029
          97)
        object Stud_condEdit: TLabeledEdit
          Left = 0
          Top = 29
          Width = 1026
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 161
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
          TabOrder = 0
        end
        object Stud_fnd_adr_edit: TLabeledEdit
          Left = 3
          Top = 70
          Width = 1042
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 120
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1072#1076#1088#1077#1089#1091
          TabOrder = 1
          OnKeyPress = Stud_fnd_adr_editKeyPress
        end
        object CbSecondnaim: TCheckBox
          Left = 312
          Top = 8
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1054#1090#1095#1077#1089#1090#1074#1072' '#1085#1077#1090
          TabOrder = 2
          OnClick = CbSecondnaimClick
        end
      end
    end
    object InsTab: TTabSheet
      Caption = #1042#1074#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1075#1088#1091#1087#1087#1077
      ImageIndex = 1
      object Grupp_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 321
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          321)
        object SpecGinsLbl: TLabel
          Left = 3
          Top = 200
          Width = 78
          Height = 13
          Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        end
        object TimePanel: TLabel
          Left = 350
          Top = 272
          Width = 3
          Height = 13
          Align = alCustom
          Anchors = [akLeft, akRight]
        end
        object Grupp_naim_g_inp: TLabeledEdit
          Left = 2
          Top = 72
          Width = 1026
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 115
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1075#1088#1091#1087#1087#1099
          TabOrder = 0
        end
        object GradeUpDown: TUpDown
          Left = 3
          Top = 148
          Width = 17
          Height = 21
          AlignButton = udLeft
          Anchors = [akLeft]
          Associate = GradeEdit
          Orientation = udHorizontal
          TabOrder = 1
        end
        object GradeEdit: TEdit
          Left = 19
          Top = 148
          Width = 1069
          Height = 21
          Cursor = crVSplit
          Align = alCustom
          Anchors = [akLeft, akRight]
          Color = clWhite
          TabOrder = 2
          Text = '0'
        end
        object gradelbl: TStaticText
          Left = 3
          Top = 125
          Width = 28
          Height = 17
          Align = alCustom
          Caption = #1050#1091#1088#1089
          TabOrder = 3
        end
        object SpecGrinsDBL: TDBLookupComboBox
          Left = 3
          Top = 219
          Width = 1023
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'spec_id'
          ListField = 'spec_maim'
          ListSource = DM.spectDS
          TabOrder = 4
        end
      end
      object Grupp_ins_btn_Box: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object Grupp_insBtn: TButton
          Left = 264
          Top = 27
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
        end
      end
      object Grupp_DataInsBox: TGroupBox
        Left = 0
        Top = 321
        Width = 1029
        Height = 409
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object Grupp_insGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 392
          Align = alClient
          DataSource = DM.GruppDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'grup_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'naim_grup'
              Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              Width = 500
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kurs'
              Title.Caption = #1050#1091#1088#1089
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spec_maim'
              Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
              Width = 500
              Visible = True
            end>
        end
      end
    end
    object UpdTab: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1075#1088#1091#1087#1087#1077
      ImageIndex = 2
      object Grupp_upd_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 121
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          121)
        object grupdLbl: TLabel
          Left = 16
          Top = 55
          Width = 24
          Height = 13
          Caption = #1050#1091#1088#1089
        end
        object Grupplbl: TStaticText
          Left = 16
          Top = 12
          Width = 86
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1075#1088#1091#1087#1087#1091
          TabOrder = 0
        end
        object GruppUpdDBL: TDBLookupComboBox
          Left = 16
          Top = 28
          Width = 998
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'grup_id'
          ListField = 'naim_grup'
          ListSource = DM.GruppDS
          TabOrder = 1
        end
        object UpDown_upd_grade: TUpDown
          Left = 1001
          Top = 74
          Width = 16
          Height = 21
          Anchors = [akLeft]
          Associate = gr_upd_grader
          TabOrder = 2
        end
        object gr_upd_grader: TEdit
          Left = 16
          Top = 74
          Width = 985
          Height = 21
          Cursor = crVSplit
          Align = alCustom
          Anchors = [akLeft, akRight]
          TabOrder = 3
          Text = '0'
        end
      end
      object Grupp_upd_btn_Box: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object Grupp_upd_Btn: TButton
          Left = 296
          Top = 11
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
        end
      end
      object Grupp_upd_dataBox: TGroupBox
        Left = 0
        Top = 121
        Width = 1029
        Height = 609
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object GruppupdDataGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 592
          Align = alClient
          DataSource = DM.GruppDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'grup_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'naim_grup'
              Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              Width = 500
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kurs'
              Title.Caption = #1050#1091#1088#1089
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spec_maim'
              Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
              Width = 500
              Visible = True
            end>
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      ImageIndex = 3
      object delgrdatacBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 90
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          90)
        object delgrlbl: TStaticText
          Left = 2
          Top = 29
          Width = 86
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1075#1088#1091#1087#1087#1091
          TabOrder = 0
        end
        object delgrDBL: TDBLookupComboBox
          Left = 3
          Top = 52
          Width = 998
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'grup_id'
          ListField = 'naim_grup'
          ListSource = DM.GruppDS
          TabOrder = 1
        end
      end
      object dlgrbtnBox: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object delgrBtn: TButton
          Left = 296
          Top = 11
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
        end
      end
      object degrdataBox: TGroupBox
        Left = 0
        Top = 90
        Width = 1029
        Height = 640
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object delgrgrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 623
          Align = alClient
          DataSource = DM.GruppDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'grup_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'naim_grup'
              Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              Width = 500
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kurs'
              Title.Caption = #1050#1091#1088#1089
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spec_maim'
              Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
              Width = 500
              Visible = True
            end>
        end
      end
    end
  end
end

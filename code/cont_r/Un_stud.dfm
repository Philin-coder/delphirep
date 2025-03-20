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
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
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
              Width = 158
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
      Caption = #1042#1074#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1089#1090#1091#1076#1077#1085#1090#1077
      ImageIndex = 1
      object Stud_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 321
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object Stud_inp_page: TPageControl
          Left = 2
          Top = 15
          Width = 1025
          Height = 304
          ActivePage = Stud_about_page_three
          Align = alClient
          TabOrder = 0
          object Stud_about_page_one: TTabSheet
            Caption = #1054' '#1089#1090#1091#1076#1077#1085#1090#1077
            DesignSize = (
              1017
              276)
            object insstud_bdataclbl: TStaticText
              Left = 3
              Top = 3
              Width = 84
              Height = 17
              Align = alCustom
              Anchors = [akLeft, akRight]
              Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1082#1077#1080#1103
              TabOrder = 0
            end
            object st_bdata_inp: TDateTimePicker
              Left = 3
              Top = 26
              Width = 998
              Height = 21
              Anchors = [akLeft, akRight]
              Date = 45733.896571354170000000
              Time = 45733.896571354170000000
              TabOrder = 1
              OnCloseUp = st_bdata_inpCloseUp
            end
            object St_sex_inp: TComboBox
              Left = 3
              Top = 84
              Width = 1001
              Height = 21
              Anchors = [akLeft, akRight]
              ItemHeight = 13
              TabOrder = 2
              OnChange = St_sex_inpChange
              OnCloseUp = St_sex_inpCloseUp
              Items.Strings = (
                #1052#1091#1078#1089#1082#1086#1081
                #1046#1077#1085#1089#1082#1086#1081)
            end
            object civ_inp: TLabeledEdit
              Left = 3
              Top = 136
              Width = 998
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 68
              EditLabel.Height = 13
              EditLabel.Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
              TabOrder = 3
              OnExit = civ_inpExit
            end
            object region_inp: TLabeledEdit
              Left = 3
              Top = 192
              Width = 998
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 43
              EditLabel.Height = 13
              EditLabel.Caption = #1054#1073#1083#1072#1089#1090#1100
              TabOrder = 4
              OnExit = region_inpExit
            end
            object gorod_inp: TLabeledEdit
              Left = 3
              Top = 236
              Width = 1011
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 31
              EditLabel.Height = 13
              EditLabel.Caption = #1043#1086#1088#1086#1076
              TabOrder = 5
              OnExit = gorod_inpExit
            end
            object sexlbl: TStaticText
              Left = 3
              Top = 61
              Width = 23
              Height = 17
              Align = alCustom
              Caption = #1055#1086#1083
              TabOrder = 6
            end
          end
          object Stud_about_page_two: TTabSheet
            Caption = #1054' '#1089#1090#1091#1076#1077#1085#1090#1077
            ImageIndex = 1
            DesignSize = (
              1017
              276)
            object adr_inp: TLabeledEdit
              Left = 0
              Top = 24
              Width = 998
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 96
              EditLabel.Height = 13
              EditLabel.Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103
              PopupMenu = adrMenu
              TabOrder = 0
              OnExit = adr_inpExit
            end
            object fam_inp: TLabeledEdit
              Left = 3
              Top = 72
              Width = 998
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 44
              EditLabel.Height = 13
              EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
              TabOrder = 1
              OnExit = fam_inpExit
            end
            object naim_inp: TLabeledEdit
              Left = 3
              Top = 136
              Width = 998
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 19
              EditLabel.Height = 13
              EditLabel.Caption = #1048#1084#1103
              TabOrder = 2
              OnExit = naim_inpExit
            end
            object otch_inp: TLabeledEdit
              Left = 3
              Top = 200
              Width = 998
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 49
              EditLabel.Height = 13
              EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              TabOrder = 3
              OnExit = otch_inpExit
            end
            object if_not: TGroupBox
              Left = 0
              Top = 227
              Width = 1017
              Height = 49
              Align = alCustom
              Anchors = [akLeft, akRight]
              TabOrder = 4
              object secondNameCB: TCheckBox
                Left = 416
                Top = 16
                Width = 153
                Height = 17
                Align = alCustom
                Anchors = [akLeft, akRight]
                Caption = #1054#1090#1095#1077#1089#1090#1074#1072' '#1085#1077#1090
                TabOrder = 0
                OnClick = secondNameCBClick
              end
            end
          end
          object about_stud_page_three: TTabSheet
            Caption = #1054' '#1089#1090#1091#1076#1077#1085#1090#1077
            ImageIndex = 2
            DesignSize = (
              1017
              276)
            object mesto_jit_inp: TComboBox
              Left = 3
              Top = 26
              Width = 1011
              Height = 21
              Anchors = [akLeft, akRight]
              ItemHeight = 13
              TabOrder = 0
              OnChange = mesto_jit_inpChange
              OnCloseUp = mesto_jit_inpCloseUp
              Items.Strings = (
                #1057#1098#1077#1084
                #1042' '#1086#1073#1097#1077#1078#1080#1090#1080#1080)
            end
            object Stmobphomelbl: TStaticText
              Left = 0
              Top = 75
              Width = 113
              Height = 17
              Align = alCustom
              Anchors = [akLeft, akRight]
              Caption = #1058#1077#1083#1077#1086#1092#1086#1085' '#1084#1086#1073#1080#1083#1100#1085#1099#1081
              TabOrder = 1
            end
            object Modphone_inp: TMaskEdit
              Left = 2
              Top = 98
              Width = 1012
              Height = 21
              Anchors = [akLeft, akRight]
              TabOrder = 2
              OnExit = Modphone_inpExit
            end
            object dom_t_lbl: TStaticText
              Left = 3
              Top = 147
              Width = 108
              Height = 17
              Align = alCustom
              Anchors = [akLeft, akRight]
              Caption = #1058#1077#1083#1077#1086#1092#1086#1085' '#1076#1086#1084#1072#1096#1085#1080#1081
              TabOrder = 3
            end
            object dom_t_inp: TMaskEdit
              Left = 0
              Top = 170
              Width = 1012
              Height = 21
              Anchors = [akLeft, akRight]
              TabOrder = 4
              OnExit = dom_t_inpExit
            end
            object datepr_lbl: TStaticText
              Left = 3
              Top = 211
              Width = 69
              Height = 17
              Align = alCustom
              Anchors = [akLeft, akRight]
              Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
              TabOrder = 5
            end
            object datapr_inp: TDateTimePicker
              Left = 3
              Top = 234
              Width = 1011
              Height = 21
              Anchors = [akLeft, akRight]
              Date = 45733.896571354170000000
              Time = 45733.896571354170000000
              TabOrder = 6
              OnCloseUp = datapr_inpCloseUp
            end
            object tolivelbl: TStaticText
              Left = 2
              Top = 3
              Width = 67
              Height = 17
              Align = alCustom
              Caption = #1055#1088#1086#1078#1080#1074#1072#1085#1080#1077
              TabOrder = 7
            end
          end
          object Stud_about_page_three: TTabSheet
            Caption = #1054' '#1089#1090#1091#1076#1077#1085#1090#1077
            ImageIndex = 3
            DesignSize = (
              1017
              276)
            object Imgsuccess: TImage
              Left = 0
              Top = 147
              Width = 1017
              Height = 129
              Align = alBottom
              Stretch = True
              Visible = False
            end
            object gr_DBL: TDBLookupComboBox
              Left = -4
              Top = 39
              Width = 993
              Height = 21
              Anchors = [akLeft, akRight]
              KeyField = 'grup_id'
              ListField = 'naim_grup'
              ListSource = DM.GruppDS
              TabOrder = 0
              OnCloseUp = gr_DBLCloseUp
            end
            object Gr_lbl: TStaticText
              Left = 3
              Top = 16
              Width = 40
              Height = 17
              Caption = #1043#1088#1091#1087#1087#1072
              TabOrder = 1
            end
            object st_email_inp: TLabeledEdit
              Left = 3
              Top = 120
              Width = 998
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 28
              EditLabel.Height = 13
              EditLabel.Caption = 'E-mail'
              TabOrder = 2
              OnExit = st_email_inpExit
            end
            object Is_academ_cb: TCheckBox
              Left = 3
              Top = 66
              Width = 190
              Height = 17
              Caption = #1042' '#1072#1082#1072#1076#1077#1084#1080#1095#1077#1089#1082#1086#1084' '#1086#1090#1087#1091#1089#1082#1077
              TabOrder = 3
              OnClick = Is_academ_cbClick
            end
          end
        end
      end
      object Stud_ins_btn_Box: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object Stud_insBtn: TButton
          Left = 264
          Top = 27
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = Stud_insBtnClick
        end
      end
      object Stud_DataInsBox: TGroupBox
        Left = 0
        Top = 321
        Width = 1029
        Height = 409
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object Stud_inp_datagrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 375
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
              Width = 60
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
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'civ'
              Title.Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
              Width = 109
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
        object insProgres_bar: TProgressBar
          Left = 2
          Top = 390
          Width = 1025
          Height = 17
          Align = alBottom
          Min = 1
          Max = 15
          Position = 1
          Step = 1
          TabOrder = 1
        end
      end
    end
    object UpdTab: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1089#1090#1091#1076#1077#1085#1090#1077
      ImageIndex = 2
      object StudupdPC: TPageControl
        Left = 0
        Top = 0
        Width = 1029
        Height = 785
        ActivePage = regectTab
        Align = alClient
        TabOrder = 0
        object akademTab: TTabSheet
          Caption = #1040#1082#1072#1076#1077#1084#1080#1095#1077#1089#1082#1080#1081' '#1086#1090#1087#1091#1089#1082
          object Stud_upd_inp_Box: TGroupBox
            Left = 0
            Top = 0
            Width = 1021
            Height = 121
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 0
            DesignSize = (
              1021
              121)
            object StuddLbl: TLabel
              Left = 16
              Top = 55
              Width = 38
              Height = 13
              Caption = #1040#1082#1072#1076#1077#1084
            end
            object Studplbl: TStaticText
              Left = 16
              Top = 12
              Width = 99
              Height = 17
              Align = alCustom
              Anchors = [akLeft, akRight]
              Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1072
              TabOrder = 0
            end
            object StudUpdDBL: TDBLookupComboBox
              Left = 16
              Top = 28
              Width = 998
              Height = 21
              Align = alCustom
              Anchors = [akLeft, akRight]
              KeyField = 'stud_id'
              ListField = 'fio'
              ListSource = DM.StuddS
              TabOrder = 1
            end
            object StudUpdakademCombo: TComboBox
              Left = 15
              Top = 74
              Width = 999
              Height = 21
              Anchors = [akLeft, akRight]
              ItemHeight = 13
              TabOrder = 2
              OnChange = StudUpdakademComboChange
              Items.Strings = (
                #1054#1090#1087#1088#1072#1074#1080#1090#1100
                #1042#1077#1088#1085#1091#1090#1100)
            end
          end
          object Stud_upd_btn_Box: TGroupBox
            Left = 0
            Top = 702
            Width = 1021
            Height = 55
            Align = alBottom
            TabOrder = 1
            object Stud_upd_Btn: TButton
              Left = 296
              Top = 11
              Width = 305
              Height = 25
              Align = alCustom
              Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
              TabOrder = 0
              OnClick = Stud_upd_BtnClick
            end
          end
          object Stud_upd_dataBox: TGroupBox
            Left = 0
            Top = 121
            Width = 1021
            Height = 581
            Align = alClient
            Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 2
            object Stud_upd_akadenGrd: TDBGrid
              Left = 2
              Top = 15
              Width = 1017
              Height = 564
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
                  Width = 60
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
                  Width = 112
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'civ'
                  Title.Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
                  Width = 109
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
        end
        object regectTab: TTabSheet
          Caption = #1054#1090#1095#1080#1089#1083#1077#1085#1080#1077
          ImageIndex = 1
          object StudrejectinpBox: TGroupBox
            Left = 0
            Top = 0
            Width = 1021
            Height = 121
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 0
            DesignSize = (
              1021
              121)
            object rejectdataLbl: TLabel
              Left = 20
              Top = 78
              Width = 88
              Height = 13
              Caption = #1044#1072#1090#1072' '#1086#1090#1095#1080#1089#1083#1077#1085#1080#1103
            end
            object rejectstudlbl: TStaticText
              Left = 16
              Top = 12
              Width = 99
              Height = 17
              Align = alCustom
              Anchors = [akLeft, akRight]
              Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1072
              TabOrder = 0
            end
            object reject_studDBL: TDBLookupComboBox
              Left = 16
              Top = 28
              Width = 998
              Height = 21
              Align = alCustom
              Anchors = [akLeft, akRight]
              KeyField = 'stud_id'
              ListField = 'fio'
              ListSource = DM.StuddS
              TabOrder = 1
            end
            object regetDateinp: TDateTimePicker
              Left = 20
              Top = 97
              Width = 989
              Height = 21
              Anchors = [akLeft, akRight]
              Date = 45736.586464189820000000
              Time = 45736.586464189820000000
              TabOrder = 2
            end
            object show_reejctCB: TCheckBox
              Left = 144
              Top = 72
              Width = 169
              Height = 17
              Align = alCustom
              Anchors = [akLeft, akRight]
              Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1086#1090#1095#1080#1089#1083#1077#1085#1085#1099#1093
              TabOrder = 3
              OnClick = show_reejctCBClick
            end
          end
          object rejectbtnBox: TGroupBox
            Left = 0
            Top = 702
            Width = 1021
            Height = 55
            Align = alBottom
            TabOrder = 1
            object rejectbtn: TButton
              Left = 296
              Top = 11
              Width = 305
              Height = 25
              Align = alCustom
              Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
              TabOrder = 0
              OnClick = rejectbtnClick
            end
          end
          object rejectdataBox: TGroupBox
            Left = 0
            Top = 121
            Width = 1021
            Height = 581
            Align = alClient
            Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 2
            object rejectGrd: TDBGrid
              Left = 2
              Top = 15
              Width = 1017
              Height = 564
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
                  Width = 60
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
                  Width = 112
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'civ'
                  Title.Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
                  Width = 109
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
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1089#1090#1091#1076#1077#1085#1090#1077
      ImageIndex = 3
      object delstdatacBox: TGroupBox
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
        object delstlbl: TStaticText
          Left = 2
          Top = 29
          Width = 99
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1042#1099#1073#1088#1072#1090#1100' c'#1090#1091#1076#1077#1085#1090#1072
          TabOrder = 0
        end
        object delstDBL: TDBLookupComboBox
          Left = 3
          Top = 52
          Width = 998
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'stud_id'
          ListField = 'fio'
          ListSource = DM.StuddS
          TabOrder = 1
        end
      end
      object dlgsttnBox: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object delstBtn: TButton
          Left = 296
          Top = 11
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = delstBtnClick
        end
      end
      object delstdataBox: TGroupBox
        Left = 0
        Top = 90
        Width = 1029
        Height = 640
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object delstGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 623
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
              Width = 60
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
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'civ'
              Title.Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
              Width = 109
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
    end
  end
  object adrMenu: TPopupMenu
    Left = 776
    object str_add: TMenuItem
      Caption = #1044#1086#1073#1074#1080#1090#1100' '#1091#1083#1080#1094#1091
      OnClick = str_addClick
    end
    object avn_add: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1086#1089#1087#1077#1082#1090
      OnClick = avn_addClick
    end
    object proezd: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1086#1077#1079#1076
      OnClick = proezdClick
    end
    object orign_str: TMenuItem
      Caption = #1048#1089#1093#1086#1076#1085#1086#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
      OnClick = orign_strClick
    end
  end
end

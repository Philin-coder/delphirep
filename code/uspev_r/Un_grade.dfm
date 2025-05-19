object Frm_grade: TFrm_grade
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1076#1072#1085#1085#1099#1084#1080' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
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
  object grade_pc: TPageControl
    Left = 0
    Top = 0
    Width = 1037
    Height = 594
    ActivePage = selTab
    Align = alClient
    TabOrder = 0
    object selTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086#1073' '#1086#1094#1077#1085#1082#1077
      object grade_data_box: TGroupBox
        Left = 0
        Top = 331
        Width = 1029
        Height = 173
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object gradeGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 156
          Align = alClient
          DataSource = DM.gradeds
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
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stud_fio'
              Title.Caption = #1060#1048#1054' '#1089#1090#1091#1076#1077#1085#1090#1072
              Width = 104
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
              Title.Caption = #1060#1048#1054' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
              Width = 81
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
      object grade_gr_box: TGroupBox
        Left = 0
        Top = 121
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1072#1074#1082#1072' '#1087#1086' '
        TabOrder = 1
        object grade_fio_Radio: TRadioButton
          Left = 56
          Top = 40
          Width = 201
          Height = 17
          Align = alCustom
          Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1060#1048#1054' c'#1090#1091#1076#1077#1085#1090#1072
          TabOrder = 0
          OnClick = grade_fio_RadioClick
        end
        object grade_Radio: TRadioButton
          Left = 376
          Top = 40
          Width = 113
          Height = 17
          Align = alCustom
          Caption = #1055#1086' '#1086#1094#1077#1085#1082#1077
          TabOrder = 1
          OnClick = grade_RadioClick
        end
        object grade_reset_Radio: TRadioButton
          Left = 776
          Top = 40
          Width = 113
          Height = 17
          Align = alCustom
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 2
          OnClick = grade_reset_RadioClick
        end
      end
      object gradebtnBox: TGroupBox
        Left = 0
        Top = 504
        Width = 1029
        Height = 62
        Align = alBottom
        TabOrder = 2
        object grade_sel_btn: TButton
          Left = 504
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1088#1072#1090#1100
          TabOrder = 0
          OnClick = grade_sel_btnClick
        end
      end
      object TeacherinpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 121
        Align = alTop
        Caption = #1055#1086#1080#1089#1082' '#1087#1086' '
        TabOrder = 3
        DesignSize = (
          1029
          121)
        object grade_fnd_edit: TLabeledEdit
          Left = 3
          Top = 94
          Width = 1006
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 158
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1060#1048#1054' '#1089#1090#1091#1076#1077#1085#1090#1072
          TabOrder = 0
          OnKeyPress = grade_fnd_editKeyPress
        end
        object grade_cond_edit: TLabeledEdit
          Left = 3
          Top = 32
          Width = 1006
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 225
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1060#1048#1054'  '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
          TabOrder = 1
        end
      end
      object showsbdatabox: TGroupBox
        Left = 0
        Top = 226
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1096#1090#1072#1090#1072'  '#1087#1086' '#1087#1088#1077#1076#1084#1077#1090#1072#1084
        TabOrder = 4
        object showsbDBLList: TDBLookupListBox
          Left = 2
          Top = 15
          Width = 1025
          Height = 82
          Align = alClient
          KeyField = 'id_grade'
          ListField = 'stud_fio;grade_value; date'
          ListSource = DM.gradeds
          TabOrder = 0
        end
      end
    end
    object insTab: TTabSheet
      Caption = #1042#1074#1086#1076' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1077
      ImageIndex = 1
      object ins_teacher_data_box: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 399
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object teacher_ins_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 382
          Align = alClient
          DataSource = DM.teacherDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_teacher'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'department'
              Title.Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
              Width = 135
              Visible = True
            end>
        end
      end
      object teacher_btn_Box: TGroupBox
        Left = 0
        Top = 504
        Width = 1029
        Height = 62
        Align = alBottom
        TabOrder = 1
        object insBtn: TButton
          Left = 480
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076
          TabOrder = 0
        end
      end
      object teacher_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        DesignSize = (
          1029
          105)
        object fio_inp: TLabeledEdit
          Left = 3
          Top = 32
          Width = 1006
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 51
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1060#1048#1054
          TabOrder = 0
        end
        object dep_inp: TLabeledEdit
          Left = 3
          Top = 78
          Width = 1006
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 94
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
          TabOrder = 1
        end
      end
    end
    object UpdTab: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1088#1077#1088#1086#1076#1072#1074#1072#1090#1077#1083#1077
      ImageIndex = 2
      object upd_teacher_dataBox: TGroupBox
        Left = 0
        Top = 123
        Width = 1029
        Height = 389
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object upd_teacher_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 372
          Align = alClient
          DataSource = DM.teacherDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_teacher'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'department'
              Title.Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
              Width = 135
              Visible = True
            end>
        end
      end
      object upd_teacher_btnBox: TGroupBox
        Left = 0
        Top = 512
        Width = 1029
        Height = 54
        Align = alBottom
        TabOrder = 1
        object teacher_upd_btn: TButton
          Left = 424
          Top = 16
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 0
        end
      end
      object upd_teacher_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 123
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        DesignSize = (
          1029
          123)
        object upd_teacher_t_lbl: TStaticText
          Left = 16
          Top = 16
          Width = 130
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object upd_teacher_DBL: TDBLookupComboBox
          Left = 16
          Top = 39
          Width = 1010
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'id_teacher'
          ListField = 'fio'
          ListSource = DM.teacherDS
          TabOrder = 1
        end
        object upd_teacher_dep_inp: TLabeledEdit
          Left = 16
          Top = 84
          Width = 1010
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 67
          EditLabel.Height = 13
          EditLabel.Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
          TabOrder = 2
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077'  '#1080#1085#1092#1086#1088#1080#1084#1072#1094#1080#1080' '#1086' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1077
      ImageIndex = 3
      object del_teacher_dataBox: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 383
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object del_teacher_delGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 366
          Align = alClient
          DataSource = DM.teacherDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_teacher'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'department'
              Title.Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
              Width = 135
              Visible = True
            end>
        end
      end
      object del_teacher_btnBox: TGroupBox
        Left = 0
        Top = 488
        Width = 1029
        Height = 78
        Align = alBottom
        TabOrder = 1
        object del_teacher_delBtn: TButton
          Left = 448
          Top = 40
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
        end
      end
      object del_teacher_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object del_teacher_t_lbl: TStaticText
          Left = 16
          Top = 24
          Width = 130
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object del_teacher_t_dbl: TDBLookupComboBox
          Left = 16
          Top = 55
          Width = 1010
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'id_teacher'
          ListField = 'fio'
          ListSource = DM.teacherDS
          TabOrder = 1
        end
      end
    end
  end
end

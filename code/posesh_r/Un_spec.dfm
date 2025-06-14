object Frm_spec: TFrm_spec
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1077#1081' '#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
  ClientHeight = 584
  ClientWidth = 1053
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
  object SpecPC: TPageControl
    Left = 0
    Top = 0
    Width = 1053
    Height = 584
    ActivePage = DelTab
    Align = alClient
    TabOrder = 0
    object selTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      ExplicitWidth = 969
      object spec_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1045
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitLeft = 216
        ExplicitTop = 64
        ExplicitWidth = 185
        object spec_cond_edit: TLabeledEdit
          Left = 16
          Top = 32
          Width = 1017
          Height = 21
          EditLabel.Width = 193
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
          TabOrder = 0
        end
        object spec_fnd_edit: TLabeledEdit
          Left = 16
          Top = 72
          Width = 1017
          Height = 21
          EditLabel.Width = 146
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1092#1072#1082#1091#1083#1100#1090#1077#1090#1091
          TabOrder = 1
          OnKeyPress = spec_fnd_editKeyPress
        end
      end
      object spec_data_Box: TGroupBox
        Left = 0
        Top = 210
        Width = 1045
        Height = 286
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        ExplicitLeft = 224
        ExplicitTop = 72
        ExplicitWidth = 185
        ExplicitHeight = 105
        object spec_sel_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1041
          Height = 269
          Align = alClient
          DataSource = dm.SpecDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_speciality'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'faculty'
              Title.Caption = #1060#1072#1082#1091#1083#1100#1090#1077#1090
              Visible = True
            end>
        end
      end
      object spec_groupr_Box: TGroupBox
        Left = 0
        Top = 105
        Width = 1045
        Height = 105
        Align = alTop
        Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1087#1086
        TabOrder = 2
        ExplicitLeft = 224
        ExplicitTop = 224
        ExplicitWidth = 185
        object spec_name_radio: TRadioButton
          Left = 56
          Top = 48
          Width = 113
          Height = 17
          Caption = #1055#1086' '#1085#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1102
          TabOrder = 0
          OnClick = spec_name_radioClick
        end
        object spec_faculity_radio: TRadioButton
          Left = 320
          Top = 48
          Width = 113
          Height = 17
          Caption = #1055#1086' '#1092#1072#1082#1091#1083#1100#1090#1077#1090#1091
          TabOrder = 1
          OnClick = spec_faculity_radioClick
        end
        object spec_reset_radio: TRadioButton
          Left = 672
          Top = 48
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 2
          OnClick = spec_reset_radioClick
        end
      end
      object spec_btn_Box: TGroupBox
        Left = 0
        Top = 496
        Width = 1045
        Height = 60
        Align = alBottom
        TabOrder = 3
        ExplicitWidth = 969
        object spec_sel_btn: TButton
          Left = 328
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1088#1072#1090#1100
          TabOrder = 0
          OnClick = spec_sel_btnClick
        end
      end
    end
    object insTab: TTabSheet
      Caption = #1042#1074#1086#1076' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      ImageIndex = 1
      ExplicitWidth = 969
      object ins_Spec_data_Box: TGroupBox
        Left = 0
        Top = 105
        Width = 1045
        Height = 383
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitLeft = 416
        ExplicitTop = 104
        ExplicitWidth = 185
        ExplicitHeight = 105
        object ins_Spec_Grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1041
          Height = 366
          Align = alClient
          DataSource = dm.SpecDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_speciality'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'faculty'
              Title.Caption = #1060#1072#1082#1091#1083#1100#1090#1077#1090
              Visible = True
            end>
        end
      end
      object ins_Spec_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1045
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        ExplicitLeft = 424
        ExplicitTop = 112
        ExplicitWidth = 185
        object ins_Spec_faculity_inp: TLabeledEdit
          Left = 24
          Top = 78
          Width = 1017
          Height = 21
          EditLabel.Width = 56
          EditLabel.Height = 13
          EditLabel.Caption = #1060#1072#1082#1091#1083#1100#1090#1077#1090
          TabOrder = 0
        end
        object ins_Spec_name_inp: TLabeledEdit
          Left = 24
          Top = 40
          Width = 1017
          Height = 21
          EditLabel.Width = 152
          EditLabel.Height = 13
          EditLabel.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
          TabOrder = 1
        end
      end
      object ins_Spec_btn_Box: TGroupBox
        Left = 0
        Top = 488
        Width = 1045
        Height = 68
        Align = alBottom
        TabOrder = 2
        object ins_Spec_ins_btn: TButton
          Left = 416
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1089#1090#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = ins_Spec_ins_btnClick
        end
      end
    end
    object UpdTab: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      ImageIndex = 2
      ExplicitWidth = 969
      object spec_upd_data_Box: TGroupBox
        Left = 0
        Top = 129
        Width = 1045
        Height = 375
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitLeft = 272
        ExplicitTop = 152
        ExplicitWidth = 185
        ExplicitHeight = 105
        object spec_upd_grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1041
          Height = 358
          Align = alClient
          DataSource = dm.SpecDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_speciality'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'faculty'
              Title.Caption = #1060#1072#1082#1091#1083#1100#1090#1077#1090
              Visible = True
            end>
        end
      end
      object spec_upd_btn_Box: TGroupBox
        Left = 0
        Top = 504
        Width = 1045
        Height = 52
        Align = alBottom
        TabOrder = 1
        object spec_upd_btn: TButton
          Left = 296
          Top = 24
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 0
          OnClick = spec_upd_btnClick
        end
      end
      object spec_upd_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1045
        Height = 129
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        ExplicitLeft = 16
        ExplicitTop = 3
        object spec_upd_name_inp: TLabeledEdit
          Left = 16
          Top = 96
          Width = 1017
          Height = 21
          EditLabel.Width = 78
          EditLabel.Height = 13
          EditLabel.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
          TabOrder = 0
        end
        object spec_name_lbl: TStaticText
          Left = 16
          Top = 16
          Width = 127
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
          TabOrder = 1
        end
        object spec_upd_name_DBL: TDBLookupComboBox
          Left = 16
          Top = 39
          Width = 1017
          Height = 21
          KeyField = 'id_speciality'
          ListField = 'name'
          ListSource = dm.SpecDS
          TabOrder = 2
        end
      end
    end
    object DelTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      ImageIndex = 3
      ExplicitWidth = 969
      object spec_del_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1045
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitLeft = 400
        ExplicitTop = 120
        ExplicitWidth = 185
        object sp_del_spec_DBL: TDBLookupComboBox
          Left = 16
          Top = 71
          Width = 1017
          Height = 21
          KeyField = 'id_speciality'
          ListField = 'name'
          ListSource = dm.SpecDS
          TabOrder = 0
        end
        object sp_del_spec_lBL: TStaticText
          Left = 16
          Top = 32
          Width = 127
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
          TabOrder = 1
        end
      end
      object spec_del_btn_Box: TGroupBox
        Left = 0
        Top = 488
        Width = 1045
        Height = 68
        Align = alBottom
        TabOrder = 1
        object spec_del_btn: TButton
          Left = 416
          Top = 32
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = spec_del_btnClick
        end
      end
      object del_data_Box: TGroupBox
        Left = 0
        Top = 105
        Width = 1045
        Height = 383
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        ExplicitLeft = 456
        ExplicitTop = 288
        ExplicitWidth = 185
        ExplicitHeight = 105
        object Del_sp_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1041
          Height = 366
          Align = alClient
          DataSource = dm.SpecDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_speciality'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'faculty'
              Title.Caption = #1060#1072#1082#1091#1083#1100#1090#1077#1090
              Visible = True
            end>
        end
      end
    end
  end
end

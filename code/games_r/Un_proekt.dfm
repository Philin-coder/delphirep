object Frm_proekt: TFrm_proekt
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072'  '#1088#1072#1073#1086#1090#1099' '#1089' '#1076#1072#1085#1085#1099#1084#1080' '#1086'  '#1087#1088#1086#1077#1082#1090#1077
  ClientHeight = 533
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
  object ProektPC: TPageControl
    Left = 0
    Top = 0
    Width = 1045
    Height = 533
    ActivePage = SelTab
    Align = alClient
    TabOrder = 0
    object SelTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1088#1086#1077#1082#1090#1077
      ExplicitHeight = 484
      object ProektcondBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 129
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object Proekt_cond_Edit: TLabeledEdit
          Left = 19
          Top = 40
          Width = 990
          Height = 21
          EditLabel.Width = 206
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1084#1080#1077' '#1087#1086' '#1060#1048#1054' '#1084#1077#1077#1085#1076#1078#1077#1088#1072
          TabOrder = 0
        end
        object Proekt_fnd_Edit: TLabeledEdit
          Left = 19
          Top = 88
          Width = 990
          Height = 21
          EditLabel.Width = 119
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086'  '#1078#1072#1085#1088#1091
          TabOrder = 1
          OnKeyPress = Proekt_fnd_EditKeyPress
        end
      end
      object ProektGrouperBox: TGroupBox
        Left = 0
        Top = 129
        Width = 1037
        Height = 105
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086
        TabOrder = 1
        object Proekt_m_fio_Radio: TRadioButton
          Left = 40
          Top = 32
          Width = 161
          Height = 17
          Caption = #1055#1086'  '#1060#1048#1054' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
          TabOrder = 0
          OnClick = Proekt_m_fio_RadioClick
        end
        object Proekt_reset_Radio: TRadioButton
          Left = 616
          Top = 32
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 1
          OnClick = Proekt_reset_RadioClick
        end
        object proekt_janr_Radio: TRadioButton
          Left = 312
          Top = 32
          Width = 193
          Height = 17
          Caption = #1055#1086'  '#1078#1072#1085#1088#1091
          TabOrder = 2
          OnClick = proekt_janr_RadioClick
        end
      end
      object ProektdataBox: TGroupBox
        Left = 0
        Top = 234
        Width = 1037
        Height = 218
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1083#1072#1085#1085#1099#1093
        TabOrder = 2
        ExplicitHeight = 197
        object Proekt_selGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 201
          Align = alClient
          DataSource = DM.proektDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'N_Proekta'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1072#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nam_proect'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'janr'
              Title.Caption = #1046#1072#1085#1088
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_nash'
              Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090#1099
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost_plan'
              Title.Caption = #1062#1077#1085#1072' '#1087#1083#1072#1085#1086#1074#1072#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost_fact'
              Title.Caption = #1062#1077#1085#1072' '#1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dataend'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dataendplan'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1087#1083#1072#1085#1086#1074#1072#1103
              Visible = True
            end>
        end
      end
      object ProektbtnBox: TGroupBox
        Left = 0
        Top = 452
        Width = 1037
        Height = 53
        Align = alBottom
        TabOrder = 3
        ExplicitTop = 431
        object Proekt_sel_Btn: TButton
          Left = 352
          Top = 25
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1088#1072#1090#1100
          TabOrder = 0
          OnClick = Proekt_sel_BtnClick
        end
      end
    end
    object insTab: TTabSheet
      Caption = #1042#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1088#1086#1077#1082#1090#1077
      ImageIndex = 1
      ExplicitHeight = 484
      object proekt_data_Box: TGroupBox
        Left = 0
        Top = 297
        Width = 1037
        Height = 140
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object ins_pr_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 123
          Align = alClient
          DataSource = DM.proektDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'N_Proekta'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1072#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nam_proect'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'janr'
              Title.Caption = #1046#1072#1085#1088
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_nash'
              Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090#1099
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost_plan'
              Title.Caption = #1062#1077#1085#1072' '#1087#1083#1072#1085#1086#1074#1072#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost_fact'
              Title.Caption = #1062#1077#1085#1072' '#1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dataend'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dataendplan'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1087#1083#1072#1085#1086#1074#1072#1103
              Visible = True
            end>
        end
      end
      object proekt_btn_Box: TGroupBox
        Left = 0
        Top = 437
        Width = 1037
        Height = 68
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 416
        object proekt_ins_Btn: TButton
          Left = 304
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = proekt_ins_BtnClick
        end
      end
      object about_workerPC: TPageControl
        Left = 0
        Top = 0
        Width = 1037
        Height = 297
        ActivePage = abot_worker_Tab_two
        Align = alTop
        TabOrder = 2
        ExplicitTop = -56
        object abot_worker_Tab_one: TTabSheet
          Caption = #1054' '#1087#1088#1086#1077#1082#1090#1077
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object proekt_inp_box_one: TGroupBox
            Left = 0
            Top = 0
            Width = 1029
            Height = 269
            Align = alClient
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 0
            ExplicitTop = 24
            object ins_proekt_nam_inp: TLabeledEdit
              Left = 19
              Top = 48
              Width = 990
              Height = 21
              EditLabel.Width = 145
              EditLabel.Height = 13
              EditLabel.Caption = #1042#1074#1086#1076' '#1085#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1103' '#1087#1088#1086#1077#1082#1090#1072
              TabOrder = 0
            end
            object ins_pr_phone_lbl: TStaticText
              Left = 19
              Top = 149
              Width = 183
              Height = 17
              Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090#1099' '#1085#1072#1076' '#1087#1088#1086#1077#1082#1090#1086#1084
              TabOrder = 1
            end
            object ins_proekt_janr_inp: TLabeledEdit
              Left = 19
              Top = 104
              Width = 990
              Height = 21
              EditLabel.Width = 60
              EditLabel.Height = 13
              EditLabel.Caption = #1042#1074#1086#1076' '#1078#1072#1085#1088#1072
              TabOrder = 2
            end
            object ins_pr_date_nash_inp: TDateTimePicker
              Left = 19
              Top = 172
              Width = 990
              Height = 21
              Date = 45819.470418125000000000
              Time = 45819.470418125000000000
              TabOrder = 3
            end
            object ins_pr_men_lbl: TStaticText
              Left = 19
              Top = 199
              Width = 57
              Height = 17
              Caption = #1052#1077#1085#1077#1076#1078#1077#1088
              TabOrder = 4
            end
            object ins_pr_men_dbl: TDBLookupComboBox
              Left = 19
              Top = 222
              Width = 990
              Height = 21
              KeyField = 'Id_manager'
              ListField = 'fio'
              ListSource = DM.menDS
              TabOrder = 5
            end
          end
        end
        object abot_worker_Tab_two: TTabSheet
          Caption = #1054' '#1087#1088#1086#1077#1082#1090#1077
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object proekt_inp_box_two: TGroupBox
            Left = 0
            Top = 0
            Width = 1029
            Height = 269
            Align = alClient
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 0
            object ins_pr_cost_plan_inp: TLabeledEdit
              Left = 19
              Top = 48
              Width = 990
              Height = 21
              EditLabel.Width = 104
              EditLabel.Height = 13
              EditLabel.Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
              TabOrder = 0
            end
            object ins_pr_cost_fact_inp: TLabeledEdit
              Left = 19
              Top = 120
              Width = 990
              Height = 21
              EditLabel.Width = 122
              EditLabel.Height = 13
              EditLabel.Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
              TabOrder = 1
            end
            object ins_pr_data_end_lbl: TStaticText
              Left = 19
              Top = 173
              Width = 257
              Height = 17
              Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1088#1072#1073#1086#1090#1099' '#1085#1072#1076' '#1087#1088#1086#1077#1082#1090#1086#1084'('#1087#1083#1072#1085#1086#1074#1072#1103')'
              TabOrder = 2
            end
            object ins_pr_data_end_inp: TDateTimePicker
              Left = 19
              Top = 204
              Width = 990
              Height = 21
              Date = 45819.470418125000000000
              Time = 45819.470418125000000000
              TabOrder = 3
            end
          end
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1088#1086#1077#1082#1090#1077
      ImageIndex = 2
      ExplicitHeight = 484
      object proekt_upd_data_Box: TGroupBox
        Left = 0
        Top = 105
        Width = 1037
        Height = 340
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitHeight = 319
        object upd_pr_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 323
          Align = alClient
          DataSource = DM.proektDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'N_Proekta'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1072#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nam_proect'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'janr'
              Title.Caption = #1046#1072#1085#1088
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_nash'
              Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090#1099
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost_plan'
              Title.Caption = #1062#1077#1085#1072' '#1087#1083#1072#1085#1086#1074#1072#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost_fact'
              Title.Caption = #1062#1077#1085#1072' '#1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dataend'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103
              Width = 134
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dataendplan'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1087#1083#1072#1085#1086#1074#1072#1103
              Width = 245
              Visible = True
            end>
        end
      end
      object proekt_upd_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object proekt_upd_proekt_lbl: TStaticText
          Left = 16
          Top = 17
          Width = 75
          Height = 17
          Caption = #1042#1099#1073#1086#1088' '#1087#1088#1086#1077#1082#1090
          TabOrder = 0
        end
        object proekt_upd_u_dbl: TDBLookupComboBox
          Left = 16
          Top = 32
          Width = 1009
          Height = 21
          KeyField = 'N_Proekta'
          ListField = 'Nam_proect'
          ListSource = DM.proektDS
          TabOrder = 1
        end
        object proekt_upd_dataendplan_lbl: TStaticText
          Left = 13
          Top = 61
          Width = 123
          Height = 17
          Caption = ' '#1044#1072#1090#1072' '#1086#1082#1086#1085#1080#1103' '#1087#1083#1072#1085#1086#1074#1072#1103
          TabOrder = 2
        end
        object proekt_u_dataendplan_inp: TDateTimePicker
          Left = 13
          Top = 78
          Width = 1006
          Height = 21
          Date = 45816.718279895830000000
          Time = 45816.718279895830000000
          TabOrder = 3
        end
      end
      object proekt_upd_btnBox: TGroupBox
        Left = 0
        Top = 445
        Width = 1037
        Height = 60
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 424
        object proekt_upd_btn: TButton
          Left = 312
          Top = 16
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 0
          OnClick = proekt_upd_btnClick
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1088#1086#1077#1082#1090#1077
      ImageIndex = 3
      ExplicitHeight = 484
      object proekt_del_data_Box: TGroupBox
        Left = 0
        Top = 73
        Width = 1037
        Height = 372
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitHeight = 351
        object proekt_Del_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 355
          Align = alClient
          DataSource = DM.proektDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'N_Proekta'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1072#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nam_proect'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'janr'
              Title.Caption = #1046#1072#1085#1088
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_nash'
              Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090#1099
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost_plan'
              Title.Caption = #1062#1077#1085#1072' '#1087#1083#1072#1085#1086#1074#1072#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost_fact'
              Title.Caption = #1062#1077#1085#1072' '#1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dataend'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dataendplan'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1087#1083#1072#1085#1086#1074#1072#1103
              Visible = True
            end>
        end
      end
      object proekt_del_btn_Box: TGroupBox
        Left = 0
        Top = 445
        Width = 1037
        Height = 60
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 424
        object proekt_del_btn: TButton
          Left = 408
          Top = 24
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = proekt_del_btnClick
        end
      end
      object proekt_del_ipp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 73
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object proekt_del_e_lbl: TStaticText
          Left = 16
          Top = 25
          Width = 75
          Height = 17
          Caption = #1042#1099#1073#1086#1088' '#1087#1088#1086#1077#1082#1090
          TabOrder = 0
        end
        object proekt_del_e_dbl: TDBLookupComboBox
          Left = 16
          Top = 40
          Width = 1009
          Height = 21
          KeyField = 'N_Proekta'
          ListField = 'Nam_proect'
          ListSource = DM.proektDS
          TabOrder = 1
        end
      end
    end
  end
end

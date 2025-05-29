object Frm_klient: TFrm_klient
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1076#1072#1085#1085#1099#1084#1080'  '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 865
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
  object klient_PC: TPageControl
    Left = 0
    Top = 0
    Width = 1037
    Height = 865
    ActivePage = updTab
    Align = alClient
    TabOrder = 0
    object selTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1082#1083#1080#1077#1085#1090#1077
      ExplicitHeight = 604
      object sel_klient_InpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 153
        Align = alTop
        Anchors = [akTop, akRight]
        Caption = #1055#1086#1080#1089#1082' '#1087#1086':'
        TabOrder = 0
        object klient_condEdit: TLabeledEdit
          Left = 0
          Top = 48
          Width = 1054
          Height = 21
          EditLabel.Width = 206
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080' '#1082#1083#1080#1077#1085#1090#1072
          TabOrder = 0
        end
        object klient_fndEdit: TLabeledEdit
          Left = 3
          Top = 104
          Width = 1030
          Height = 21
          EditLabel.Width = 134
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1086#1087#1080#1089#1072#1085#1080#1102
          TabOrder = 1
          OnKeyPress = klient_fndEditKeyPress
        end
      end
      object sel_klient_btnBox: TGroupBox
        Left = 0
        Top = 777
        Width = 1029
        Height = 60
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 544
        object sel_klient_btn: TButton
          Left = 432
          Top = 16
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1086#1088
          TabOrder = 0
          OnClick = sel_klient_btnClick
        end
      end
      object sel_klient_grouperBox: TGroupBox
        Left = 0
        Top = 153
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '
        TabOrder = 2
        object sel_klient_fio_m_radio: TRadioButton
          Left = 56
          Top = 40
          Width = 129
          Height = 17
          Caption = #1055#1086' '#1092#1072#1084#1080#1083#1080#1080' '#1082#1083#1080#1077#1085#1090#1072
          TabOrder = 0
          OnClick = sel_klient_fio_m_radioClick
        end
        object sel_klient_opis_radio: TRadioButton
          Left = 344
          Top = 40
          Width = 113
          Height = 17
          Caption = #1055#1086' '#1086#1087#1080#1089#1072#1085#1080#1102
          TabOrder = 1
          OnClick = sel_klient_opis_radioClick
        end
        object sel_klient_reset_radio: TRadioButton
          Left = 664
          Top = 40
          Width = 113
          Height = 17
          Caption = 'C'#1073#1088#1086#1089
          TabOrder = 2
          OnClick = sel_klient_reset_radioClick
        end
      end
      object sel_klient_dataBox: TGroupBox
        Left = 0
        Top = 258
        Width = 1029
        Height = 519
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1099#1093' '
        TabOrder = 3
        ExplicitHeight = 286
        object sel_klient_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 502
          Align = alClient
          DataSource = DM.klientDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'klient_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'naim'
              Title.Caption = #1048#1084#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'otch'
              Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'snmae'
              Title.Caption = #1060#1072#1084#1080#1083#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'b_date'
              Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cont'
              Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'phone'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nazv'
              Title.Caption = #1055#1083#1072#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'opis'
              Title.Caption = #1059#1089#1083#1091#1075#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email'
              Title.Caption = 'e-mail'
              Visible = True
            end>
        end
      end
    end
    object InsTab: TTabSheet
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1082#1083#1080#1077#1085#1090#1077
      ImageIndex = 1
      ExplicitHeight = 604
      object klient_data_box: TGroupBox
        Left = 0
        Top = 529
        Width = 1029
        Height = 240
        Align = alClient
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitTop = 433
        ExplicitHeight = 103
        object ins_klient_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 223
          Align = alClient
          DataSource = DM.klientDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'klient_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'naim'
              Title.Caption = #1048#1084#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'otch'
              Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'snmae'
              Title.Caption = #1060#1072#1084#1080#1083#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'b_date'
              Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cont'
              Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'phone'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nazv'
              Title.Caption = #1055#1083#1072#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'opis'
              Title.Caption = #1059#1089#1083#1091#1075#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email'
              Title.Caption = 'e-mail'
              Visible = True
            end>
        end
      end
      object klient_btn_box: TGroupBox
        Left = 0
        Top = 769
        Width = 1029
        Height = 68
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 536
        object klient_ins_btn: TButton
          Left = 400
          Top = 24
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = klient_ins_btnClick
        end
      end
      object aboutclientPC: TPageControl
        Left = 0
        Top = 0
        Width = 1029
        Height = 529
        ActivePage = about_klientTabOne
        Align = alTop
        TabOrder = 2
        object about_klientTabOne: TTabSheet
          Caption = #1054' '#1082#1083#1080#1077#1085#1090#1077
          ExplicitHeight = 341
          object Ins_klient_inp_box: TGroupBox
            Left = 0
            Top = 0
            Width = 1021
            Height = 501
            Align = alClient
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 0
            ExplicitHeight = 405
            object ins_klient_naim_inp: TLabeledEdit
              Left = 3
              Top = 32
              Width = 1033
              Height = 21
              EditLabel.Width = 19
              EditLabel.Height = 13
              EditLabel.Caption = #1048#1084#1103
              TabOrder = 0
            end
            object ins_klient_otch_inp: TLabeledEdit
              Left = 3
              Top = 80
              Width = 1028
              Height = 21
              EditLabel.Width = 49
              EditLabel.Height = 13
              EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              TabOrder = 1
            end
            object ins_klient_snmae_inp: TLabeledEdit
              Left = 3
              Top = 128
              Width = 1028
              Height = 21
              EditLabel.Width = 44
              EditLabel.Height = 13
              EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
              TabOrder = 2
            end
            object ins_klient_b_date_lbl: TStaticText
              Left = 3
              Top = 168
              Width = 84
              Height = 17
              Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
              TabOrder = 3
            end
            object ins_klient_b_date_inp: TDateTimePicker
              Left = 3
              Top = 191
              Width = 1014
              Height = 21
              Date = 45806.483005648150000000
              Time = 45806.483005648150000000
              TabOrder = 4
            end
            object ins_klient_cont_inp: TLabeledEdit
              Left = 3
              Top = 248
              Width = 1015
              Height = 21
              EditLabel.Width = 105
              EditLabel.Height = 13
              EditLabel.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
              TabOrder = 5
            end
            object ins_klient_phone_lbl: TStaticText
              Left = 3
              Top = 286
              Width = 48
              Height = 17
              Caption = #1058#1077#1083#1077#1092#1086#1085
              TabOrder = 6
            end
            object ins_klient_phone_inp: TMaskEdit
              Left = 3
              Top = 309
              Width = 1018
              Height = 21
              TabOrder = 7
              OnExit = ins_klient_phone_inpExit
            end
            object ins_klient_id_plan_lbl: TStaticText
              Left = 3
              Top = 336
              Width = 29
              Height = 17
              Caption = #1055#1083#1072#1085
              TabOrder = 8
            end
            object ins_klient_id_plan_DBL: TDBLookupComboBox
              Left = 3
              Top = 359
              Width = 1014
              Height = 21
              KeyField = 'id_plan'
              ListField = 'nazv'
              ListSource = DM.PlanDS
              TabOrder = 9
            end
            object ins_klient_id_usl_DBL: TDBLookupComboBox
              Left = 3
              Top = 409
              Width = 1015
              Height = 21
              KeyField = 'id_usl'
              ListField = 'opis'
              ListSource = DM.uslDS
              TabOrder = 10
            end
            object ins_klient_id_usl_lbl: TStaticText
              Left = 3
              Top = 386
              Width = 39
              Height = 17
              Caption = #1059#1089#1083#1091#1075#1072
              TabOrder = 11
            end
            object ins_klient_email_inp: TLabeledEdit
              Left = 3
              Top = 464
              Width = 1015
              Height = 21
              EditLabel.Width = 28
              EditLabel.Height = 13
              EditLabel.Caption = 'e-mail'
              TabOrder = 12
            end
          end
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1082#1083#1080#1077#1085#1090#1077
      ImageIndex = 2
      ExplicitHeight = 604
      object klient_upd_data_Box: TGroupBox
        Left = 0
        Top = 137
        Width = 1029
        Height = 632
        Align = alClient
        Caption = #1042#1099#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitHeight = 399
        object klient_upDGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 615
          Align = alClient
          DataSource = DM.klientDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'klient_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'naim'
              Title.Caption = #1048#1084#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'otch'
              Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'snmae'
              Title.Caption = #1060#1072#1084#1080#1083#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'b_date'
              Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cont'
              Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'phone'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nazv'
              Title.Caption = #1055#1083#1072#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'opis'
              Title.Caption = #1059#1089#1083#1091#1075#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email'
              Title.Caption = 'e-mail'
              Visible = True
            end>
        end
      end
      object klient_upd_btn_Box: TGroupBox
        Left = 0
        Top = 769
        Width = 1029
        Height = 68
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 536
        object klient_upd_btn: TButton
          Left = 416
          Top = 24
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 0
        end
      end
      object klient_upd_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 137
        Align = alTop
        Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        ExplicitLeft = 2
        ExplicitTop = -6
        object klient_upd_pl_lbl: TStaticText
          Left = 2
          Top = 24
          Width = 93
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
          TabOrder = 0
        end
        object k_plan_id_inp: TDBLookupComboBox
          Left = 3
          Top = 47
          Width = 994
          Height = 21
          KeyField = 'klient_id'
          ListField = 'snmae'
          ListSource = DM.klientDS
          TabOrder = 1
        end
        object upd_klient_cont_inp: TLabeledEdit
          Left = 3
          Top = 100
          Width = 994
          Height = 21
          EditLabel.Width = 105
          EditLabel.Height = 13
          EditLabel.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
          TabOrder = 2
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1083#1072#1085#1077
      ImageIndex = 3
      ExplicitHeight = 604
      object del_plan_data_box: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 664
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitHeight = 431
        object Del_plan_Grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 647
          Align = alClient
          DataSource = DM.PlanDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_plan'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nazv'
              Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'date_n'
              Title.Caption = #1044#1072#1090#1072' '#1074#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1089#1080#1083#1091
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'opis'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1052#1077#1085#1077#1076#1078#1077#1088
              Visible = True
            end>
        end
      end
      object del_plan_inp_box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object del_plan_pl_lbl: TStaticText
          Left = 16
          Top = 40
          Width = 75
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1083#1072#1085
          TabOrder = 0
        end
        object del_plan_id_inp_DBL: TDBLookupComboBox
          Left = 16
          Top = 63
          Width = 994
          Height = 21
          KeyField = 'id_plan'
          ListField = 'nazv'
          ListSource = DM.PlanDS
          TabOrder = 1
        end
      end
      object del_plan_btn_box: TGroupBox
        Left = 0
        Top = 769
        Width = 1029
        Height = 68
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 536
        object del_plan_btn: TButton
          Left = 400
          Top = 24
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
        end
      end
    end
  end
end

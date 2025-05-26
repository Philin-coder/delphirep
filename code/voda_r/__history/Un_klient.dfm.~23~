object Frm_klient: TFrm_klient
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1076#1072#1085#1085#1099#1084#1080'  '#1086' '#1082#1083#1080#1077#1085#1090#1077
  ClientHeight = 708
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
  PixelsPerInch = 96
  TextHeight = 13
  object klientPC: TPageControl
    Left = 0
    Top = 0
    Width = 1032
    Height = 708
    ActivePage = insTab
    Align = alClient
    TabOrder = 0
    object selTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081'  '#1086' '#1082#1083#1080#1077#1085#1090#1077
      object klient_inp_boxBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1024
        Height = 105
        Align = alTop
        Caption = #1055#1086#1080#1089#1082' '#1087#1086' '
        TabOrder = 0
        DesignSize = (
          1024
          105)
        object klientCondEdit: TLabeledEdit
          Left = 0
          Top = 32
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 146
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1077#1076#1077#1085#1080#1077' '#1087#1086' '#1060#1048#1054
          TabOrder = 0
        end
        object klientfndEdit: TLabeledEdit
          Left = 3
          Top = 72
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 120
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1072#1076#1088#1077#1089#1091
          TabOrder = 1
          OnKeyPress = klientfndEditKeyPress
        end
      end
      object klient_data_box: TGroupBox
        Left = 0
        Top = 210
        Width = 1024
        Height = 414
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1079
        TabOrder = 1
        object klient_sel_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 397
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
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1082#1083#1080#1077#1085#1090#1072
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
              FieldName = 'prim'
              Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kont_d'
              Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tel'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pokaz'
              Title.Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'oper_naim'
              Title.Caption = #1048#1084#1103' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nomer'
              Title.Caption = #1053#1086#1084#1077#1088'  '#1089#1095#1077#1090#1095#1080#1082#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio_master'
              Title.Caption = #1060#1048#1054' '#1084#1072#1089#1090#1077#1088#1072
              Visible = True
            end>
        end
      end
      object klient_grouper: TGroupBox
        Left = 0
        Top = 105
        Width = 1024
        Height = 105
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '
        TabOrder = 2
        object klient_fio_Radio: TRadioButton
          Left = 64
          Top = 40
          Width = 129
          Height = 17
          Caption = #1055#1086' '#1060#1048#1054
          TabOrder = 0
          OnClick = klient_fio_RadioClick
        end
        object klient_adr_Radio: TRadioButton
          Left = 288
          Top = 40
          Width = 161
          Height = 17
          Caption = #1055#1086' '#1072#1076#1088#1077#1089#1091
          TabOrder = 1
          OnClick = klient_adr_RadioClick
        end
        object klient_resetRadio: TRadioButton
          Left = 664
          Top = 40
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 2
          OnClick = klient_resetRadioClick
        end
      end
      object klient_btn_Box: TGroupBox
        Left = 0
        Top = 624
        Width = 1024
        Height = 56
        Align = alBottom
        TabOrder = 3
        object klient_sel_Btn: TButton
          Left = 416
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1086#1088
          TabOrder = 0
          OnClick = klient_sel_BtnClick
        end
      end
    end
    object insTab: TTabSheet
      Caption = #1042#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1082#1083#1080#1077#1085#1090#1077
      ImageIndex = 1
      object ins_klient_data_Box: TGroupBox
        Left = 0
        Top = 297
        Width = 1024
        Height = 319
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object ins_klient_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 302
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
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1082#1083#1080#1077#1085#1090#1072
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
              FieldName = 'prim'
              Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kont_d'
              Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tel'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pokaz'
              Title.Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'oper_naim'
              Title.Caption = #1048#1084#1103' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nomer'
              Title.Caption = #1053#1086#1084#1077#1088'  '#1089#1095#1077#1090#1095#1080#1082#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio_master'
              Title.Caption = #1060#1048#1054' '#1084#1072#1089#1090#1077#1088#1072
              Visible = True
            end>
        end
      end
      object ins_klientrbtnBox: TGroupBox
        Left = 0
        Top = 616
        Width = 1024
        Height = 64
        Align = alBottom
        TabOrder = 1
        object ins_klient_insBtn: TButton
          Left = 448
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = ins_klient_insBtnClick
        end
      end
      object about_klientPC: TPageControl
        Left = 0
        Top = 0
        Width = 1024
        Height = 297
        ActivePage = About_client_tab_two
        Align = alTop
        TabOrder = 2
        object about_klient_Tab_one: TTabSheet
          Caption = #1054'  '#1082#1083#1080#1077#1085#1090#1077
          object ins_klient_inp_Box: TGroupBox
            Left = 0
            Top = 0
            Width = 1016
            Height = 266
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1085#1085#1099#1093
            TabOrder = 0
            ExplicitLeft = -8
            ExplicitTop = 3
            DesignSize = (
              1016
              266)
            object ins_klient_fio_inp: TLabeledEdit
              Left = 3
              Top = 34
              Width = 977
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 68
              EditLabel.Height = 13
              EditLabel.Caption = #1060#1048#1054' '#1082#1083#1080#1077#1085#1090#1072
              TabOrder = 0
            end
            object ins_klient_adr_inp: TLabeledEdit
              Left = 3
              Top = 82
              Width = 977
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 76
              EditLabel.Height = 13
              EditLabel.Caption = #1040#1076#1088#1077#1089' '#1082#1083#1080#1077#1085#1090#1072
              TabOrder = 1
            end
            object ins_klient_prin_inp: TLabeledEdit
              Left = 0
              Top = 138
              Width = 977
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 55
              EditLabel.Height = 13
              EditLabel.Caption = #1055#1088#1080#1077#1095#1072#1085#1080#1103
              TabOrder = 2
            end
            object ins_klient_mail_inp: TLabeledEdit
              Left = 3
              Top = 186
              Width = 977
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 24
              EditLabel.Height = 13
              EditLabel.Caption = 'Email'
              TabOrder = 3
            end
            object klient_phone_lbl: TStaticText
              Left = 3
              Top = 224
              Width = 93
              Height = 17
              Caption = #1058#1077#1083#1077#1092#1086#1085' '#1082#1083#1080#1077#1085#1090#1072
              TabOrder = 4
            end
            object klient_phone_inp: TMaskEdit
              Left = 3
              Top = 242
              Width = 974
              Height = 21
              Anchors = [akLeft, akRight]
              TabOrder = 5
              OnExit = klient_phone_inpExit
            end
          end
        end
        object About_client_tab_two: TTabSheet
          Caption = #1054' '#1082#1083#1080#1077#1085#1090#1077
          ImageIndex = 1
          object ins_klient_inp_Box_two: TGroupBox
            Left = 0
            Top = 0
            Width = 1016
            Height = 266
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1085#1085#1099#1093
            TabOrder = 0
            ExplicitLeft = -3
            ExplicitTop = 16
            DesignSize = (
              1016
              266)
            object klient_pokaz_inp: TLabeledEdit
              Left = 3
              Top = 34
              Width = 977
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 54
              EditLabel.Height = 13
              EditLabel.Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103
              TabOrder = 0
              Text = '0'
            end
            object pokaz_grader: TUpDown
              Left = 980
              Top = 34
              Width = 16
              Height = 21
              Anchors = []
              Associate = klient_pokaz_inp
              TabOrder = 1
            end
            object oper_lbl: TStaticText
              Left = 3
              Top = 72
              Width = 54
              Height = 17
              Caption = #1054#1087#1077#1088#1072#1090#1086#1088
              TabOrder = 2
            end
            object schet_lbl: TStaticText
              Left = 0
              Top = 134
              Width = 47
              Height = 17
              Anchors = [akLeft, akBottom]
              Caption = #1057#1095#1077#1090#1095#1080#1082
              TabOrder = 3
            end
            object master_lbl: TStaticText
              Left = 3
              Top = 192
              Width = 41
              Height = 17
              Caption = #1052#1072#1089#1090#1077#1088
              TabOrder = 4
            end
            object kl_operDBL: TDBLookupComboBox
              Left = 3
              Top = 95
              Width = 996
              Height = 21
              KeyField = 'oper_id'
              ListField = 'user_name'
              ListSource = DM.operDS
              TabOrder = 5
            end
            object kl_schetDBL: TDBLookupComboBox
              Left = 3
              Top = 157
              Width = 996
              Height = 21
              KeyField = 'schet_id'
              ListField = 'Nomer'
              ListSource = DM.schetDS
              TabOrder = 6
            end
            object kl_masterDBL: TDBLookupComboBox
              Left = 0
              Top = 215
              Width = 996
              Height = 21
              KeyField = 'id_master'
              ListField = 'fio_master'
              ListSource = DM.masterDS
              TabOrder = 7
            end
          end
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1089#1095#1077#1090#1095#1080#1082#1077
      ImageIndex = 2
      object sh_upd_datapBox: TGroupBox
        Left = 0
        Top = 161
        Width = 1024
        Height = 455
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 438
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
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1082#1083#1080#1077#1085#1090#1072
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
              FieldName = 'prim'
              Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kont_d'
              Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tel'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pokaz'
              Title.Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'oper_naim'
              Title.Caption = #1048#1084#1103' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nomer'
              Title.Caption = #1053#1086#1084#1077#1088'  '#1089#1095#1077#1090#1095#1080#1082#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio_master'
              Title.Caption = #1060#1048#1054' '#1084#1072#1089#1090#1077#1088#1072
              Visible = True
            end>
        end
      end
      object sh_upd_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1024
        Height = 161
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        DesignSize = (
          1024
          161)
        object sh_s_lbl: TStaticText
          Left = 32
          Top = 33
          Width = 92
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1095#1077#1090#1095#1080#1082
          TabOrder = 0
        end
        object sh_upd_DBL: TDBLookupComboBox
          Left = 32
          Top = 56
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'schet_id'
          ListField = 'Nomer'
          ListSource = DM.schetDS
          TabOrder = 1
        end
        object upd_sh_vrem_splbl: TStaticText
          Left = 32
          Top = 98
          Width = 121
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1090#1091' '#1087#1086#1095#1080#1085#1082#1080
          TabOrder = 2
        end
        object shvrem_sp_inp: TDateTimePicker
          Left = 32
          Top = 121
          Width = 977
          Height = 21
          Date = 45802.754818043980000000
          Time = 45802.754818043980000000
          TabOrder = 3
        end
      end
      object schet_u_btntBox: TGroupBox
        Left = 0
        Top = 616
        Width = 1024
        Height = 64
        Align = alBottom
        TabOrder = 2
        object sh_upd_Btn: TButton
          Left = 432
          Top = 16
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 0
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081'  '#1086' c'#1095#1077#1090#1077
      ImageIndex = 3
      object sh_del_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1024
        Height = 113
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1024
          113)
        object sh_del_lbl: TStaticText
          Left = 3
          Top = 16
          Width = 122
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object sh_delDBL: TDBLookupComboBox
          Left = 16
          Top = 63
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'schet_id'
          ListField = 'Nomer'
          ListSource = DM.schetDS
          TabOrder = 1
        end
        object del_sh_lbl: TStaticText
          Left = 16
          Top = 32
          Width = 105
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
          TabOrder = 2
        end
      end
      object sh_delbtnBox: TGroupBox
        Left = 0
        Top = 616
        Width = 1024
        Height = 64
        Align = alBottom
        TabOrder = 1
        object sh_del_btn: TButton
          Left = 360
          Top = 22
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
        end
      end
      object sh_del_data_Box: TGroupBox
        Left = 0
        Top = 113
        Width = 1024
        Height = 503
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 486
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
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1082#1083#1080#1077#1085#1090#1072
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
              FieldName = 'prim'
              Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kont_d'
              Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tel'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pokaz'
              Title.Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'oper_naim'
              Title.Caption = #1048#1084#1103' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nomer'
              Title.Caption = #1053#1086#1084#1077#1088'  '#1089#1095#1077#1090#1095#1080#1082#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio_master'
              Title.Caption = #1060#1048#1054' '#1084#1072#1089#1090#1077#1088#1072
              Visible = True
            end>
        end
      end
    end
  end
end

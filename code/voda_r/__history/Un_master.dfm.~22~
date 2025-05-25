object Frm_master: TFrm_master
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1076#1072#1085#1085#1099#1084#1080' '#1084#1072#1089#1090#1077#1088#1072
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
  object masterPC: TPageControl
    Left = 0
    Top = 0
    Width = 1032
    Height = 708
    ActivePage = insTab
    Align = alClient
    TabOrder = 0
    object selTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1084#1072#1089#1090#1077#1088#1077
      object master_inp_boxBox: TGroupBox
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
        object masterCondEdit: TLabeledEdit
          Left = 0
          Top = 32
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 200
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1077#1076#1077#1085#1080#1077' '#1087#1086' '#1080#1084#1077#1085#1080'  '#1084#1072#1089#1090#1077#1088#1072
          TabOrder = 0
        end
        object masterfndEdit: TLabeledEdit
          Left = 3
          Top = 72
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 119
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1083#1086#1075#1080#1085#1091
          TabOrder = 1
          OnKeyPress = masterfndEditKeyPress
        end
      end
      object master_data_box: TGroupBox
        Left = 0
        Top = 210
        Width = 1024
        Height = 414
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1079
        TabOrder = 1
        object sel_master_GRD: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 397
          Align = alClient
          DataSource = DM.masterDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_master'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio_master'
              Title.Caption = #1060#1048#1054' '#1084#1072#1089#1090#1077#1088#1072
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
              FieldName = 'dnr'
              Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090#1099
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dns'
              Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1089#1084#1077#1085#1099
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_name'
              Title.Caption = #1051#1086#1075#1080#1085' '#1074' '#1041#1044
              Visible = True
            end>
        end
      end
      object master_grouper: TGroupBox
        Left = 0
        Top = 105
        Width = 1024
        Height = 105
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '
        TabOrder = 2
        object master_fio_Radio: TRadioButton
          Left = 64
          Top = 40
          Width = 113
          Height = 17
          Caption = #1055#1086' '#1060#1048#1054
          TabOrder = 0
          OnClick = master_fio_RadioClick
        end
        object master_dnr_Radio: TRadioButton
          Left = 288
          Top = 40
          Width = 161
          Height = 17
          Caption = #1055#1086' '#1076#1072#1090#1077' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090#1099
          TabOrder = 1
          OnClick = master_dnr_RadioClick
        end
        object master_resetRadio: TRadioButton
          Left = 664
          Top = 40
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 2
          OnClick = master_resetRadioClick
        end
      end
      object master_btn_Box: TGroupBox
        Left = 0
        Top = 624
        Width = 1024
        Height = 56
        Align = alBottom
        TabOrder = 3
        object master_sel_Btn: TButton
          Left = 416
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1086#1088
          TabOrder = 0
          OnClick = master_sel_BtnClick
        end
      end
    end
    object insTab: TTabSheet
      Caption = #1042#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1084#1072#1089#1090#1077#1088#1077
      ImageIndex = 1
      object ins_master_data_Box: TGroupBox
        Left = 0
        Top = 217
        Width = 1024
        Height = 399
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitTop = 280
        ExplicitHeight = 336
        object ins_masterGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 382
          Align = alClient
          DataSource = DM.masterDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_master'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio_master'
              Title.Caption = #1060#1048#1054' '#1084#1072#1089#1090#1077#1088#1072
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
              FieldName = 'dnr'
              Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090#1099
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dns'
              Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1089#1084#1077#1085#1099
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_name'
              Title.Caption = #1051#1086#1075#1080#1085' '#1074' '#1041#1044
              Visible = True
            end>
        end
      end
      object ins_masterbtnBox: TGroupBox
        Left = 0
        Top = 616
        Width = 1024
        Height = 64
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 622
        object ins_master_insBtn: TButton
          Left = 448
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = ins_master_insBtnClick
        end
      end
      object about_masterPC: TPageControl
        Left = 0
        Top = 0
        Width = 1024
        Height = 217
        ActivePage = about_master_Tab_one
        Align = alTop
        TabOrder = 2
        object about_master_Tab_one: TTabSheet
          Caption = #1054' '#1084#1072#1089#1090#1077#1088#1077
          ExplicitHeight = 165
          object ins_master_inp_Box: TGroupBox
            Left = 0
            Top = 0
            Width = 1016
            Height = 137
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1085#1085#1099#1093
            TabOrder = 0
            DesignSize = (
              1016
              137)
            object master_fio_inp: TLabeledEdit
              Left = 0
              Top = 45
              Width = 977
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 95
              EditLabel.Height = 13
              EditLabel.Caption = #1042#1074#1086#1076' '#1060#1048#1054' '#1084#1072#1089#1090#1077#1088#1072
              TabOrder = 0
              ExplicitTop = 32
            end
            object master_kont_data_inp: TLabeledEdit
              Left = 0
              Top = 89
              Width = 977
              Height = 21
              Anchors = [akLeft, akRight]
              EditLabel.Width = 132
              EditLabel.Height = 13
              EditLabel.Caption = #1042#1074#1086#1076' '#1082#1086#1085#1090#1072#1082#1090#1085#1099#1093' '#1076#1072#1085#1085#1099#1093
              TabOrder = 1
            end
          end
        end
        object about_master_Tab_two: TTabSheet
          Caption = #1054' '#1084#1072#1089#1090#1077#1088#1077
          ImageIndex = 1
          object ins_master_inpBox_two: TGroupBox
            Left = 0
            Top = 0
            Width = 1016
            Height = 186
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1085#1085#1099#1093
            TabOrder = 0
            DesignSize = (
              1016
              186)
            object dnr_lbl: TStaticText
              Left = 16
              Top = 24
              Width = 110
              Height = 17
              Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090#1099
              TabOrder = 0
            end
            object dnr_inp: TDateTimePicker
              Left = 16
              Top = 53
              Width = 1001
              Height = 21
              Anchors = [akLeft, akRight]
              Date = 45802.471410960650000000
              Time = 45802.471410960650000000
              TabOrder = 1
              ExplicitTop = 47
            end
            object dns_lbl: TStaticText
              Left = 16
              Top = 80
              Width = 103
              Height = 17
              Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1089#1084#1077#1085#1099
              TabOrder = 2
            end
            object dns_inp: TDateTimePicker
              Left = 16
              Top = 114
              Width = 1001
              Height = 21
              Anchors = [akLeft, akRight]
              Date = 45802.471410960650000000
              Time = 45802.471410960650000000
              TabOrder = 3
              ExplicitTop = 103
            end
            object userid_lbl: TStaticText
              Left = 16
              Top = 141
              Width = 76
              Height = 17
              Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
              TabOrder = 4
            end
            object userDBL: TDBLookupComboBox
              Left = 16
              Top = 162
              Width = 1001
              Height = 21
              Anchors = [akLeft, akRight]
              KeyField = 'userid'
              ListField = 'user_name'
              ListSource = DM.userDS
              TabOrder = 5
            end
          end
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      ImageIndex = 2
      object u_upd_datapBox: TGroupBox
        Left = 0
        Top = 161
        Width = 1024
        Height = 455
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object u_upd_Grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 438
          Align = alClient
          DataSource = DM.userDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'userid'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_name'
              Title.Caption = #1051#1086#1075#1080#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_pass'
              Title.Caption = #1055#1072#1088#1086#1083#1100
              Visible = True
            end>
        end
      end
      object uupd_inpBox: TGroupBox
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
        object u_username_lbl: TStaticText
          Left = 16
          Top = 32
          Width = 122
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object U_upd_DBL: TDBLookupComboBox
          Left = 32
          Top = 56
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'userid'
          ListField = 'user_name'
          ListSource = DM.userDS
          TabOrder = 1
        end
        object U_upd_pass_inp: TLabeledEdit
          Left = 32
          Top = 96
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 132
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1080#1084#1077#1085#1080' '#1087#1086#1083#1100#1079#1086#1074#1072#1077#1090#1083#1103
          TabOrder = 2
        end
      end
      object useru_btntBox: TGroupBox
        Left = 0
        Top = 616
        Width = 1024
        Height = 64
        Align = alBottom
        TabOrder = 2
        object u_upd_Btn: TButton
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
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      ImageIndex = 3
      object u_del_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1024
        Height = 121
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1074#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1024
          121)
        object U_del_lbl: TStaticText
          Left = 3
          Top = 16
          Width = 122
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object u_delDBL: TDBLookupComboBox
          Left = 16
          Top = 55
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'userid'
          ListField = 'user_name'
          ListSource = DM.userDS
          TabOrder = 1
        end
        object del_user_lbl: TStaticText
          Left = 16
          Top = 32
          Width = 122
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 2
        end
      end
      object U_delbtnBox: TGroupBox
        Left = 0
        Top = 616
        Width = 1024
        Height = 64
        Align = alBottom
        TabOrder = 1
        object u_del_btn: TButton
          Left = 368
          Top = 6
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
        end
      end
      object u_del_data_Box: TGroupBox
        Left = 0
        Top = 121
        Width = 1024
        Height = 495
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object u_del_Grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 478
          Align = alClient
          DataSource = DM.userDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'userid'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_name'
              Title.Caption = #1051#1086#1075#1080#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_pass'
              Title.Caption = #1055#1072#1088#1086#1083#1100
              Visible = True
            end>
        end
      end
    end
  end
end

object Frm_user: TFrm_user
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1076#1072#1085#1085#1099#1084#1080' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  ClientHeight = 632
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
  object userPC: TPageControl
    Left = 0
    Top = 0
    Width = 1037
    Height = 632
    ActivePage = InsTab
    Align = alClient
    TabOrder = 0
    object selTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      object selUserInpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 153
        Align = alTop
        Anchors = [akTop, akRight]
        Caption = #1055#1086#1080#1089#1082' '#1087#1086':'
        TabOrder = 0
        object usercondEdit: TLabeledEdit
          Left = 0
          Top = 48
          Width = 1054
          Height = 21
          EditLabel.Width = 227
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1080#1084#1077#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object userfndEdit: TLabeledEdit
          Left = 3
          Top = 104
          Width = 1030
          Height = 21
          EditLabel.Width = 123
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1087#1072#1088#1086#1083#1102
          TabOrder = 1
          OnKeyPress = userfndEditKeyPress
        end
      end
      object selUserbtnBox: TGroupBox
        Left = 0
        Top = 544
        Width = 1029
        Height = 60
        Align = alBottom
        TabOrder = 1
        object selUser_btn: TButton
          Left = 432
          Top = 16
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1086#1088
          TabOrder = 0
          OnClick = selUser_btnClick
        end
      end
      object selUsergrouperBox: TGroupBox
        Left = 0
        Top = 153
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '
        TabOrder = 2
        object selUserlogradio: TRadioButton
          Left = 56
          Top = 40
          Width = 113
          Height = 17
          Caption = #1055#1086' '#1083#1086#1075#1080#1085#1091
          TabOrder = 0
          OnClick = selUserlogradioClick
        end
        object selUserpasradio: TRadioButton
          Left = 344
          Top = 40
          Width = 113
          Height = 17
          Caption = #1055#1086' '#1087#1072#1088#1086#1083#1102
          TabOrder = 1
          OnClick = selUserpasradioClick
        end
        object selUserresetradio: TRadioButton
          Left = 664
          Top = 40
          Width = 113
          Height = 17
          Caption = 'C'#1073#1088#1086#1089
          TabOrder = 2
          OnClick = selUserresetradioClick
        end
      end
      object selUserdataBox: TGroupBox
        Left = 0
        Top = 258
        Width = 1029
        Height = 286
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1099#1093' '
        TabOrder = 3
        object selUser_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 269
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
              FieldName = 'user_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_pas'
              Title.Caption = #1055#1072#1088#1086#1083#1100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usver_name'
              Title.Caption = #1051#1086#1075#1080#1085
              Visible = True
            end>
        end
      end
    end
    object InsTab: TTabSheet
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      ImageIndex = 1
      object User_data_box: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 431
        Align = alClient
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object User_ins_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 414
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
              FieldName = 'user_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_pas'
              Title.Caption = #1055#1072#1088#1086#1083#1100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usver_name'
              Title.Caption = #1051#1086#1075#1080#1085
              Visible = True
            end>
        end
      end
      object User_btn_box: TGroupBox
        Left = 0
        Top = 536
        Width = 1029
        Height = 68
        Align = alBottom
        TabOrder = 1
        object User_ins_btn: TButton
          Left = 400
          Top = 24
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = User_ins_btnClick
        end
      end
      object Ins_user_inp_box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object User_log_inp: TLabeledEdit
          Left = 3
          Top = 32
          Width = 1033
          Height = 21
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = #1051#1086#1075#1080#1085
          TabOrder = 0
        end
        object User_pas_inp: TLabeledEdit
          Left = 3
          Top = 75
          Width = 1023
          Height = 21
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = #1055#1072#1088#1086#1083#1100
          TabOrder = 1
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      ImageIndex = 2
      object user_upd_data_Box: TGroupBox
        Left = 0
        Top = 137
        Width = 1029
        Height = 399
        Align = alClient
        Caption = #1042#1099#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object User_upd_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 382
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
              FieldName = 'user_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_pas'
              Title.Caption = #1055#1072#1088#1086#1083#1100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usver_name'
              Title.Caption = #1051#1086#1075#1080#1085
              Visible = True
            end>
        end
      end
      object user_upd_btn_Box: TGroupBox
        Left = 0
        Top = 536
        Width = 1029
        Height = 68
        Align = alBottom
        TabOrder = 1
        object user_upd_btn: TButton
          Left = 416
          Top = 24
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 0
          OnClick = user_upd_btnClick
        end
      end
      object user_upd_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 137
        Align = alTop
        Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object user_upd_pas_lbl: TStaticText
          Left = 24
          Top = 24
          Width = 122
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object user_id_inp: TDBLookupComboBox
          Left = 24
          Top = 47
          Width = 994
          Height = 21
          KeyField = 'usver_name'
          ListField = 'usver_name'
          ListSource = DM.userDS
          TabOrder = 1
        end
        object user_pass_inp: TLabeledEdit
          Left = 24
          Top = 91
          Width = 994
          Height = 21
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = #1055#1072#1088#1086#1083#1100
          TabOrder = 2
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      ImageIndex = 3
      object del_user_data_box: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 431
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object User_del_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 414
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
              FieldName = 'user_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_pas'
              Title.Caption = #1055#1072#1088#1086#1083#1100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usver_name'
              Title.Caption = #1051#1086#1075#1080#1085
              Visible = True
            end>
        end
      end
      object del_user_inp_box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object del_user_usr_lbl: TStaticText
          Left = 16
          Top = 40
          Width = 122
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object del_user_id_inp_DBL: TDBLookupComboBox
          Left = 16
          Top = 63
          Width = 994
          Height = 21
          KeyField = 'usver_name'
          ListField = 'usver_name'
          ListSource = DM.userDS
          TabOrder = 1
        end
      end
      object del_user_btn_box: TGroupBox
        Left = 0
        Top = 536
        Width = 1029
        Height = 68
        Align = alBottom
        TabOrder = 2
        object del_user_btn: TButton
          Left = 400
          Top = 24
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = del_user_btnClick
        end
      end
    end
  end
end

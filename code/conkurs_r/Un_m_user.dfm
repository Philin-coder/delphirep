object Frm_muser: TFrm_muser
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1091#1095#1072#1089#1090#1085#1080#1082#1086#1084
  ClientHeight = 719
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object m_user_PC: TPageControl
    Left = 0
    Top = 29
    Width = 1037
    Height = 690
    ActivePage = selTab
    Align = alClient
    TabOrder = 0
    object selTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1091#1095#1072#1089#1090#1085#1080#1082#1077
      object m_user_condBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 153
        Align = alTop
        Caption = #1042#1099#1073#1086#1088' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
        TabOrder = 0
        DesignSize = (
          1029
          153)
        object sel_user_cond_edit: TLabeledEdit
          Left = 3
          Top = 28
          Width = 1020
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 140
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1060#1048#1054
          TabOrder = 0
        end
        object sel_user_fnd_edit: TLabeledEdit
          Left = 6
          Top = 100
          Width = 1020
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 107
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1060#1048#1054
          TabOrder = 1
          OnKeyPress = sel_user_fnd_editKeyPress
        end
      end
      object m_user_groper: TGroupBox
        Left = 0
        Top = 153
        Width = 1029
        Height = 88
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
        TabOrder = 1
        object naim_grouper: TRadioButton
          Left = 72
          Top = 40
          Width = 113
          Height = 17
          Caption = #1057#1086#1088#1090#1080#1088#1086#1082#1072' '#1087#1086' '#1060#1048#1054
          TabOrder = 0
          OnClick = naim_grouperClick
        end
        object selRadioreset: TRadioButton
          Left = 560
          Top = 40
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 1
          OnClick = selRadioresetClick
        end
      end
      object m_user_dataBox: TGroupBox
        Left = 0
        Top = 241
        Width = 1029
        Height = 364
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object sel_userGid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 347
          Align = alClient
          DataSource = DM.muserDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_user'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_phone'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_pas'
              Title.Caption = #1055#1072#1088#1086#1083#1100' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 154
              Visible = True
            end>
        end
      end
      object m_user_btndBox: TGroupBox
        Left = 0
        Top = 605
        Width = 1029
        Height = 57
        Align = alBottom
        TabOrder = 3
        object m_user_sel_btn: TButton
          Left = 256
          Top = 16
          Width = 169
          Height = 25
          Caption = #1054#1090#1073#1086#1088' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
          TabOrder = 0
          OnClick = m_user_sel_btnClick
        end
      end
    end
    object insTab: TTabSheet
      Caption = #1042#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1091#1095#1072#1089#1090#1085#1080#1082#1077
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mu_ins_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 185
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          185)
        object fio_inp: TLabeledEdit
          Left = 3
          Top = 52
          Width = 1020
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 79
          EditLabel.Height = 13
          EditLabel.Caption = #1060#1048#1054' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
          TabOrder = 0
        end
        object ins_phone_lbl: TStaticText
          Left = 2
          Top = 83
          Width = 48
          Height = 17
          Caption = #1058#1077#1083#1077#1092#1086#1085
          TabOrder = 1
        end
        object phone_inp: TMaskEdit
          Left = 2
          Top = 106
          Width = 1006
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          TabOrder = 2
          OnExit = phone_inpExit
        end
        object user_pas_inp: TLabeledEdit
          Left = 3
          Top = 154
          Width = 1020
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 93
          EditLabel.Height = 13
          EditLabel.Caption = #1055#1072#1088#1086#1083#1100' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
          TabOrder = 3
        end
      end
      object m_user_ntnBox: TGroupBox
        Left = 0
        Top = 603
        Width = 1029
        Height = 59
        Align = alBottom
        TabOrder = 1
        object user_insBtn: TButton
          Left = 384
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = user_insBtnClick
        end
      end
      object ins_user_dataBox: TGroupBox
        Left = 0
        Top = 185
        Width = 1029
        Height = 418
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object user_ins_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 401
          Align = alClient
          DataSource = DM.muserDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_user'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_phone'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_pas'
              Title.Caption = #1055#1072#1088#1086#1083#1100' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 154
              Visible = True
            end>
        end
      end
    end
    object upd_tab: TTabSheet
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1083#1080#1085#1080#1081' '#1086#1073' '#1091#1095#1072#1089#1090#1085#1080#1082#1077
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object upd_inp_box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 161
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object upd_usr_tl_lbl: TStaticText
          Left = 3
          Top = 99
          Width = 48
          Height = 17
          Caption = #1058#1077#1083#1077#1092#1086#1085
          TabOrder = 0
        end
        object usr_upd_phone_inp: TMaskEdit
          Left = 2
          Top = 122
          Width = 1006
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          TabOrder = 1
          OnExit = usr_upd_phone_inpExit
        end
        object usr_upd_us_lbl: TStaticText
          Left = 3
          Top = 36
          Width = 52
          Height = 17
          Caption = #1059#1095#1072#1089#1090#1085#1080#1082
          TabOrder = 2
        end
        object usr_upd_DBL: TDBLookupComboBox
          Left = 3
          Top = 59
          Width = 1006
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'id_user'
          ListField = 'fio'
          ListSource = DM.muserDS
          TabOrder = 3
        end
      end
      object usr_upd_dataBox: TGroupBox
        Left = 0
        Top = 161
        Width = 1029
        Height = 447
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object upd_usrGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 430
          Align = alClient
          DataSource = DM.muserDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_user'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_phone'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_pas'
              Title.Caption = #1055#1072#1088#1086#1083#1100' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 154
              Visible = True
            end>
        end
      end
      object user_upd_btnBox: TGroupBox
        Left = 0
        Top = 608
        Width = 1029
        Height = 54
        Align = alBottom
        TabOrder = 2
        object upd_usr_Btn: TButton
          Left = 408
          Top = 6
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 0
          OnClick = upd_usr_BtnClick
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1091#1095#1072#1089#1080#1085#1080#1082#1077
      ImageIndex = 3
      object del_usr_dataBox: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 487
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1083#1072#1085#1085#1099#1093
        TabOrder = 0
        object Del_usr_datagrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 470
          Align = alClient
          DataSource = DM.muserDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_user'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_phone'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'user_pas'
              Title.Caption = #1055#1072#1088#1086#1083#1100' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 154
              Visible = True
            end>
        end
      end
      object del_usr_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object del_usr_us_kbl: TStaticText
          Left = 3
          Top = 20
          Width = 52
          Height = 17
          Caption = #1059#1095#1072#1089#1090#1085#1080#1082
          TabOrder = 0
        end
        object del_usr_us_DBL: TDBLookupComboBox
          Left = 3
          Top = 51
          Width = 1006
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'id_user'
          ListField = 'fio'
          ListSource = DM.muserDS
          TabOrder = 1
        end
      end
      object del_usr_btnBox: TGroupBox
        Left = 0
        Top = 592
        Width = 1029
        Height = 70
        Align = alBottom
        TabOrder = 2
        object del_usr_Btn: TButton
          Left = 408
          Top = 24
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = del_usr_BtnClick
        end
      end
    end
  end
  object userToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 1037
    Height = 29
    Images = userImageList
    TabOrder = 1
    object showpasbtn: TToolButton
      Left = 0
      Top = 0
      ImageIndex = 0
      OnClick = showpasbtnClick
    end
    object hidepasbtn: TToolButton
      Left = 23
      Top = 0
      ImageIndex = 1
      OnClick = hidepasbtnClick
    end
  end
  object userImageList: TImageList
    Left = 336
    Top = 8
  end
end

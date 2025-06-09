object Frm_user: TFrm_user
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072'  '#1088#1072#1073#1086#1090#1099' '#1089' '#1076#1072#1085#1085#1099#1084#1080' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
  ClientHeight = 512
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
  object userPC: TPageControl
    Left = 0
    Top = 0
    Width = 1045
    Height = 512
    ActivePage = delTab
    Align = alClient
    TabOrder = 0
    object SelTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      object usercondBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 129
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object user_cond_Edit: TLabeledEdit
          Left = 19
          Top = 40
          Width = 990
          Height = 21
          EditLabel.Width = 147
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1084#1080#1077' '#1087#1086' '#1088#1086#1083#1080
          TabOrder = 0
        end
        object user_fnd_Edit: TLabeledEdit
          Left = 19
          Top = 88
          Width = 990
          Height = 21
          EditLabel.Width = 126
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086'  '#1087#1072#1088#1086#1083#1102
          TabOrder = 1
          OnKeyPress = user_fnd_EditKeyPress
        end
      end
      object userGrouperBox: TGroupBox
        Left = 0
        Top = 129
        Width = 1037
        Height = 105
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086
        TabOrder = 1
        object user_role_Radio: TRadioButton
          Left = 40
          Top = 32
          Width = 161
          Height = 17
          Caption = #1055#1086' '#1088#1086#1083#1080
          TabOrder = 0
          OnClick = user_role_RadioClick
        end
        object user_reset_Radio: TRadioButton
          Left = 880
          Top = 32
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 1
          OnClick = user_reset_RadioClick
        end
        object uaer_pass_Radio: TRadioButton
          Left = 312
          Top = 32
          Width = 193
          Height = 17
          Caption = #1055#1086'  '#1087#1072#1088#1086#1083#1102
          TabOrder = 2
          OnClick = uaer_pass_RadioClick
        end
        object hidepassCB: TCheckBox
          Left = 527
          Top = 32
          Width = 315
          Height = 17
          Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1087#1072#1088#1086#1083#1100
          TabOrder = 3
          OnClick = hidepassCBClick
        end
      end
      object userdataBox: TGroupBox
        Left = 0
        Top = 234
        Width = 1037
        Height = 197
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1083#1072#1085#1085#1099#1093
        TabOrder = 2
        object user_selGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 180
          Align = alClient
          DataSource = DM.usevrDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'usverId'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usver_role'
              Title.Caption = #1056#1086#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usver_pass'
              Title.Caption = #1055#1072#1088#1086#1083#1100
              Visible = True
            end>
        end
      end
      object userbtnBox: TGroupBox
        Left = 0
        Top = 431
        Width = 1037
        Height = 53
        Align = alBottom
        TabOrder = 3
        object user_sel_Btn: TButton
          Left = 352
          Top = 25
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1088#1072#1090#1100
          TabOrder = 0
          OnClick = user_sel_BtnClick
        end
      end
    end
    object insTab: TTabSheet
      Caption = #1042#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      ImageIndex = 1
      object user_data_Box: TGroupBox
        Left = 0
        Top = 145
        Width = 1037
        Height = 271
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitTop = 193
        ExplicitHeight = 223
        object user_ins_Grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 254
          Align = alClient
          DataSource = DM.usevrDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'usverId'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usver_role'
              Title.Caption = #1056#1086#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usver_pass'
              Title.Caption = #1055#1072#1088#1086#1083#1100
              Visible = True
            end>
        end
      end
      object user_btn_Box: TGroupBox
        Left = 0
        Top = 416
        Width = 1037
        Height = 68
        Align = alBottom
        TabOrder = 1
        object user_ins_Btn: TButton
          Left = 304
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = user_ins_BtnClick
        end
      end
      object user_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 145
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1074#1085#1085#1099#1093
        TabOrder = 2
        object ins_user_role_inp: TLabeledEdit
          Left = 19
          Top = 40
          Width = 990
          Height = 21
          EditLabel.Width = 126
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1088#1086#1083#1080' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object ins_user_pass_inp: TLabeledEdit
          Left = 19
          Top = 104
          Width = 998
          Height = 21
          EditLabel.Width = 138
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1087#1072#1088#1086#1083#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 1
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086'  '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      ImageIndex = 2
      object user_upd_data_Box: TGroupBox
        Left = 0
        Top = 105
        Width = 1037
        Height = 319
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object user_upd_Grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 279
          Align = alClient
          DataSource = DM.usevrDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'usverId'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usver_role'
              Title.Caption = #1056#1086#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usver_pass'
              Title.Caption = #1055#1072#1088#1086#1083#1100
              Visible = True
            end>
        end
      end
      object user_upd_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object user_upd_e_lbl: TStaticText
          Left = 16
          Top = 17
          Width = 110
          Height = 17
          Caption = #1042#1099#1073#1086#1088' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object user_upd_u_dbl: TDBLookupComboBox
          Left = 16
          Top = 32
          Width = 1009
          Height = 21
          KeyField = 'usverId'
          ListField = 'usver_role'
          ListSource = DM.usevrDS
          TabOrder = 1
        end
        object user_u_pass_inp: TLabeledEdit
          Left = 16
          Top = 78
          Width = 1009
          Height = 21
          EditLabel.Width = 138
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1087#1072#1088#1086#1083#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 2
        end
      end
      object user_upd_btnBox: TGroupBox
        Left = 0
        Top = 424
        Width = 1037
        Height = 60
        Align = alBottom
        TabOrder = 2
        object user_upd_btn: TButton
          Left = 312
          Top = 16
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 0
          OnClick = user_upd_btnClick
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      ImageIndex = 3
      object user_del_data_Box: TGroupBox
        Left = 0
        Top = 73
        Width = 1037
        Height = 351
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object Del_user_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 334
          Align = alClient
          DataSource = DM.usevrDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'usverId'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usver_role'
              Title.Caption = #1056#1086#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usver_pass'
              Title.Caption = #1055#1072#1088#1086#1083#1100
              Visible = True
            end>
        end
      end
      object user_del_btn_Box: TGroupBox
        Left = 0
        Top = 424
        Width = 1037
        Height = 60
        Align = alBottom
        TabOrder = 1
        object user_del_btn: TButton
          Left = 408
          Top = 24
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = user_del_btnClick
        end
      end
      object user_del_ipp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 73
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object user_del_e_lbl: TStaticText
          Left = 16
          Top = 25
          Width = 77
          Height = 17
          Caption = #1042#1099#1073#1086#1088' '#1088#1072#1073#1086#1090#1099
          TabOrder = 0
        end
        object user_del_e_dbl: TDBLookupComboBox
          Left = 16
          Top = 40
          Width = 1009
          Height = 21
          KeyField = 'usverId'
          ListField = 'usver_role'
          ListSource = DM.usevrDS
          TabOrder = 1
        end
      end
    end
  end
end

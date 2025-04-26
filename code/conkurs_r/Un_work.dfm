object Frm_work: TFrm_work
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1088#1072#1073#1086#1090#1086#1081
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
  PixelsPerInch = 96
  TextHeight = 13
  object work_user_PC: TPageControl
    Left = 0
    Top = 29
    Width = 1037
    Height = 690
    ActivePage = selTab
    Align = alClient
    TabOrder = 0
    OnChange = work_user_PCChange
    object selTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1088#1072#1073#1086#1090#1077
      object work_condBox: TGroupBox
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
        object sel_work_cond_edit: TLabeledEdit
          Left = 6
          Top = 36
          Width = 1020
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 186
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1085#1072#1080#1084#1080#1086#1074#1072#1085#1080#1102
          TabOrder = 0
        end
        object sel_work_fnd_edit: TLabeledEdit
          Left = 6
          Top = 100
          Width = 1020
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 168
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1087#1086' '#1085#1072#1080#1084#1080#1086#1074#1072#1085#1080#1102
          TabOrder = 1
          OnKeyPress = sel_work_fnd_editKeyPress
        end
      end
      object m_work_groper: TGroupBox
        Left = 0
        Top = 153
        Width = 1029
        Height = 88
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
        TabOrder = 1
        object work_naim_grouper: TRadioButton
          Left = 72
          Top = 40
          Width = 177
          Height = 17
          Caption = #1057#1086#1088#1090#1080#1088#1086#1082#1072' '#1087#1086' '#1085#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1102
          TabOrder = 0
          OnClick = work_naim_grouperClick
        end
        object work_selRadioreset: TRadioButton
          Left = 560
          Top = 40
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 1
          OnClick = work_selRadioresetClick
        end
      end
      object m_work_dataBox: TGroupBox
        Left = 0
        Top = 241
        Width = 1029
        Height = 364
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object sel_workGid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 347
          Align = alClient
          DataSource = DM.workDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_work'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_naim'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_opis'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_data'
              Title.Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_mark_and_about'
              Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1080' '#1086#1094#1077#1085#1082#1072
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1059#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 171
              Visible = True
            end>
        end
      end
      object work_btndBox: TGroupBox
        Left = 0
        Top = 605
        Width = 1029
        Height = 57
        Align = alBottom
        TabOrder = 3
        object m_work_sel_btn: TButton
          Left = 296
          Top = 16
          Width = 169
          Height = 25
          Caption = #1054#1090#1073#1086#1088' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
          TabOrder = 0
          OnClick = m_work_sel_btnClick
        end
      end
    end
    object insTab: TTabSheet
      Caption = #1042#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1088#1072#1073#1086#1090#1077
      ImageIndex = 1
      object work_ins_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 257
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          257)
        object work_dataLbl: TLabel
          Left = 3
          Top = 104
          Width = 117
          Height = 13
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1088#1072#1073#1086#1090#1099
        end
        object ins_w_usr_Lbl: TLabel
          Left = 2
          Top = 211
          Width = 48
          Height = 13
          Caption = #1059#1095#1072#1089#1090#1085#1080#1082
        end
        object ins_w_work_nain_inp: TLabeledEdit
          Left = 3
          Top = 36
          Width = 1020
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 114
          EditLabel.Height = 13
          EditLabel.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
          TabOrder = 0
        end
        object ins_w_opis_inp: TLabeledEdit
          Left = 6
          Top = 77
          Width = 1020
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 90
          EditLabel.Height = 13
          EditLabel.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
          TabOrder = 1
        end
        object work_data_inp: TDateTimePicker
          Left = 3
          Top = 123
          Width = 1020
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          Date = 45772.531525023150000000
          Time = 45772.531525023150000000
          TabOrder = 2
        end
        object work_mark_and_about_inp: TLabeledEdit
          Left = 3
          Top = 176
          Width = 1023
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 116
          EditLabel.Height = 13
          EditLabel.Caption = #1054#1094#1077#1085#1082#1072' '#1080' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
          TabOrder = 3
        end
        object ins_w_usr_DBL: TDBLookupComboBox
          Left = 3
          Top = 230
          Width = 1023
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'id_user'
          ListField = 'fio'
          ListSource = DM.muserDS
          TabOrder = 4
        end
      end
      object work_ntnBox: TGroupBox
        Left = 0
        Top = 603
        Width = 1029
        Height = 59
        Align = alBottom
        TabOrder = 1
        object work_insBtn: TButton
          Left = 384
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = work_insBtnClick
        end
      end
      object ins_work_dataBox: TGroupBox
        Left = 0
        Top = 257
        Width = 1029
        Height = 346
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object ins_work_grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 329
          Align = alClient
          DataSource = DM.workDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_work'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_naim'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_opis'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_data'
              Title.Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_mark_and_about'
              Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1080' '#1086#1094#1077#1085#1082#1072
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1059#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 171
              Visible = True
            end>
        end
      end
    end
    object upd_tab: TTabSheet
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1083#1080#1085#1080#1081' '#1086' '#1088#1072#1073#1086#1090#1077
      ImageIndex = 2
      object wr_upd_inp_box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 161
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          161)
        object wr_upd_work_lbl: TStaticText
          Left = 3
          Top = 36
          Width = 40
          Height = 17
          Caption = #1056#1072#1073#1086#1090#1072
          TabOrder = 0
        end
        object wr_upd_DBL: TDBLookupComboBox
          Left = 3
          Top = 59
          Width = 1006
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'id_work'
          ListField = 'work_naim'
          ListSource = DM.workDS
          TabOrder = 1
        end
        object commment_inp: TLabeledEdit
          Left = 3
          Top = 108
          Width = 1006
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 67
          EditLabel.Height = 13
          EditLabel.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
          TabOrder = 2
        end
      end
      object wrk_upd_dataBox: TGroupBox
        Left = 0
        Top = 161
        Width = 1029
        Height = 447
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object upd_workGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 430
          Align = alClient
          DataSource = DM.workDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_work'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_naim'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_opis'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_data'
              Title.Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_mark_and_about'
              Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1080' '#1086#1094#1077#1085#1082#1072
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1059#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 171
              Visible = True
            end>
        end
      end
      object wrkr_upd_btnBox: TGroupBox
        Left = 0
        Top = 608
        Width = 1029
        Height = 54
        Align = alBottom
        TabOrder = 2
        object wrk_upd_Btn: TButton
          Left = 408
          Top = 6
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 0
          OnClick = wrk_upd_BtnClick
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1088#1072#1073#1086#1090#1077
      ImageIndex = 3
      object del_wrk_dataBox: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 487
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1083#1072#1085#1085#1099#1093
        TabOrder = 0
        object DelwrkGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 470
          Align = alClient
          DataSource = DM.workDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_work'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_naim'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_opis'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_data'
              Title.Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'work_mark_and_about'
              Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1080' '#1086#1094#1077#1085#1082#1072
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054' '#1059#1095#1072#1089#1090#1085#1080#1082#1072
              Width = 171
              Visible = True
            end>
        end
      end
      object del_wrk_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object del_wrk_kbl: TStaticText
          Left = 3
          Top = 20
          Width = 40
          Height = 17
          Caption = #1056#1072#1073#1086#1090#1072
          TabOrder = 0
        end
        object del_wrk_DBL: TDBLookupComboBox
          Left = 3
          Top = 51
          Width = 1006
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'id_work'
          ListField = 'work_naim'
          ListSource = DM.workDS
          TabOrder = 1
        end
      end
      object del_wrk_btnBox: TGroupBox
        Left = 0
        Top = 592
        Width = 1029
        Height = 70
        Align = alBottom
        TabOrder = 2
        object del_wrk_Btn: TButton
          Left = 408
          Top = 24
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = del_wrk_BtnClick
        end
      end
    end
  end
  object workToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 1037
    Height = 29
    Images = workImageList
    TabOrder = 1
    object showcombtn: TToolButton
      Left = 0
      Top = 0
      ImageIndex = 0
      OnClick = showcombtnClick
    end
    object hidecombtn: TToolButton
      Left = 23
      Top = 0
      ImageIndex = 1
      OnClick = hidecombtnClick
    end
  end
  object workImageList: TImageList
    Left = 336
    Top = 8
  end
end

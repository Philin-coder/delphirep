object Frm_types: TFrm_types
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1076#1072#1085#1085#1099#1084#1080' '#1089#1095#1077#1090#1095#1080#1082#1072
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
  object typePC: TPageControl
    Left = 0
    Top = 0
    Width = 1032
    Height = 708
    ActivePage = selTab
    Align = alClient
    TabOrder = 0
    object selTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1089#1095#1077#1090#1095#1080#1082#1077
      object type_inp_boxBox: TGroupBox
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
        object typeCondEdit: TLabeledEdit
          Left = 0
          Top = 32
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 173
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1077#1076#1077#1085#1080#1077' '#1087#1086' '#1086#1087#1080#1089#1072#1085#1080#1102
          TabOrder = 0
        end
        object typeFNDEdit: TLabeledEdit
          Left = 3
          Top = 72
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 137
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1084#1077#1093#1072#1085#1080#1079#1084#1091
          TabOrder = 1
          OnKeyPress = typeFNDEditKeyPress
        end
      end
      object type_data_box: TGroupBox
        Left = 0
        Top = 210
        Width = 1024
        Height = 414
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1079
        TabOrder = 1
        object sel_type_GRD: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 397
          Align = alClient
          DataSource = DM.typeDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'type_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'typr_opis'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mechan'
              Title.Caption = #1052#1077#1093#1072#1085#1080#1079#1084
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tochn'
              Title.Caption = #1058#1086#1095#1085#1086#1089#1090#1100
              Visible = True
            end>
        end
      end
      object type_grouper: TGroupBox
        Left = 0
        Top = 105
        Width = 1024
        Height = 105
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '
        TabOrder = 2
        object type_opisRadio: TRadioButton
          Left = 64
          Top = 40
          Width = 113
          Height = 17
          Caption = #1055#1086' '#1086#1087#1080#1089#1072#1085#1080#1102
          TabOrder = 0
          OnClick = type_opisRadioClick
        end
        object type_m_Radio: TRadioButton
          Left = 288
          Top = 40
          Width = 113
          Height = 17
          Caption = #1055#1086' '#1084#1077#1093#1072#1085#1080#1079#1084#1091
          TabOrder = 1
          OnClick = type_m_RadioClick
        end
        object type_resetRadio: TRadioButton
          Left = 664
          Top = 40
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 2
          OnClick = type_resetRadioClick
        end
      end
      object type_btn_Box: TGroupBox
        Left = 0
        Top = 624
        Width = 1024
        Height = 56
        Align = alBottom
        TabOrder = 3
        object type_sel_Btn: TButton
          Left = 416
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1086#1088
          TabOrder = 0
          OnClick = type_sel_BtnClick
        end
      end
    end
    object insTab: TTabSheet
      Caption = #1042#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      ImageIndex = 1
      object ins_type_data_Box: TGroupBox
        Left = 0
        Top = 177
        Width = 1024
        Height = 439
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitTop = 105
        ExplicitHeight = 511
        object ins_type_Grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 422
          Align = alClient
          DataSource = DM.typeDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'type_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'typr_opis'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mechan'
              Title.Caption = #1052#1077#1093#1072#1085#1080#1079#1084
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tochn'
              Title.Caption = #1058#1086#1095#1085#1086#1089#1090#1100
              Visible = True
            end>
        end
      end
      object userbtnBox: TGroupBox
        Left = 0
        Top = 616
        Width = 1024
        Height = 64
        Align = alBottom
        TabOrder = 1
        object user_insBtn: TButton
          Left = 448
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = user_insBtnClick
        end
      end
      object ins_type_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1024
        Height = 177
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1085#1085#1099#1093
        TabOrder = 2
        DesignSize = (
          1024
          177)
        object ins_type_opis_inp: TLabeledEdit
          Left = 3
          Top = 45
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 125
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1086#1087#1080#1089#1072#1085#1080#1103' '#1089#1095#1077#1090#1095#1080#1082#1072
          TabOrder = 0
        end
        object ins_type_mechan_inp: TLabeledEdit
          Left = 3
          Top = 88
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 108
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1090#1080#1087#1072' '#1084#1077#1093#1072#1085#1080#1079#1084#1072
          TabOrder = 1
        end
        object ins_type_tochn_inp: TLabeledEdit
          Left = 2
          Top = 134
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 75
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1090#1086#1095#1085#1086#1089#1090#1080
          TabOrder = 2
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1089#1095#1077#1090#1095#1080#1082#1077
      ImageIndex = 2
      object t_upd_datapBox: TGroupBox
        Left = 0
        Top = 161
        Width = 1024
        Height = 455
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object upd_type_Grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 438
          Align = alClient
          DataSource = DM.typeDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'type_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'typr_opis'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mechan'
              Title.Caption = #1052#1077#1093#1072#1085#1080#1079#1084
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tochn'
              Title.Caption = #1058#1086#1095#1085#1086#1089#1090#1100
              Visible = True
            end>
        end
      end
      object tupd_inpBox: TGroupBox
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
        object u_type_lbl: TStaticText
          Left = 16
          Top = 32
          Width = 119
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1090#1080#1087' '#1089#1095#1077#1090#1095#1080#1082#1072
          TabOrder = 0
        end
        object t_upd_DBL: TDBLookupComboBox
          Left = 32
          Top = 56
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'type_id'
          ListField = 'typr_opis'
          ListSource = DM.typeDS
          TabOrder = 1
        end
        object t_upd_opis_inp: TLabeledEdit
          Left = 32
          Top = 96
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 113
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1085#1086#1074#1086#1075#1086' '#1086#1087#1080#1089#1072#1085#1080#1103
          TabOrder = 2
        end
      end
      object typeu_btntBox: TGroupBox
        Left = 0
        Top = 616
        Width = 1024
        Height = 64
        Align = alBottom
        TabOrder = 2
        object t_upd_Btn: TButton
          Left = 432
          Top = 16
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 0
          OnClick = t_upd_BtnClick
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1089#1095#1077#1090#1095#1080#1082#1077
      ImageIndex = 3
      object del_type_inpBox: TGroupBox
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
        object t_del_lbl: TStaticText
          Left = 3
          Top = 16
          Width = 122
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object t_delDBL: TDBLookupComboBox
          Left = 16
          Top = 55
          Width = 977
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'type_id'
          ListField = 'typr_opis'
          ListSource = DM.typeDS
          TabOrder = 1
        end
        object del_type_lbl: TStaticText
          Left = 16
          Top = 32
          Width = 92
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1095#1077#1090#1095#1080#1082
          TabOrder = 2
        end
      end
      object t_delbtnBox: TGroupBox
        Left = 0
        Top = 616
        Width = 1024
        Height = 64
        Align = alBottom
        TabOrder = 1
        object t_del_btn: TButton
          Left = 368
          Top = 16
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = t_del_btnClick
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
        object t_delGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1020
          Height = 478
          Align = alClient
          DataSource = DM.typeDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'type_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'typr_opis'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mechan'
              Title.Caption = #1052#1077#1093#1072#1085#1080#1079#1084
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tochn'
              Title.Caption = #1058#1086#1095#1085#1086#1089#1090#1100
              Visible = True
            end>
        end
      end
    end
  end
end

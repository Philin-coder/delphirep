object Frm_kind: TFrm_kind
  Left = 0
  Top = 0
  Caption = #1042#1074#1086#1076' '#1074#1080#1076#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 433
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
  object kindPC: TPageControl
    Left = 0
    Top = 0
    Width = 1045
    Height = 433
    ActivePage = delTab
    Align = alClient
    TabOrder = 0
    object SelTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1074#1080#1076#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      ExplicitWidth = 627
      object kind_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitLeft = 152
        ExplicitTop = 80
        ExplicitWidth = 185
        object KIndCondEdit: TLabeledEdit
          Left = 16
          Top = 32
          Width = 1018
          Height = 21
          EditLabel.Width = 155
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1077' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
          TabOrder = 0
        end
        object KIndfndEdit: TLabeledEdit
          Left = 16
          Top = 72
          Width = 1018
          Height = 21
          EditLabel.Width = 128
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
          TabOrder = 1
          OnKeyPress = KIndfndEditKeyPress
        end
      end
      object kind_Data_Box: TGroupBox
        Left = 0
        Top = 210
        Width = 1037
        Height = 142
        Align = alClient
        Caption = #1042#1099#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        ExplicitLeft = 160
        ExplicitTop = 88
        ExplicitWidth = 185
        ExplicitHeight = 105
        object sel_kind_grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 125
          Align = alClient
          DataSource = DM.KindDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'doc_kind_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'doc_kind_naim'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1074#1080#1076#1072
              Visible = True
            end>
        end
      end
      object kind_grouper_Box: TGroupBox
        Left = 0
        Top = 105
        Width = 1037
        Height = 105
        Align = alTop
        Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1087#1086' '
        TabOrder = 2
        ExplicitLeft = 168
        ExplicitTop = 96
        ExplicitWidth = 185
        object kind_radio: TRadioButton
          Left = 48
          Top = 48
          Width = 113
          Height = 17
          Caption = #1055#1086' '#1085#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1102
          TabOrder = 0
          OnClick = kind_radioClick
        end
        object reset_Radio: TRadioButton
          Left = 568
          Top = 48
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 1
          OnClick = reset_RadioClick
        end
      end
      object kind_btn_Box: TGroupBox
        Left = 0
        Top = 352
        Width = 1037
        Height = 53
        Align = alBottom
        TabOrder = 3
        ExplicitWidth = 890
        object kind_sel_btn: TButton
          Left = 248
          Top = 25
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1086#1088
          TabOrder = 0
          OnClick = kind_sel_btnClick
        end
      end
    end
    object insTab: TTabSheet
      Caption = #1042#1074#1086#1076' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1074#1080#1076#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      ImageIndex = 1
      ExplicitWidth = 627
      ExplicitHeight = 271
      object ins_kind_data_Box: TGroupBox
        Left = 0
        Top = 105
        Width = 1037
        Height = 247
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitLeft = 480
        ExplicitTop = 120
        ExplicitWidth = 185
        ExplicitHeight = 105
        object ins_Grid_grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 230
          Align = alClient
          DataSource = DM.KindDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'doc_kind_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'doc_kind_naim'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1074#1080#1076#1072
              Width = 91
              Visible = True
            end>
        end
      end
      object ins_kind_btn_Box: TGroupBox
        Left = 0
        Top = 352
        Width = 1037
        Height = 53
        Align = alBottom
        TabOrder = 1
        object ins_kind_btn: TButton
          Left = 384
          Top = 17
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = ins_kind_btnClick
        end
      end
      object ins_kind_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        ExplicitLeft = 496
        ExplicitTop = 136
        ExplicitWidth = 185
        object ins_kind_inp: TLabeledEdit
          Left = 16
          Top = 48
          Width = 1018
          Height = 21
          EditLabel.Width = 128
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1085#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1103' '#1074#1080#1076#1072
          TabOrder = 0
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1085#1080#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1074#1080#1076#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      ImageIndex = 2
      ExplicitWidth = 627
      ExplicitHeight = 271
      object Upd_kind_data_Box: TGroupBox
        Left = 0
        Top = 137
        Width = 1037
        Height = 199
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitLeft = 496
        ExplicitTop = 112
        ExplicitWidth = 185
        ExplicitHeight = 105
        object Upd_kind_data_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 182
          Align = alClient
          DataSource = DM.KindDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'doc_kind_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'doc_kind_naim'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1074#1080#1076#1072
              Width = 152
              Visible = True
            end>
        end
      end
      object Upd_kind_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 137
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        ExplicitLeft = -4
        ExplicitTop = 9
        object upd_kind_inp: TLabeledEdit
          Left = 3
          Top = 96
          Width = 1018
          Height = 21
          EditLabel.Width = 128
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1085#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1103' '#1074#1080#1076#1072
          TabOrder = 0
        end
        object upd_kind_id_dbl: TDBLookupComboBox
          Left = 3
          Top = 48
          Width = 1018
          Height = 21
          KeyField = 'doc_kind_id'
          ListField = 'doc_kind_naim'
          ListSource = DM.KindDS
          TabOrder = 1
        end
        object upd_kind_id_lbl: TStaticText
          Left = 3
          Top = 25
          Width = 129
          Height = 17
          Caption = #1042#1099#1073#1086#1088' '#1074#1080#1076#1072' '#1083#1080#1090#1077#1088#1072#1090#1091#1088#1099
          TabOrder = 2
        end
      end
      object Upd_kind_btn_Box: TGroupBox
        Left = 0
        Top = 336
        Width = 1037
        Height = 69
        Align = alBottom
        TabOrder = 2
        object Upd_kind_btn: TButton
          Left = 384
          Top = 24
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 0
          OnClick = Upd_kind_btnClick
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1074#1080#1076#1077' '#1083#1080#1090#1077#1088#1072#1090#1091#1088#1099
      ImageIndex = 3
      ExplicitWidth = 627
      ExplicitHeight = 271
      object kind_del_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitLeft = 240
        ExplicitTop = 112
        ExplicitWidth = 185
        object kind_del_inp_lbl: TStaticText
          Left = 3
          Top = 25
          Width = 129
          Height = 17
          Caption = #1042#1099#1073#1086#1088' '#1074#1080#1076#1072' '#1083#1080#1090#1077#1088#1072#1090#1091#1088#1099
          TabOrder = 0
        end
        object kind_del_inp_dbl: TDBLookupComboBox
          Left = 3
          Top = 48
          Width = 1018
          Height = 21
          KeyField = 'doc_kind_id'
          ListField = 'doc_kind_naim'
          ListSource = DM.KindDS
          TabOrder = 1
        end
      end
      object kind_del_btn_Box: TGroupBox
        Left = 0
        Top = 344
        Width = 1037
        Height = 61
        Align = alBottom
        TabOrder = 1
        object kind_del_btn: TButton
          Left = 368
          Top = 24
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = kind_del_btnClick
        end
      end
      object kind_del_data_Box: TGroupBox
        Left = 0
        Top = 105
        Width = 1037
        Height = 239
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        ExplicitLeft = 504
        ExplicitTop = 184
        ExplicitWidth = 185
        ExplicitHeight = 105
        object kind_del_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1033
          Height = 222
          Align = alClient
          DataSource = DM.KindDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'doc_kind_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'doc_kind_naim'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1074#1080#1076#1072
              Width = 152
              Visible = True
            end>
        end
      end
    end
  end
end

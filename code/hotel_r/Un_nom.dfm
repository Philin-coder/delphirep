object Frm_nom: TFrm_nom
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1085#1086#1084#1077#1088#1086#1084
  ClientHeight = 755
  ClientWidth = 1013
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
  object FulnomPC: TPageControl
    Left = 0
    Top = 0
    Width = 1013
    Height = 755
    ActivePage = insTab
    Align = alClient
    TabOrder = 0
    object seLTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1085#1086#1084#1077#1088#1077
      object sel_nomcondBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1005
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1005
          105)
        object nom_kind_cond_edit: TLabeledEdit
          Left = 3
          Top = 32
          Width = 999
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 181
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1074#1080#1076#1091' '#1085#1086#1084#1077#1088#1072
          TabOrder = 0
        end
        object sel_nom_fnd_Edit: TLabeledEdit
          Left = 3
          Top = 78
          Width = 999
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 151
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086'  '#1074#1080#1076#1091' '#1085#1086#1084#1077#1088#1072
          TabOrder = 1
          OnKeyPress = sel_nom_fnd_EditKeyPress
        end
      end
      object m_nom_grupper: TGroupBox
        Left = 0
        Top = 105
        Width = 1005
        Height = 105
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072
        TabOrder = 1
        object nom_Radiocos_adaygrupper: TRadioButton
          Left = 40
          Top = 48
          Width = 185
          Height = 17
          Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1094#1077#1085#1077' '#1074' '#1076#1077#1085#1100
          TabOrder = 0
          OnClick = nom_Radiocos_adaygrupperClick
        end
        object nom_Radiokindgrupper: TRadioButton
          Left = 296
          Top = 48
          Width = 177
          Height = 17
          Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1074#1080#1076#1091
          TabOrder = 1
          OnClick = nom_RadiokindgrupperClick
        end
        object nom_reset_radio: TRadioButton
          Left = 584
          Top = 48
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 2
          OnClick = nom_reset_radioClick
        end
      end
      object selnommbtnBox: TGroupBox
        Left = 0
        Top = 672
        Width = 1005
        Height = 55
        Align = alBottom
        TabOrder = 2
        object nomselBtn: TButton
          Left = 344
          Top = 16
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1088#1072#1090#1100
          TabOrder = 0
          OnClick = nomselBtnClick
        end
      end
      object sel_nom_data_box: TGroupBox
        Left = 0
        Top = 210
        Width = 1005
        Height = 462
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 3
        object selnomselgrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1001
          Height = 445
          Align = alClient
          DataSource = DM.nomDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = selnomselgrdDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'nomer_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nomer_kind'
              Title.Caption = #1042#1080#1076' '#1085#1086#1084#1077#1088#1072
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nomer_cost_day'
              Title.Caption = #1062#1077#1085#1072' '#1074' '#1076#1077#1085#1100
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'type_image'
              Title.Caption = #1060#1086#1090#1086
              Visible = True
            end>
        end
      end
    end
    object insTab: TTabSheet
      Caption = #1042#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1085#1086#1084#1077#1088#1077
      ImageIndex = 1
      object ins_nom_dataBox: TGroupBox
        Left = 0
        Top = 225
        Width = 1005
        Height = 431
        Align = alClient
        TabOrder = 0
        object ins_nom_data_Box: TGroupBox
          Left = 2
          Top = 15
          Width = 1001
          Height = 414
          Align = alClient
          Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          object ins_nomGid: TDBGrid
            Left = 2
            Top = 15
            Width = 997
            Height = 397
            Align = alClient
            DataSource = DM.nomDS
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = ins_nomGidDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'nomer_id'
                Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nomer_kind'
                Title.Caption = #1042#1080#1076' '#1085#1086#1084#1077#1088#1072
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nomer_cost_day'
                Title.Caption = #1062#1077#1085#1072' '#1074' '#1076#1077#1085#1100' '
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'type_image'
                Title.Caption = #1060#1086#1090#1086
                Visible = True
              end>
          end
        end
      end
      object ins_nom_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1005
        Height = 196
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        DesignSize = (
          1005
          196)
        object nomer_kind_inp: TLabeledEdit
          Left = 3
          Top = 54
          Width = 999
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 92
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1074#1080#1076#1072' '#1085#1086#1084#1077#1088#1072
          TabOrder = 0
        end
        object nomliveQuercB: TCheckBox
          Left = 368
          Top = 173
          Width = 121
          Height = 17
          Align = alCustom
          Caption = #1046#1080#1074#1099#1077' '#1079#1072#1087#1088#1086#1086#1089#1099
          TabOrder = 1
          OnClick = nomliveQuercBClick
        end
        object nomer_cost_day_inp: TLabeledEdit
          Left = 3
          Top = 98
          Width = 999
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 91
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1094#1077#1085#1099' '#1074' '#1076#1077#1085#1100
          TabOrder = 2
        end
        object nom_type_n__llbl: TStaticText
          Left = 3
          Top = 121
          Width = 61
          Height = 17
          Caption = #1058#1080#1087' '#1085#1086#1084#1077#1088#1072
          TabOrder = 3
        end
        object type_nomer_inp: TDBLookupComboBox
          Left = 3
          Top = 144
          Width = 999
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'id_type_nomer'
          ListField = 'type_naim'
          ListSource = DM.TYpe_nDS
          TabOrder = 4
        end
      end
      object ins_nom_btn_Box: TGroupBox
        Left = 0
        Top = 656
        Width = 1005
        Height = 71
        Align = alBottom
        TabOrder = 2
        object ins_uslBtn: TButton
          Left = 496
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = ins_uslBtnClick
        end
      end
      object nomlqPanel: TPanel
        Left = 0
        Top = 196
        Width = 1005
        Height = 29
        Align = alTop
        TabOrder = 3
        object nomlqsvBtn: TButton
          Left = 400
          Top = 0
          Width = 75
          Height = 25
          Caption = 'C'#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 0
          OnClick = nomlqsvBtnClick
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1085#1086#1084#1077#1088#1077
      ImageIndex = 2
      object upd_nom_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1005
        Height = 145
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1005
          145)
        object upd_noml_lbl: TStaticText
          Left = 3
          Top = 24
          Width = 81
          Height = 17
          Align = alCustom
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1085#1086#1084#1077#1088
          TabOrder = 0
        end
        object upd_nom_id_dbl: TDBLookupComboBox
          Left = 3
          Top = 47
          Width = 982
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'nomer_id'
          ListField = 'nomer_kind'
          ListSource = DM.nomDS
          TabOrder = 1
        end
        object upd_omer_kind_inp: TLabeledEdit
          Left = 3
          Top = 99
          Width = 982
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 98
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1074#1080#1076#1072' '#1085#1086#1084#1077#1088#1072'  '
          TabOrder = 2
        end
      end
      object upd_nom_btn_Box: TGroupBox
        Left = 0
        Top = 656
        Width = 1005
        Height = 71
        Align = alBottom
        TabOrder = 1
        object upd_nom_btn: TButton
          Left = 440
          Top = 24
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 0
          OnClick = upd_nom_btnClick
        end
      end
      object upd_nom_data_box: TGroupBox
        Left = 0
        Top = 145
        Width = 1005
        Height = 511
        Align = alClient
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object upd_nom_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1001
          Height = 494
          Align = alClient
          DataSource = DM.nomDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'nomer_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 141
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nomer_kind'
              Title.Caption = #1042#1080#1076' '#1085#1086#1084#1077#1088#1072
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nomer_cost_day'
              Title.Caption = #1062#1077#1085#1072' '#1074' '#1076#1077#1085#1100
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'type_image'
              Title.Caption = #1060#1086#1090#1086
              Width = 212
              Visible = True
            end>
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077'  '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1085#1086#1084#1077#1088#1077
      ImageIndex = 3
      object del_nom_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1005
        Height = 81
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object del_dbl_nom_lbl: TStaticText
          Left = 3
          Top = 24
          Width = 85
          Height = 17
          Align = alCustom
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1091#1089#1083#1091#1075#1091
          TabOrder = 0
        end
        object del_dbl_nom_dbl: TDBLookupComboBox
          Left = 3
          Top = 37
          Width = 982
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'usl_id'
          ListField = 'usl_naim'
          ListSource = DM.uslDS
          TabOrder = 1
        end
      end
      object del_nom_dataBox: TGroupBox
        Left = 0
        Top = 81
        Width = 1005
        Height = 575
        Align = alClient
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object del_nom_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1001
          Height = 558
          Align = alClient
          DataSource = DM.nomDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'nomer_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 141
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nomer_kind'
              Title.Caption = #1042#1080#1076' '#1085#1086#1084#1077#1088#1072
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nomer_cost_day'
              Title.Caption = #1062#1077#1085#1072' '#1074' '#1076#1077#1085#1100
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'type_image'
              Title.Caption = #1060#1086#1090#1086
              Width = 212
              Visible = True
            end>
        end
      end
      object del_nom_btn_Box: TGroupBox
        Left = 0
        Top = 656
        Width = 1005
        Height = 71
        Align = alBottom
        TabOrder = 2
        object del_nom_d_btn: TButton
          Left = 488
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

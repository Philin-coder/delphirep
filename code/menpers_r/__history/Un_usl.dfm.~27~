object Frm_usluga: TFrm_usluga
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1076#1072#1085#1085#1099#1084#1080' '#1086#1073' '#1091#1089#1083#1091#1075#1077
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
  object UslPC: TPageControl
    Left = 0
    Top = 0
    Width = 1037
    Height = 632
    ActivePage = updTab
    Align = alClient
    TabOrder = 0
    object selTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1091#1089#1083#1091#1075#1077
      object sel_Usl_InpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 153
        Align = alTop
        Anchors = [akTop, akRight]
        Caption = #1055#1086#1080#1089#1082' '#1087#1086':'
        TabOrder = 0
        object Usl_condEdit: TLabeledEdit
          Left = 0
          Top = 48
          Width = 1054
          Height = 21
          EditLabel.Width = 162
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1086#1087#1080#1072#1085#1080#1102
          TabOrder = 0
        end
        object Usl_fndEdit: TLabeledEdit
          Left = 3
          Top = 104
          Width = 1030
          Height = 21
          EditLabel.Width = 119
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1086#1087#1080#1089#1072#1085#1080#1102
          TabOrder = 1
          OnKeyPress = Usl_fndEditKeyPress
        end
      end
      object sel_Usl_btnBox: TGroupBox
        Left = 0
        Top = 544
        Width = 1029
        Height = 60
        Align = alBottom
        TabOrder = 1
        object sel_Usl_btn: TButton
          Left = 432
          Top = 16
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1086#1088
          TabOrder = 0
          OnClick = sel_Usl_btnClick
        end
      end
      object sel_Usl_grouperBox: TGroupBox
        Left = 0
        Top = 153
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '
        TabOrder = 2
        object sel_Usl_opis_radio: TRadioButton
          Left = 56
          Top = 40
          Width = 113
          Height = 17
          Caption = #1055#1086' '#1086#1087#1080#1089#1072#1085#1080#1102
          TabOrder = 0
          OnClick = sel_Usl_opis_radioClick
        end
        object sel_Usl_costradio: TRadioButton
          Left = 344
          Top = 40
          Width = 113
          Height = 17
          Caption = #1055#1086' '#1094#1077#1085#1077
          TabOrder = 1
          OnClick = sel_Usl_costradioClick
        end
        object sel_usl_reset_radio: TRadioButton
          Left = 664
          Top = 40
          Width = 113
          Height = 17
          Caption = 'C'#1073#1088#1086#1089
          TabOrder = 2
          OnClick = sel_usl_reset_radioClick
        end
      end
      object sel_Usl_dataBox: TGroupBox
        Left = 0
        Top = 258
        Width = 1029
        Height = 286
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1099#1093' '
        TabOrder = 3
        object sel_usl_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 269
          Align = alClient
          DataSource = DM.uslDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_usl'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
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
              FieldName = 'date_o'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1072#1079#1072#1085#1080#1103' '#1091#1089#1083#1091#1075#1080
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost'
              Title.Caption = #1062#1077#1085#1072
              Visible = True
            end>
        end
      end
    end
    object InsTab: TTabSheet
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1091#1089#1083#1091#1075#1077
      ImageIndex = 1
      object Usl_data_box: TGroupBox
        Left = 0
        Top = 137
        Width = 1029
        Height = 399
        Align = alClient
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitTop = 265
        ExplicitHeight = 271
        object ins_Usl_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 382
          Align = alClient
          DataSource = DM.uslDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_usl'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
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
              FieldName = 'date_o'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1072#1079#1072#1085#1080#1103' '#1091#1089#1083#1091#1075#1080
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost'
              Title.Caption = #1062#1077#1085#1072
              Visible = True
            end>
        end
      end
      object Usl_btn_box: TGroupBox
        Left = 0
        Top = 536
        Width = 1029
        Height = 68
        Align = alBottom
        TabOrder = 1
        object Usl_ins_btn: TButton
          Left = 400
          Top = 24
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = Usl_ins_btnClick
        end
      end
      object Ins_Usl_inp_box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 137
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object usl_opis_inp: TLabeledEdit
          Left = 3
          Top = 32
          Width = 1033
          Height = 21
          EditLabel.Width = 51
          EditLabel.Height = 13
          EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '
          TabOrder = 0
        end
        object usl_cost_inp: TLabeledEdit
          Left = 3
          Top = 88
          Width = 1033
          Height = 21
          EditLabel.Width = 26
          EditLabel.Height = 13
          EditLabel.Caption = #1062#1077#1085#1072
          TabOrder = 1
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1091#1089#1083#1091#1075#1077
      ImageIndex = 2
      object Usl_upd_data_Box: TGroupBox
        Left = 0
        Top = 137
        Width = 1029
        Height = 399
        Align = alClient
        Caption = #1042#1099#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object Usl_upd_Grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 382
          Align = alClient
          DataSource = DM.uslDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_usl'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
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
              FieldName = 'date_o'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1072#1079#1072#1085#1080#1103' '#1091#1089#1083#1091#1075#1080
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost'
              Title.Caption = #1062#1077#1085#1072
              Visible = True
            end>
        end
      end
      object Usl_upd_btn_Box: TGroupBox
        Left = 0
        Top = 536
        Width = 1029
        Height = 68
        Align = alBottom
        TabOrder = 1
        object man_upd_btn: TButton
          Left = 416
          Top = 24
          Width = 75
          Height = 25
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 0
          OnClick = man_upd_btnClick
        end
      end
      object Usl_upd_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 137
        Align = alTop
        Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object Usl_upd_pas_lbl: TStaticText
          Left = 24
          Top = 24
          Width = 85
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1091#1089#1083#1091#1075#1091
          TabOrder = 0
        end
        object u_Usl_id_inp: TDBLookupComboBox
          Left = 32
          Top = 47
          Width = 994
          Height = 21
          KeyField = 'id_usl'
          ListField = 'opis'
          ListSource = DM.uslDS
          TabOrder = 1
        end
        object u_dateo_inp: TDateTimePicker
          Left = 24
          Top = 97
          Width = 1002
          Height = 21
          Date = 45805.654292766200000000
          Time = 45805.654292766200000000
          TabOrder = 2
        end
        object Usl_upd_date_o_lbl: TStaticText
          Left = 32
          Top = 74
          Width = 117
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
          TabOrder = 3
        end
        object paydcB: TCheckBox
          Left = 272
          Top = 74
          Width = 241
          Height = 17
          Align = alCustom
          Caption = #1054#1087#1083#1072#1095#1077#1085#1085#1085#1099#1077' '#1091#1089#1083#1091#1075#1080
          TabOrder = 4
          OnClick = paydcBClick
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1091#1089#1083#1091#1075#1077
      ImageIndex = 3
      object del_Usl_data_box: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 431
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object Del_usl_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 414
          Align = alClient
          DataSource = DM.uslDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id_usl'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
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
              FieldName = 'date_o'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1072#1079#1072#1085#1080#1103' '#1091#1089#1083#1091#1075#1080
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost'
              Title.Caption = #1062#1077#1085#1072
              Visible = True
            end>
        end
      end
      object del_Usl_inp_box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object del_Usl_u_lbl: TStaticText
          Left = 16
          Top = 40
          Width = 85
          Height = 17
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1091#1089#1083#1091#1075#1091
          TabOrder = 0
        end
        object del_Usl_id_inp_DBL: TDBLookupComboBox
          Left = 16
          Top = 63
          Width = 994
          Height = 21
          KeyField = 'id_usl'
          ListField = 'opis'
          ListSource = DM.uslDS
          TabOrder = 1
        end
      end
      object del_Usl_btn_box: TGroupBox
        Left = 0
        Top = 536
        Width = 1029
        Height = 68
        Align = alBottom
        TabOrder = 2
        object del_Usl_btn: TButton
          Left = 400
          Top = 24
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = del_Usl_btnClick
        end
      end
    end
  end
end

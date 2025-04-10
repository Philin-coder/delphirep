object frm_delivery: Tfrm_delivery
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1074#1099#1076#1072#1095#1077#1081
  ClientHeight = 739
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
  object delvToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 1037
    Height = 47
    TabOrder = 0
  end
  object delvPC: TPageControl
    Left = 0
    Top = 47
    Width = 1037
    Height = 692
    ActivePage = sel_tab
    Align = alClient
    TabOrder = 1
    object sel_tab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1074#1099#1076#1072#1095#1077
      object dlvbtnBox: TGroupBox
        Left = 0
        Top = 594
        Width = 1029
        Height = 70
        Align = alBottom
        TabOrder = 0
        object dlvselBtn: TButton
          Left = 336
          Top = 32
          Width = 273
          Height = 25
          Caption = #1054#1090#1073#1086#1088' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
          TabOrder = 0
          OnClick = dlvselBtnClick
        end
      end
      object dlv_grupperBox: TGroupBox
        Left = 0
        Top = 113
        Width = 1029
        Height = 64
        Align = alTop
        TabOrder = 1
        object dlvnaimRadio_grupper: TRadioButton
          Left = 19
          Top = 14
          Width = 150
          Height = 17
          Align = alCustom
          Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1060#1048#1054
          TabOrder = 0
          OnClick = dlvnaimRadio_grupperClick
        end
        object dlv_reset_Radio: TRadioButton
          Left = 624
          Top = 6
          Width = 113
          Height = 17
          Align = alCustom
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 1
          OnClick = dlv_reset_RadioClick
        end
        object dlvbackCB: TCheckBox
          Left = 19
          Top = 37
          Width = 190
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1054#1090#1086#1073#1088#1072#1079#1090#1100' '#1074#1086#1079#1074#1088#1072#1090#1099
          TabOrder = 2
          OnClick = dlvbackCBClick
        end
        object dlv_dolg_CB: TCheckBox
          Left = 624
          Top = 41
          Width = 353
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1076#1086#1083#1075#1080
          TabOrder = 3
          OnClick = dlv_dolg_CBClick
        end
      end
      object dlv_data_Box: TGroupBox
        Left = 0
        Top = 177
        Width = 1029
        Height = 417
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object dlvGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 400
          Align = alClient
          DataSource = DM.deliveryDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_Delivery'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_B'
              Title.Caption = #1050#1085#1080#1075#1072
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_R'
              Title.Caption = #1063#1080#1090#1072#1090#1077#1083#1100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_D'
              Title.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_Return_Plan'
              Title.Caption = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086' '#1087#1083#1072#1085#1091
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_Return_Fact'
              Title.Caption = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086' '#1092#1072#1082#1090#1091
              Width = 140
              Visible = True
            end>
        end
      end
      object dlv_condBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 113
        Align = alTop
        Caption = #1055#1086#1080#1089#1082' '#1087#1086
        TabOrder = 3
        DesignSize = (
          1029
          113)
        object dlvcondedit_inp: TLabeledEdit
          Left = 19
          Top = 34
          Width = 966
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 191
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1060#1048#1054' '#1095#1080#1090#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object dlv_fnddEdit: TLabeledEdit
          Left = 19
          Top = 81
          Width = 966
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 191
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1102' '#1082#1085#1080#1075#1080
          TabOrder = 1
          OnKeyPress = dlv_fnddEditKeyPress
        end
      end
    end
    object ins_tab: TTabSheet
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1095#1080#1090#1072#1090#1077#1083#1077
      ImageIndex = 1
      object aboutreaderPC: TPageControl
        Left = 0
        Top = 257
        Width = 1029
        Height = 343
        Align = alClient
        TabOrder = 0
      end
      object ins_r_data_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 257
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        DesignSize = (
          1029
          257)
        object Name_r_inp: TLabeledEdit
          Left = 19
          Top = 39
          Width = 966
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 77
          EditLabel.Height = 13
          EditLabel.Caption = ' '#1060#1048#1054' '#1095#1080#1090#1072#1090#1077#1083#1103
          TabOrder = 0
        end
        object date_b_lbl: TStaticText
          Left = 19
          Top = 75
          Width = 141
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103' '#1095#1080#1090#1072#1077#1090#1077#1083#1103
          TabOrder = 1
        end
        object Date_B_inp: TDateTimePicker
          Left = 19
          Top = 96
          Width = 966
          Height = 21
          Anchors = [akLeft, akRight]
          Date = 45755.684260115740000000
          Time = 45755.684260115740000000
          TabOrder = 2
        end
        object adr_r_inp: TLabeledEdit
          Left = 19
          Top = 138
          Width = 966
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 82
          EditLabel.Height = 13
          EditLabel.Caption = #1040#1076#1088#1077#1089' '#1095#1080#1090#1072#1090#1077#1083#1103
          TabOrder = 3
        end
        object Date_r_inp: TDateTimePicker
          Left = 19
          Top = 231
          Width = 966
          Height = 21
          Anchors = [akLeft, akRight]
          Date = 45755.684260115740000000
          Time = 45755.684260115740000000
          TabOrder = 4
        end
        object data_r_lbl: TStaticText
          Left = 19
          Top = 208
          Width = 154
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1095#1080#1090#1072#1077#1090#1077#1083#1103
          TabOrder = 5
        end
        object Tel_lbl: TStaticText
          Left = 19
          Top = 165
          Width = 99
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1058#1077#1083#1077#1092#1086#1085' '#1095#1080#1090#1072#1090#1077#1083#1103
          TabOrder = 6
        end
        object tel_inp: TMaskEdit
          Left = 19
          Top = 181
          Width = 966
          Height = 21
          Anchors = [akLeft, akRight]
          TabOrder = 7
        end
      end
      object Ins_rd_dataBox: TGroupBox
        Left = 0
        Top = 257
        Width = 1029
        Height = 343
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object ins_r_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 326
          Align = alClient
          DataSource = DM.readerDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_Reader'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_R'
              Title.Caption = #1060#1048#1054' '#1095#1080#1090#1072#1090#1077#1083#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_B'
              Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103' '#1095#1080#1090#1072#1090#1077#1083#1103
              Width = 144
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Adres'
              Title.Caption = #1040#1076#1088#1077#1089' '#1095#1080#1090#1072#1090#1077#1083#1103
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tel'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1095#1080#1090#1072#1090#1077#1083#1103
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_R'
              Title.Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1095#1080#1090#1072#1090#1077#1083#1103
              Width = 156
              Visible = True
            end>
        end
      end
      object ins_reader_btn_Box: TGroupBox
        Left = 0
        Top = 600
        Width = 1029
        Height = 64
        Align = alBottom
        TabOrder = 3
        object Ins_book_insBtn: TButton
          Left = 272
          Top = 36
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1095#1080#1090#1072#1090#1077#1083#1077
      ImageIndex = 2
      object rd_upd_inp_box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 137
        Align = alTop
        Caption = #1042#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          137)
        object rd_upd_lbl: TLabel
          Left = 3
          Top = 29
          Width = 95
          Height = 13
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1095#1080#1090#1072#1090#1077#1083#1103
        end
        object rd_updDBL: TDBLookupComboBox
          Left = 0
          Top = 48
          Width = 1017
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'ID_Reader'
          ListField = 'Name_R'
          ListSource = DM.readerDS
          TabOrder = 0
        end
        object upd_tel_lbl: TStaticText
          Left = 3
          Top = 75
          Width = 135
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1053#1086#1074#1099#1081' '#1090#1077#1083#1077#1092#1086#1085' '#1095#1080#1090#1072#1090#1077#1083#1103
          TabOrder = 1
        end
        object upd_tel_inp: TMaskEdit
          Left = 3
          Top = 98
          Width = 1014
          Height = 21
          Anchors = [akLeft, akRight]
          TabOrder = 2
        end
      end
      object Upd_rd_data_Box: TGroupBox
        Left = 0
        Top = 137
        Width = 1029
        Height = 457
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object reader_updDBGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 440
          Align = alClient
          DataSource = DM.readerDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_Reader'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_R'
              Title.Caption = #1060#1048#1054' '#1095#1080#1090#1072#1090#1077#1083#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_B'
              Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103' '#1095#1080#1090#1072#1090#1077#1083#1103
              Width = 144
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Adres'
              Title.Caption = #1040#1076#1088#1077#1089' '#1095#1080#1090#1072#1090#1077#1083#1103
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tel'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1095#1080#1090#1072#1090#1077#1083#1103
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_R'
              Title.Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1095#1080#1090#1072#1090#1077#1083#1103
              Width = 156
              Visible = True
            end>
        end
      end
      object upd_rd_btn_box: TGroupBox
        Left = 0
        Top = 594
        Width = 1029
        Height = 70
        Align = alBottom
        TabOrder = 2
        object upd_rd_Btn: TButton
          Left = 464
          Top = 24
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 0
        end
      end
    end
    object delTab: TTabSheet
      Caption = ' '#1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1095#1080#1090#1072#1090#1077#1083#1077
      ImageIndex = 3
      object rd_del_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object rd_delLbl: TLabel
          Left = 3
          Top = 29
          Width = 95
          Height = 13
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1095#1080#1090#1072#1090#1077#1083#1103
        end
        object rd_delDBL: TDBLookupComboBox
          Left = 9
          Top = 58
          Width = 1017
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'ID_Reader'
          ListField = 'Name_R'
          ListSource = DM.readerDS
          TabOrder = 0
        end
      end
      object rd_del_btn_Box: TGroupBox
        Left = 0
        Top = 594
        Width = 1029
        Height = 70
        Align = alBottom
        TabOrder = 1
        object rd_del_btn: TButton
          Left = 464
          Top = 24
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
        end
      end
      object rd_del_data_Box: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 489
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object rd_delGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 472
          Align = alClient
          DataSource = DM.readerDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_Reader'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_R'
              Title.Caption = #1060#1048#1054' '#1095#1080#1090#1072#1090#1077#1083#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_B'
              Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103' '#1095#1080#1090#1072#1090#1077#1083#1103
              Width = 144
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Adres'
              Title.Caption = #1040#1076#1088#1077#1089' '#1095#1080#1090#1072#1090#1077#1083#1103
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tel'
              Title.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1095#1080#1090#1072#1090#1077#1083#1103
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_R'
              Title.Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1095#1080#1090#1072#1090#1077#1083#1103
              Width = 156
              Visible = True
            end>
        end
      end
    end
  end
  object delvImageList: TImageList
    Left = 256
  end
end

object frm_aut: Tfrm_aut
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1072#1074#1090#1086#1088#1086#1084
  ClientHeight = 495
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
  object autorToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 1037
    Height = 29
    Caption = 'autorToolBar'
    TabOrder = 0
    object autselToolButton: TToolButton
      Left = 0
      Top = 0
      ImageIndex = 0
    end
    object autinsToolButton: TToolButton
      Left = 23
      Top = 0
      ImageIndex = 1
    end
    object autupdToolButton: TToolButton
      Left = 46
      Top = 0
      Caption = 'autupdToolButton'
      ImageIndex = 2
    end
    object autdelToolButton: TToolButton
      Left = 69
      Top = 0
      Caption = 'autdelToolButton'
      ImageIndex = 3
    end
  end
  object autorPC: TPageControl
    Left = 0
    Top = 29
    Width = 1037
    Height = 466
    ActivePage = delTab
    Align = alClient
    TabOrder = 1
    object sel_tab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1072#1074#1090#1086#1088#1077
      object Autor_condBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 113
        Align = alTop
        Caption = #1055#1086#1080#1089#1082' '#1087#1086
        TabOrder = 0
        DesignSize = (
          1029
          113)
        object condedit_inp: TLabeledEdit
          Left = 19
          Top = 34
          Width = 966
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 186
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1080#1084#1077#1085#1080' '#1072#1074#1090#1086#1088#1072
          TabOrder = 0
        end
        object Autor_fnddEdit: TLabeledEdit
          Left = 19
          Top = 81
          Width = 966
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 105
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1072#1074#1090#1086#1088#1091
          TabOrder = 1
          OnKeyPress = Autor_fnddEditKeyPress
        end
      end
      object autorbtnBox: TGroupBox
        Left = 0
        Top = 368
        Width = 1029
        Height = 70
        Align = alBottom
        TabOrder = 1
        object autorselBtn: TButton
          Left = 336
          Top = 32
          Width = 273
          Height = 25
          Caption = #1054#1090#1073#1086#1088' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
          TabOrder = 0
          OnClick = autorselBtnClick
        end
      end
      object Autor_grupperBox: TGroupBox
        Left = 0
        Top = 113
        Width = 1029
        Height = 64
        Align = alTop
        TabOrder = 2
        object fioRadio_grupper: TRadioButton
          Left = 65
          Top = 22
          Width = 161
          Height = 17
          Align = alCustom
          Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
          TabOrder = 0
          OnClick = fioRadio_grupperClick
        end
        object reset_Radio: TRadioButton
          Left = 640
          Top = 24
          Width = 113
          Height = 17
          Align = alCustom
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 1
          OnClick = reset_RadioClick
        end
      end
      object Author_data_Box: TGroupBox
        Left = 0
        Top = 177
        Width = 1029
        Height = 191
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 3
        object AutorGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 174
          Align = alClient
          DataSource = DM.autDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_Author'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_A'
              Title.Caption = #1060#1048#1054' '#1072#1074#1090#1086#1088#1072
              Visible = True
            end>
        end
      end
    end
    object ins_tab: TTabSheet
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1072#1074#1090#1086#1088#1077
      ImageIndex = 1
      object aut_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 81
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          81)
        object Autor_inp: TLabeledEdit
          Left = 3
          Top = 40
          Width = 1014
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 97
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1080#1084#1077#1085#1080' '#1072#1074#1090#1086#1088#1072
          TabOrder = 0
        end
      end
      object Aut_inp_btnBox: TGroupBox
        Left = 0
        Top = 376
        Width = 1029
        Height = 62
        Align = alBottom
        TabOrder = 1
        object aut_insBon: TButton
          Left = 456
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = aut_insBonClick
        end
      end
      object Aut_inp_dataBox: TGroupBox
        Left = 0
        Top = 81
        Width = 1029
        Height = 295
        Align = alClient
        TabOrder = 2
        ExplicitLeft = 536
        ExplicitTop = 192
        ExplicitWidth = 185
        ExplicitHeight = 105
        object Aut_inp_data_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 278
          Align = alClient
          DataSource = DM.autDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_Author'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_A'
              Title.Caption = #1060#1048#1054' '#1072#1074#1090#1086#1088#1072
              Visible = True
            end>
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1072#1074#1090#1086#1088#1077
      ImageIndex = 2
      object aut_upd_inp_box: TGroupBox
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
        object aut_upd_lbl: TLabel
          Left = 3
          Top = 29
          Width = 83
          Height = 13
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1072#1074#1090#1086#1088#1072
        end
        object Upd_aut_naim_inp: TLabeledEdit
          Left = 3
          Top = 97
          Width = 1014
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 108
          EditLabel.Height = 13
          EditLabel.Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1080#1084#1103' '#1072#1074#1090#1086#1088#1072
          TabOrder = 0
          ExplicitTop = 72
        end
        object autor_updDBL: TDBLookupComboBox
          Left = 0
          Top = 48
          Width = 1017
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'ID_Author'
          ListField = 'Name_A'
          ListSource = DM.autDS
          TabOrder = 1
        end
      end
      object Upd_aut_data_Box: TGroupBox
        Left = 0
        Top = 137
        Width = 1029
        Height = 231
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        ExplicitLeft = 592
        ExplicitTop = 208
        ExplicitWidth = 185
        ExplicitHeight = 105
        object Aut_upd_Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 214
          Align = alClient
          DataSource = DM.autDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_Author'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_A'
              Title.Caption = #1060#1048#1054' '#1072#1074#1090#1086#1088#1072
              Width = 91
              Visible = True
            end>
        end
      end
      object upd_aut_btn_box: TGroupBox
        Left = 0
        Top = 368
        Width = 1029
        Height = 70
        Align = alBottom
        TabOrder = 2
        object uat_upd_Btn: TButton
          Left = 464
          Top = 24
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 0
          OnClick = uat_upd_BtnClick
        end
      end
    end
    object delTab: TTabSheet
      Caption = ' '#1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1072#1074#1090#1086#1088#1077
      ImageIndex = 3
      object Aut_del_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object aut_delLbl: TLabel
          Left = 3
          Top = 29
          Width = 83
          Height = 13
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1072#1074#1090#1086#1088#1072
        end
        object aut_delDBL: TDBLookupComboBox
          Left = 9
          Top = 58
          Width = 1017
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'ID_Author'
          ListField = 'Name_A'
          ListSource = DM.autDS
          TabOrder = 0
        end
      end
      object aut_del_btn_Box: TGroupBox
        Left = 0
        Top = 368
        Width = 1029
        Height = 70
        Align = alBottom
        TabOrder = 1
        object aut_del_btn: TButton
          Left = 464
          Top = 24
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = aut_del_btnClick
        end
      end
      object aut_del_data_Box: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 263
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        ExplicitLeft = 296
        ExplicitTop = 128
        ExplicitWidth = 185
        ExplicitHeight = 105
        object Aut_delGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 246
          Align = alClient
          DataSource = DM.autDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_Author'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_A'
              Title.Caption = #1060#1048#1054' '#1072#1074#1090#1086#1088#1072
              Width = 91
              Visible = True
            end>
        end
      end
    end
  end
  object autorImageList: TImageList
    Left = 256
  end
end

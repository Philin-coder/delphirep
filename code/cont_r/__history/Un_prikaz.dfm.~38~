object Frm_prikaz: TFrm_prikaz
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1087#1088#1080#1082#1072#1079#1086#1084
  ClientHeight = 813
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
  object PrikazPage: TPageControl
    Left = 0
    Top = 0
    Width = 1037
    Height = 813
    ActivePage = SelTab
    Align = alClient
    TabOrder = 0
    object SelTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086'  '#1087#1088#1080#1082#1072#1079#1077
      object PrikazgroupBox: TGroupBox
        Left = 0
        Top = 97
        Width = 1029
        Height = 64
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072
        TabOrder = 0
        object prikaz_nom_groupradio: TRadioButton
          Left = 56
          Top = 32
          Width = 113
          Height = 17
          Align = alCustom
          Caption = #1055#1086' '#1085#1086#1084#1077#1088#1091
          TabOrder = 0
          OnClick = prikaz_nom_groupradioClick
        end
        object PrikazResetRadio: TRadioButton
          Left = 432
          Top = 32
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 1
          OnClick = PrikazResetRadioClick
        end
        object type_pr_groupradio: TRadioButton
          Left = 256
          Top = 33
          Width = 113
          Height = 17
          Align = alCustom
          Caption = #1055#1086' '#1090#1080#1087#1091
          TabOrder = 2
          OnClick = type_pr_groupradioClick
        end
      end
      object PrikazbtnBox: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object PrikazSelBtn: TButton
          Left = 264
          Top = 27
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1042#1099#1073#1086#1088
          TabOrder = 0
          OnClick = PrikazSelBtnClick
        end
      end
      object PrikazDataBox: TGroupBox
        Left = 0
        Top = 161
        Width = 1029
        Height = 569
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object PrikazSelGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 552
          Align = alClient
          DataSource = DM.PrikazDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'pr_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pr_nom'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1082#1072#1079#1072
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'date_pr'
              Title.Caption = #1044#1072#1090#1072' '#1074#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1089#1080#1083#1091
              Width = 159
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tip_pr'
              Title.Caption = #1058#1080#1087' '#1087#1088#1080#1082#1072#1079#1072
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1053#1072' '#1082#1086#1075#1086
              Visible = True
            end>
        end
      end
      object PrikazCondBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 97
        Align = alTop
        Caption = #1054#1090#1073#1086#1088' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
        TabOrder = 3
        DesignSize = (
          1029
          97)
        object Prikaz_condEdit: TLabeledEdit
          Left = 0
          Top = 29
          Width = 1026
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 197
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1087#1088#1080#1082#1072#1079#1072
          TabOrder = 0
        end
        object Prikaz_fnd_edit: TLabeledEdit
          Left = 3
          Top = 70
          Width = 1042
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 152
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1090#1080#1087#1091' '#1087#1088#1080#1082#1072#1079#1072
          TabOrder = 1
          OnKeyPress = Prikaz_fnd_editKeyPress
        end
      end
    end
    object InsTab: TTabSheet
      Caption = #1042#1074#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1088#1080#1082#1072#1079#1077
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Prikaz_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 321
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          321)
        object pr_nom_inp: TLabeledEdit
          Left = 3
          Top = 40
          Width = 1026
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 108
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1085#1086#1084#1077#1088#1072' '#1087#1088#1080#1082#1072#1079#1072
          TabOrder = 0
        end
        object date_pr_lbl: TStaticText
          Left = 3
          Top = 80
          Width = 171
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1044#1072#1090#1072' '#1074#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1087#1088#1080#1082#1072#1079#1072' '#1074' '#1089#1080#1083#1091
          TabOrder = 1
        end
        object Datepr_inp: TDateTimePicker
          Left = 3
          Top = 103
          Width = 1030
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          Date = 45737.696028414350000000
          Time = 45737.696028414350000000
          TabOrder = 2
        end
        object pr_type_inp: TLabeledEdit
          Left = 0
          Top = 176
          Width = 1026
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 96
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1090#1080#1087#1072' '#1087#1088#1080#1082#1072#1079#1072
          TabOrder = 3
        end
        object pr_stud_lbl: TStaticText
          Left = 3
          Top = 248
          Width = 96
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1053#1072' '#1082#1086#1075#1086' '#1086#1092#1086#1088#1084#1083#1077#1085
          TabOrder = 4
        end
        object prikaz_stDBL: TDBLookupComboBox
          Left = 3
          Top = 271
          Width = 1023
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'stud_id'
          ListField = 'fio'
          ListSource = DM.StuddS
          TabOrder = 5
        end
      end
      object Prikaz_ins_btn_Box: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object Prikaz_insBtn: TButton
          Left = 264
          Top = 27
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = Prikaz_insBtnClick
        end
      end
      object Prikaz_DataInsBox: TGroupBox
        Left = 0
        Top = 321
        Width = 1029
        Height = 409
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object PrikazInsGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 392
          Align = alClient
          DataSource = DM.PrikazDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'pr_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pr_nom'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1082#1072#1079#1072
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'date_pr'
              Title.Caption = #1044#1072#1090#1072' '#1074#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1089#1080#1083#1091
              Width = 159
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tip_pr'
              Title.Caption = #1058#1080#1087' '#1087#1088#1080#1082#1072#1079#1072
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1053#1072' '#1082#1086#1075#1086
              Visible = True
            end>
        end
      end
    end
    object UpdTab: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1087#1088#1080#1082#1072#1079#1077
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Prikaz_upd_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 121
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          121)
        object PrikazDateLbl: TLabel
          Left = 16
          Top = 55
          Width = 123
          Height = 13
          Caption = #1044#1072#1090#1072' '#1074#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1089#1080#1083#1091
        end
        object Prikazlbl: TStaticText
          Left = 16
          Top = 12
          Width = 86
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1080#1082#1072#1079
          TabOrder = 0
        end
        object PrikazUpdDBL: TDBLookupComboBox
          Left = 16
          Top = 28
          Width = 998
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'pr_id'
          ListField = 'tip_pr'
          ListSource = DM.PrikazDS
          TabOrder = 1
        end
        object Data_pr_inp: TDateTimePicker
          Left = 16
          Top = 86
          Width = 998
          Height = 21
          Anchors = [akLeft, akRight]
          Date = 45737.736060671300000000
          Time = 45737.736060671300000000
          TabOrder = 2
        end
      end
      object Prikaz_upd_btn_Box: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object Prikaz_upd_Btn: TButton
          Left = 296
          Top = 11
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = Prikaz_upd_BtnClick
        end
      end
      object Prikaz_upd_dataBox: TGroupBox
        Left = 0
        Top = 121
        Width = 1029
        Height = 609
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object PrikazUpdGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 592
          Align = alClient
          DataSource = DM.PrikazDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'pr_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pr_nom'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1082#1072#1079#1072
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'date_pr'
              Title.Caption = #1044#1072#1090#1072' '#1074#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1089#1080#1083#1091
              Width = 159
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tip_pr'
              Title.Caption = #1058#1080#1087' '#1087#1088#1080#1082#1072#1079#1072
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1053#1072' '#1082#1086#1075#1086
              Visible = True
            end>
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1087#1088#1080#1082#1072#1079#1077
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object delprdatacBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 90
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          90)
        object delprlbl: TStaticText
          Left = 2
          Top = 29
          Width = 86
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1080#1082#1072#1079
          TabOrder = 0
        end
        object delprDBL: TDBLookupComboBox
          Left = 3
          Top = 52
          Width = 998
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'pr_id'
          ListField = 'tip_pr'
          ListSource = DM.PrikazDS
          TabOrder = 1
        end
      end
      object dlprbtnBox: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object delprBtn: TButton
          Left = 296
          Top = 11
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = delprBtnClick
        end
      end
      object deprdataBox: TGroupBox
        Left = 0
        Top = 90
        Width = 1029
        Height = 640
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object delprGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 623
          Align = alClient
          DataSource = DM.PrikazDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'pr_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pr_nom'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1082#1072#1079#1072
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'date_pr'
              Title.Caption = #1044#1072#1090#1072' '#1074#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1089#1080#1083#1091
              Width = 159
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tip_pr'
              Title.Caption = #1058#1080#1087' '#1087#1088#1080#1082#1072#1079#1072
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1053#1072' '#1082#1086#1075#1086
              Visible = True
            end>
        end
      end
    end
  end
end

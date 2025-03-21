object Frm_spec: TFrm_spec
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100#1102
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
  object SpecPage: TPageControl
    Left = 0
    Top = 0
    Width = 1037
    Height = 813
    ActivePage = SelTab
    Align = alClient
    TabOrder = 0
    object SelTab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086'  '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      object SpecgroupBox: TGroupBox
        Left = 0
        Top = 97
        Width = 1029
        Height = 64
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072
        TabOrder = 0
        object Spec_groupradio: TRadioButton
          Left = 104
          Top = 32
          Width = 113
          Height = 17
          Align = alCustom
          Caption = #1055#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
          TabOrder = 0
          OnClick = Spec_groupradioClick
        end
        object SpecResetRadio: TRadioButton
          Left = 480
          Top = 32
          Width = 113
          Height = 17
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 1
          OnClick = SpecResetRadioClick
        end
      end
      object SpecbtnBox: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object SpecSelBtn: TButton
          Left = 264
          Top = 27
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1042#1099#1073#1086#1088
          TabOrder = 0
          OnClick = SpecSelBtnClick
        end
      end
      object SpecDataBox: TGroupBox
        Left = 0
        Top = 161
        Width = 1029
        Height = 569
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object SpecSelGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 552
          Align = alClient
          DataSource = DM.spectDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'spec_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spec_maim'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
              Visible = True
            end>
        end
      end
      object SpecCondBox: TGroupBox
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
        object Spec_condEdit: TLabeledEdit
          Left = 0
          Top = 29
          Width = 1026
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 161
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
          TabOrder = 0
        end
        object Spec_fnd_edit: TLabeledEdit
          Left = 3
          Top = 70
          Width = 1042
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 160
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
          TabOrder = 1
          OnKeyPress = Spec_fnd_editKeyPress
        end
      end
    end
    object InsTab: TTabSheet
      Caption = #1042#1074#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      ImageIndex = 1
      object spec_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 73
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          73)
        object spec_inp: TLabeledEdit
          Left = 0
          Top = 33
          Width = 1026
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 104
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
          TabOrder = 0
        end
      end
      object Spec_ins_btn_Box: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object Spec_insBtn: TButton
          Left = 264
          Top = 27
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = Spec_insBtnClick
        end
      end
      object SpecDataInsBox: TGroupBox
        Left = 0
        Top = 73
        Width = 1029
        Height = 657
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object Spec_insGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 640
          Align = alClient
          DataSource = DM.spectDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'spec_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spec_maim'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
              Visible = True
            end>
        end
      end
    end
    object UpdTab: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      ImageIndex = 2
      object Spec_upd_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          105)
        object spec_upd_spec_inp: TLabeledEdit
          Left = 0
          Top = 76
          Width = 1001
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 137
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1085#1086#1074#1086#1081' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
          TabOrder = 0
        end
        object Speclbl: TStaticText
          Left = 3
          Top = 16
          Width = 127
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
          TabOrder = 1
        end
        object SpecUpdDBL: TDBLookupComboBox
          Left = 3
          Top = 32
          Width = 998
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'spec_id'
          ListField = 'spec_maim'
          ListSource = DM.spectDS
          TabOrder = 2
        end
      end
      object Spec_upd_btn_Box: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object Spec_upd_Btn: TButton
          Left = 296
          Top = 11
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = Spec_upd_BtnClick
        end
      end
      object Spec_upd_dataBox: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 625
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object SpecUpddataGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 608
          Align = alClient
          DataSource = DM.spectDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'spec_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spec_maim'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
              Visible = True
            end>
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      ImageIndex = 3
      object delspedatacBox: TGroupBox
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
        object delspeclbl: TStaticText
          Left = 2
          Top = 29
          Width = 127
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
          TabOrder = 0
        end
        object delSpecDBL: TDBLookupComboBox
          Left = 3
          Top = 52
          Width = 998
          Height = 21
          Anchors = [akLeft, akRight]
          KeyField = 'spec_id'
          ListField = 'spec_maim'
          ListSource = DM.spectDS
          TabOrder = 1
        end
      end
      object dlspecbtnBox: TGroupBox
        Left = 0
        Top = 730
        Width = 1029
        Height = 55
        Align = alBottom
        TabOrder = 1
        object delspecBtn: TButton
          Left = 296
          Top = 11
          Width = 305
          Height = 25
          Align = alCustom
          Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = delspecBtnClick
        end
      end
      object delspecdataBox: TGroupBox
        Left = 0
        Top = 90
        Width = 1029
        Height = 640
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object delspecGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 623
          Align = alClient
          DataSource = DM.spectDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'spec_id'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spec_maim'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
              Visible = True
            end>
        end
      end
    end
  end
end

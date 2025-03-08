object Frm_ank: TFrm_ank
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1072#1085#1082#1077#1090#1086#1081
  ClientHeight = 616
  ClientWidth = 817
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
  object AnkPage: TPageControl
    Left = 0
    Top = 0
    Width = 817
    Height = 616
    ActivePage = UpdankPage
    Align = alClient
    TabOrder = 0
    object SelAnkPage: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1072#1085#1082#1077#1090#1077
      object ConditionAnkBox: TGroupBox
        Left = 0
        Top = 0
        Width = 809
        Height = 217
        Align = alTop
        Caption = #1055#1086#1080#1089#1082' '#1087#1086' '
        TabOrder = 0
        object seldogPanel: TPanel
          Left = 2
          Top = 134
          Width = 805
          Height = 81
          Align = alBottom
          TabOrder = 0
          object Radio_staj_name: TRadioButton
            Left = 24
            Top = 20
            Width = 217
            Height = 17
            Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072'  '#1087#1086' '#1089#1090#1072#1078#1091
            TabOrder = 0
            OnClick = Radio_staj_nameClick
          end
          object Radio_kval_grupp: TRadioButton
            Left = 255
            Top = 20
            Width = 226
            Height = 17
            Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080
            TabOrder = 1
            OnClick = Radio_kval_gruppClick
          end
          object RadioankselReset: TRadioButton
            Left = 568
            Top = 20
            Width = 113
            Height = 17
            Caption = #1057#1073#1088#1086#1089
            TabOrder = 2
            OnClick = RadioankselResetClick
          end
        end
        object condankPanel: TPanel
          Left = 2
          Top = 15
          Width = 805
          Height = 41
          Align = alTop
          TabOrder = 1
          DesignSize = (
            805
            41)
          object CondankEdit: TLabeledEdit
            Left = 16
            Top = 16
            Width = 767
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            EditLabel.Width = 196
            EditLabel.Height = 13
            EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' ('#1087#1086' '#1060#1048#1054' '#1074' '#1072#1085#1082#1077#1090#1077')'
            TabOrder = 0
            OnKeyPress = CondankEditKeyPress
          end
        end
        object fndankPanel: TPanel
          Left = 2
          Top = 56
          Width = 805
          Height = 78
          Align = alClient
          TabOrder = 2
          DesignSize = (
            805
            78)
          object fnd_kval_Edit: TLabeledEdit
            Left = 16
            Top = 16
            Width = 767
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            EditLabel.Width = 149
            EditLabel.Height = 13
            EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082'('#1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103')'
            TabOrder = 0
            OnKeyPress = fnd_kval_EditKeyPress
          end
          object Check_wish_search: TCheckBox
            Left = 264
            Top = 48
            Width = 265
            Height = 17
            Align = alCustom
            Anchors = [akLeft, akTop, akRight]
            Caption = #1042#1082#1083#1102#1095#1077#1085#1080#1077' '#1087#1086#1080#1089#1082#1072' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1103#1084'('#1078#1077#1083#1072#1077#1084#1099#1084') '
            TabOrder = 1
            OnClick = Check_wish_searchClick
          end
        end
      end
      object DataankBox: TGroupBox
        Left = 0
        Top = 217
        Width = 809
        Height = 324
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object DataankGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 805
          Height = 307
          Align = alClient
          DataSource = DM.ankDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ank_nom'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'b_data'
              Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'obr'
              Title.Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'staj'
              Title.Caption = #1057#1090#1072#1078
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kval'
              Title.Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'wish_cond'
              Title.Caption = #1046#1077#1083#1072#1077#1084#1099#1077' '#1091#1089#1083#1086#1074#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prof_name'
              Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
              Visible = True
            end>
        end
      end
      object ButtondogBox: TGroupBox
        Left = 0
        Top = 541
        Width = 809
        Height = 47
        Align = alBottom
        TabOrder = 2
        object SeanklBtn: TButton
          Left = 336
          Top = 19
          Width = 129
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = #1054#1090#1073#1086#1088' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1080#1102
          TabOrder = 0
          OnClick = SeanklBtnClick
        end
      end
    end
    object InsankPage: TTabSheet
      Caption = #1042#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1072#1085#1082#1077#1090#1077
      ImageIndex = 1
      object InpankBox: TGroupBox
        Left = 0
        Top = 0
        Width = 809
        Height = 306
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          809
          306)
        object bdata_1bl: TLabel
          Left = 24
          Top = 25
          Width = 80
          Height = 13
          Caption = #1044#1072#1090#1072' '#1056#1086#1078#1076#1077#1085#1080#1103
        end
        object profankLbl: TLabel
          Left = 75
          Top = 282
          Width = 60
          Height = 13
          Caption = #1055#1088#1086#1092#1077#1089#1089#1089#1080#1103
        end
        object fio_inp: TLabeledEdit
          Left = 128
          Top = 64
          Width = 657
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 23
          EditLabel.Height = 13
          EditLabel.Caption = #1060#1048#1054
          LabelPosition = lpLeft
          TabOrder = 0
        end
        object kval_inp: TLabeledEdit
          Left = 128
          Top = 112
          Width = 657
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 75
          EditLabel.Height = 13
          EditLabel.Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103
          LabelPosition = lpLeft
          TabOrder = 1
        end
        object staj_inp: TLabeledEdit
          Left = 128
          Top = 152
          Width = 657
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = #1057#1090#1072#1078
          LabelPosition = lpLeft
          TabOrder = 2
        end
        object wish_inp: TLabeledEdit
          Left = 149
          Top = 194
          Width = 636
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 139
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1077#1083#1072#1077#1084#1099#1077' '#1091#1089#1083#1086#1074#1080#1103' '#1088#1072#1073#1086#1090#1099
          LabelPosition = lpLeft
          TabOrder = 3
        end
        object bdata_inp: TDateTimePicker
          Left = 128
          Top = 25
          Width = 657
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Date = 45710.475503935190000000
          Time = 45710.475503935190000000
          TabOrder = 4
        end
        object profankDBL: TDBLookupComboBox
          Left = 149
          Top = 282
          Width = 636
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'id_prof'
          ListField = 'prof_name'
          ListSource = DM.ProfDS
          TabOrder = 5
        end
        object Obr_inp: TLabeledEdit
          Left = 149
          Top = 235
          Width = 636
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 67
          EditLabel.Height = 13
          EditLabel.Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
          LabelPosition = lpLeft
          TabOrder = 6
        end
      end
      object DataOutdogBox: TGroupBox
        Left = 0
        Top = 306
        Width = 809
        Height = 239
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object ankinsoutGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 805
          Height = 222
          Align = alClient
          DataSource = DM.ankDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ank_nom'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'b_data'
              Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'obr'
              Title.Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'staj'
              Title.Caption = #1057#1090#1072#1078
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kval'
              Title.Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'wish_cond'
              Title.Caption = #1046#1077#1083#1072#1077#1084#1099#1077' '#1091#1089#1083#1086#1074#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prof_name'
              Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
              Visible = True
            end>
        end
      end
      object ankinpBtnBox: TGroupBox
        Left = 0
        Top = 545
        Width = 809
        Height = 43
        Align = alBottom
        TabOrder = 2
        object ins_ank_Btn: TButton
          Left = 328
          Top = 15
          Width = 137
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = ins_ank_BtnClick
        end
      end
    end
    object UpdankPage: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1072#1085#1082#1077#1090#1077' '
      ImageIndex = 2
      object oldDtaBox: TGroupBox
        Left = 0
        Top = 204
        Width = 809
        Height = 95
        Align = alClient
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
        TabOrder = 0
        DesignSize = (
          809
          95)
        object nakfioLbl: TLabel
          Left = 16
          Top = 16
          Width = 37
          Height = 13
          Anchors = [akLeft, akTop, akRight]
          Caption = #1040#1085#1082#1077#1090#1072
        end
        object DBLookupComboBox_ank: TDBLookupComboBox
          Left = 147
          Top = 16
          Width = 654
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'ank_nom'
          ListField = 'fio'
          ListSource = DM.ankDS
          TabOrder = 0
        end
      end
      object setdataBox: TGroupBox
        Left = 0
        Top = 105
        Width = 809
        Height = 99
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        DesignSize = (
          809
          99)
        object updwishinp: TLabeledEdit
          Left = 109
          Top = 16
          Width = 697
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 42
          EditLabel.Height = 13
          EditLabel.Caption = #1059#1089#1083#1086#1074#1080#1103
          LabelPosition = lpLeft
          TabOrder = 0
        end
        object UpdwishBtn: TButton
          Left = 240
          Top = 55
          Width = 281
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
          OnClick = UpdwishBtnClick
        end
      end
      object UpddataBox: TGroupBox
        Left = 0
        Top = 299
        Width = 809
        Height = 289
        Align = alBottom
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object updaklGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 805
          Height = 272
          Align = alClient
          DataSource = DM.ankDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ank_nom'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'b_data'
              Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'obr'
              Title.Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'staj'
              Title.Caption = #1057#1090#1072#1078
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kval'
              Title.Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'wish_cond'
              Title.Caption = #1046#1077#1083#1072#1077#1084#1099#1077' '#1091#1089#1083#1086#1074#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prof_name'
              Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
              Visible = True
            end>
        end
      end
      object UpddatankBox: TGroupBox
        Left = 0
        Top = 0
        Width = 809
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 3
        DesignSize = (
          809
          105)
        object set_kval_inp: TLabeledEdit
          Left = 216
          Top = 16
          Width = 585
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 129
          EditLabel.Height = 13
          EditLabel.Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103' '#1087#1086' '#1072#1085#1082#1077#1090#1077
          LabelPosition = lpLeft
          TabOrder = 0
        end
        object Upd_kvalBtn: TButton
          Left = 240
          Top = 55
          Width = 281
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
          OnClick = Upd_kvalBtnClick
        end
      end
    end
    object deanklPage: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1087#1088#1086#1092#1077#1089#1089#1080#1080
      ImageIndex = 3
      object del_ankdataBox: TGroupBox
        Left = 0
        Top = 0
        Width = 809
        Height = 57
        Align = alTop
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
        TabOrder = 0
        DesignSize = (
          809
          57)
        object ankLbl: TLabel
          Left = 16
          Top = 16
          Width = 37
          Height = 13
          Anchors = [akLeft, akTop, akRight]
          Caption = #1040#1085#1082#1077#1090#1072
        end
        object delankdatadgComboBox: TDBLookupComboBox
          Left = 147
          Top = 16
          Width = 654
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'ank_nom'
          ListField = 'fio'
          ListSource = DM.ankDS
          TabOrder = 0
        end
      end
      object dlankbtnBox: TGroupBox
        Left = 0
        Top = 545
        Width = 809
        Height = 43
        Align = alBottom
        TabOrder = 1
        object dlankBtn: TButton
          Left = 328
          Top = 15
          Width = 281
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = dlankBtnClick
        end
      end
      object dldaraBox: TGroupBox
        Left = 0
        Top = 57
        Width = 809
        Height = 488
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object ankdelGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 805
          Height = 471
          Align = alClient
          DataSource = DM.doDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ank_nom'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'b_data'
              Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1060#1048#1054
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'obr'
              Title.Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'staj'
              Title.Caption = #1057#1090#1072#1078
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kval'
              Title.Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'wish_cond'
              Title.Caption = #1046#1077#1083#1072#1077#1084#1099#1077' '#1091#1089#1083#1086#1074#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prof_name'
              Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
              Visible = True
            end>
        end
      end
    end
  end
end

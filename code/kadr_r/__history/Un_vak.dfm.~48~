object Frm_vak: TFrm_vak
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089'  '#1074#1072#1082#1072#1085#1089#1080#1077#1081
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
  object vakPage: TPageControl
    Left = 0
    Top = 0
    Width = 817
    Height = 616
    ActivePage = delvaklPage
    Align = alClient
    TabOrder = 0
    object SelvAkPage: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1042#1072#1082#1072#1085#1089#1080#1080
      object ConditionvakBox: TGroupBox
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
          object Radio_dl_group: TRadioButton
            Left = 24
            Top = 20
            Width = 217
            Height = 17
            Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072'  '#1087#1086' '#1076#1086#1083#1078#1085#1086#1089#1090#1080
            TabOrder = 0
            OnClick = Radio_dl_groupClick
          end
          object Radio_company_grupp: TRadioButton
            Left = 255
            Top = 20
            Width = 226
            Height = 17
            Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1082#1086#1084#1087#1072#1085#1080#1080
            TabOrder = 1
            OnClick = Radio_company_gruppClick
          end
          object RadiovakselReset: TRadioButton
            Left = 568
            Top = 20
            Width = 113
            Height = 17
            Caption = #1057#1073#1088#1086#1089
            TabOrder = 2
            OnClick = RadiovakselResetClick
          end
        end
        object condvakPanel: TPanel
          Left = 2
          Top = 15
          Width = 805
          Height = 41
          Align = alTop
          TabOrder = 1
          DesignSize = (
            805
            41)
          object CondvakdolEdit: TLabeledEdit
            Left = 16
            Top = 16
            Width = 767
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            EditLabel.Width = 184
            EditLabel.Height = 13
            EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' ('#1087#1086'  '#1076#1086#1083#1078#1085#1086#1089#1090#1080')'
            TabOrder = 0
            OnKeyPress = CondvakdolEditKeyPress
          end
        end
        object fndvakPanel: TPanel
          Left = 2
          Top = 56
          Width = 805
          Height = 78
          Align = alClient
          TabOrder = 2
          DesignSize = (
            805
            78)
          object fnd_company_Edit: TLabeledEdit
            Left = 16
            Top = 21
            Width = 767
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            EditLabel.Width = 123
            EditLabel.Height = 13
            EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082'('#1050#1086#1084#1087#1072#1085#1080#1103')'
            TabOrder = 0
            OnKeyPress = fnd_company_EditKeyPress
          end
          object Check_prof_search: TCheckBox
            Left = 264
            Top = 48
            Width = 265
            Height = 17
            Align = alCustom
            Anchors = [akLeft, akTop, akRight]
            Caption = #1042#1082#1083#1102#1095#1077#1085#1080#1077' '#1087#1086#1080#1089#1082#1072' '#1087#1086'  '#1087#1088#1086#1092#1077#1089#1089#1080#1080' '
            TabOrder = 1
            OnClick = Check_prof_searchClick
          end
        end
      end
      object DatavakBox: TGroupBox
        Left = 0
        Top = 217
        Width = 809
        Height = 324
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object DatavakGrd: TDBGrid
          Left = 2
          Top = 15
          Width = 805
          Height = 307
          Align = alClient
          DataSource = DM.VakDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'position'
              Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              Width = 700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pay'
              Title.Caption = #1060#1086#1088#1084#1072' '#1086#1087#1083#1072#1090#1099
              Width = 700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'company'
              Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
              Width = 700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prof_name'
              Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quantity'
              Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1072#1082#1072#1085#1089#1080#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vak_free'
              Title.Caption = #1057#1090#1072#1090#1091#1089' '#1074#1072#1082#1072#1085#1089#1080#1080
              Visible = True
            end>
        end
      end
      object ButtonvakBox: TGroupBox
        Left = 0
        Top = 541
        Width = 809
        Height = 47
        Align = alBottom
        TabOrder = 2
        object SelvaklBtn: TButton
          Left = 336
          Top = 19
          Width = 129
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = #1054#1090#1073#1086#1088' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1080#1102
          TabOrder = 0
          OnClick = SelvaklBtnClick
        end
      end
    end
    object InsvakPage: TTabSheet
      Caption = #1042#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1074#1072#1082#1072#1085#1077#1089#1080#1080
      ImageIndex = 1
      object InpvakBox: TGroupBox
        Left = 0
        Top = 0
        Width = 809
        Height = 369
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          809
          369)
        object compvakLbl: TLabel
          Left = 56
          Top = 122
          Width = 66
          Height = 13
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        end
        object prfvakLbl: TLabel
          Left = 67
          Top = 170
          Width = 55
          Height = 13
          Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
        end
        object vakstlbl: TLabel
          Left = 86
          Top = 283
          Width = 36
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089
        end
        object pay_inp: TLabeledEdit
          Left = 128
          Top = 64
          Width = 657
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 38
          EditLabel.Height = 13
          EditLabel.Caption = #1054#1087#1083#1072#1090#1072
          LabelPosition = lpLeft
          TabOrder = 0
        end
        object compvakDBL: TDBLookupComboBox
          Left = 128
          Top = 122
          Width = 657
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'id_dog'
          ListField = 'company'
          ListSource = DM.dogDS
          TabOrder = 1
        end
        object position_inp: TLabeledEdit
          Left = 128
          Top = 18
          Width = 657
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 57
          EditLabel.Height = 13
          EditLabel.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
          LabelPosition = lpLeft
          TabOrder = 2
        end
        object profvakdbl: TDBLookupComboBox
          Left = 128
          Top = 170
          Width = 665
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'id_prof'
          ListField = 'prof_name'
          ListSource = DM.ProfDS
          TabOrder = 3
        end
        object quant_inp: TLabeledEdit
          Left = 136
          Top = 224
          Width = 657
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 60
          EditLabel.Height = 13
          EditLabel.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
          LabelPosition = lpLeft
          TabOrder = 4
        end
        object vakstBox: TComboBox
          Left = 136
          Top = 286
          Width = 657
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          ItemHeight = 13
          TabOrder = 5
          Text = 'vakstBox'
          Items.Strings = (
            #1057#1074#1086#1073#1086#1076#1085#1072
            #1047#1072#1085#1103#1090#1072)
        end
      end
      object DataOutdvakBox: TGroupBox
        Left = 0
        Top = 369
        Width = 809
        Height = 176
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object vakoutGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 805
          Height = 159
          Align = alClient
          DataSource = DM.VakDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'position'
              Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              Width = 700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pay'
              Title.Caption = #1060#1086#1088#1084#1072' '#1086#1087#1083#1072#1090#1099
              Width = 700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'company'
              Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
              Width = 700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prof_name'
              Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quantity'
              Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1072#1082#1072#1085#1089#1080#1081
              Width = 192
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vak_free'
              Title.Caption = #1057#1090#1072#1090#1091#1089' '#1074#1072#1082#1072#1085#1089#1080#1080
              Width = 112
              Visible = True
            end>
        end
      end
      object vakinpBtnBox: TGroupBox
        Left = 0
        Top = 545
        Width = 809
        Height = 43
        Align = alBottom
        TabOrder = 2
        object ins_vak_Btn: TButton
          Left = 328
          Top = 15
          Width = 137
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          OnClick = ins_vak_BtnClick
        end
      end
    end
    object UpdvakPage: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1074#1072#1082#1072#1085#1089#1080#1080
      ImageIndex = 2
      object UpddataBox: TGroupBox
        Left = 0
        Top = 143
        Width = 809
        Height = 445
        Align = alBottom
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object vaupdkoutGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 805
          Height = 428
          Align = alClient
          DataSource = DM.VakDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'position'
              Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              Width = 700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pay'
              Title.Caption = #1060#1086#1088#1084#1072' '#1086#1087#1083#1072#1090#1099
              Width = 700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'company'
              Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
              Width = 700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prof_name'
              Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quantity'
              Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1072#1082#1072#1085#1089#1080#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vak_free'
              Title.Caption = #1057#1090#1072#1090#1091#1089' '#1074#1072#1082#1072#1085#1089#1080#1080
              Visible = True
            end>
        end
      end
      object UpddatankBox: TGroupBox
        Left = 0
        Top = 0
        Width = 809
        Height = 143
        Align = alClient
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        ExplicitTop = -6
        DesignSize = (
          809
          143)
        object vakprofLbl: TLabel
          Left = 104
          Top = 72
          Width = 37
          Height = 13
          Anchors = [akLeft, akTop, akRight]
          Caption = #1040#1085#1082#1077#1090#1072
        end
        object vak_st_lbl: TLabel
          Left = 94
          Top = 18
          Width = 36
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089
        end
        object Upd_vak_st_Btn: TButton
          Left = 240
          Top = 103
          Width = 281
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Upd_vak_st_BtnClick
        end
        object DBLookupComboBox_prof: TDBLookupComboBox
          Left = 147
          Top = 64
          Width = 654
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'id_vakans'
          ListField = 'position'
          ListSource = DM.VakDS
          TabOrder = 1
        end
        object vak_stBox: TComboBox
          Left = 144
          Top = 10
          Width = 657
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          ItemHeight = 13
          TabOrder = 2
          Text = 'vakstBox'
          Items.Strings = (
            #1057#1074#1086#1073#1086#1076#1085#1072
            #1047#1072#1085#1103#1090#1072)
        end
      end
    end
    object delvaklPage: TTabSheet
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1074#1072#1082#1072#1085#1089#1080#1080
      ImageIndex = 3
      object del_vakdataBox: TGroupBox
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
        object delvakdatadgComboBox: TDBLookupComboBox
          Left = 147
          Top = 16
          Width = 654
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'id_vakans'
          ListField = 'position'
          ListSource = DM.VakDS
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
        object dlvakBtn: TButton
          Left = 328
          Top = 15
          Width = 281
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = dlvakBtnClick
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
        object DelvakoutGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 805
          Height = 471
          Align = alClient
          DataSource = DM.VakDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'position'
              Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              Width = 700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pay'
              Title.Caption = #1060#1086#1088#1084#1072' '#1086#1087#1083#1072#1090#1099
              Width = 700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'company'
              Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
              Width = 700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prof_name'
              Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quantity'
              Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1072#1082#1072#1085#1089#1080#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vak_free'
              Title.Caption = #1057#1090#1072#1090#1091#1089' '#1074#1072#1082#1072#1085#1089#1080#1080
              Visible = True
            end>
        end
      end
    end
  end
end

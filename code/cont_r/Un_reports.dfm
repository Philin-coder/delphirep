object Frm_reports: TFrm_reports
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1086#1090#1095#1077#1090#1085#1086#1089#1090#1100#1102
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
  object reprotPC: TPageControl
    Left = 0
    Top = 0
    Width = 1037
    Height = 813
    ActivePage = perosnalcaseTab
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 825
    ExplicitHeight = 520
    object perosnalcaseTab: TTabSheet
      Caption = #1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1093' '#1076#1072#1085#1085#1099#1093' '#1089#1090#1091#1076#1077#1085#1090#1072' ('#1051#1080#1095#1085#1086#1077' '#1076#1077#1083#1086' '#1089#1090#1091#1076#1077#1085#1090#1072' '#8470')'
      ExplicitWidth = 817
      ExplicitHeight = 492
      object Stud_report1_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitLeft = 352
        ExplicitTop = 112
        ExplicitWidth = 185
        object stud_repprt1_lbl: TStaticText
          Left = 3
          Top = 33
          Width = 48
          Height = 17
          Align = alCustom
          Caption = 'C'#1090#1091#1076#1077#1085#1090
          TabOrder = 0
        end
        object Stud_report1DBL: TDBLookupComboBox
          Left = 2
          Top = 56
          Width = 1024
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'stud_id'
          ListField = 'fio'
          ListSource = DM.StuddS
          TabOrder = 1
        end
      end
      object Stud_report1cbBox: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 176
        Align = alTop
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074' '#1086#1090#1095#1077#1090#1077
        TabOrder = 1
        ExplicitLeft = 3
        ExplicitTop = 137
        object stud_idCB: TCheckBox
          Left = 0
          Top = 24
          Width = 97
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = 'id'
          TabOrder = 0
          OnClick = stud_idCBClick
        end
        object b_dataCB: TCheckBox
          Left = 3
          Top = 64
          Width = 134
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          TabOrder = 1
          OnClick = b_dataCBClick
        end
        object SexCB: TCheckBox
          Left = 3
          Top = 104
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1055#1086#1083
          TabOrder = 2
          OnClick = SexCBClick
        end
        object civCB: TCheckBox
          Left = 3
          Top = 144
          Width = 134
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
          TabOrder = 3
          OnClick = civCBClick
        end
        object regionCB: TCheckBox
          Left = 208
          Top = 24
          Width = 97
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1056#1077#1075#1080#1086#1085
          TabOrder = 4
          OnClick = regionCBClick
        end
        object gorodCB: TCheckBox
          Left = 211
          Top = 64
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1043#1086#1088#1086#1076
          TabOrder = 5
          OnClick = gorodCBClick
        end
        object adrCB: TCheckBox
          Left = 211
          Top = 104
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1040#1076#1088#1077#1089
          TabOrder = 6
          OnClick = adrCBClick
        end
        object fioCB: TCheckBox
          Left = 211
          Top = 144
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1060#1048#1054
          TabOrder = 7
          OnClick = fioCBClick
        end
        object dom_tCB: TCheckBox
          Left = 720
          Top = 16
          Width = 97
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1044#1086#1084#1072#1096#1085#1080#1081
          TabOrder = 8
          OnClick = dom_tCBClick
        end
        object data_prCB: TCheckBox
          Left = 720
          Top = 62
          Width = 185
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
          TabOrder = 9
          OnClick = data_prCBClick
        end
        object naim_grupCB: TCheckBox
          Left = 723
          Top = 96
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1043#1088#1091#1087#1087#1072
          TabOrder = 10
          OnClick = naim_grupCBClick
        end
        object st_emailCB: TCheckBox
          Left = 723
          Top = 136
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = 'email'
          TabOrder = 11
          OnClick = st_emailCBClick
        end
        object to_liveCB: TCheckBox
          Left = 376
          Top = 24
          Width = 145
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1055#1088#1086#1078#1080#1074#1072#1085#1080#1077
          TabOrder = 12
          OnClick = to_liveCBClick
        end
        object mod_tCB: TCheckBox
          Left = 387
          Top = 72
          Width = 134
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081
          TabOrder = 13
          OnClick = mod_tCBClick
        end
      end
      object Stud_report1btnbox: TGroupBox
        Left = 0
        Top = 680
        Width = 1029
        Height = 105
        Align = alBottom
        TabOrder = 2
        ExplicitLeft = 368
        ExplicitTop = 128
        ExplicitWidth = 185
        object Stud_report1Btn: TButton
          Left = 376
          Top = 40
          Width = 75
          Height = 25
          Caption = #1042#1099#1074#1086#1076
          TabOrder = 0
          OnClick = Stud_report1BtnClick
        end
      end
      object Stud_report1databox: TGroupBox
        Left = 0
        Top = 281
        Width = 1029
        Height = 399
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 3
        ExplicitLeft = -4
        ExplicitTop = 111
        ExplicitHeight = 176
        object Stud_report1Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 382
          Align = alClient
          DataSource = DM.reprortDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
  end
end

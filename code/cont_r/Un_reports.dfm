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
    ActivePage = r6tab
    Align = alClient
    TabOrder = 0
    OnChange = reprotPCChange
    object perosnalcaseTab: TTabSheet
      Caption = #1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1093' '#1076#1072#1085#1085#1099#1093' '#1089#1090#1091#1076#1077#1085#1090#1072' ('#1051#1080#1095#1085#1086#1077' '#1076#1077#1083#1086' '#1089#1090#1091#1076#1077#1085#1090#1072' '#8470')'
      object Stud_report1_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
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
          Caption = 'Email'
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
    object Studlisttab: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074' '#1075#1088#1091#1087#1087#1099'  '#1082#1091#1088#1089' '#1085#1072' '#1076#1072#1090#1091
      ImageIndex = 1
      object Secondreport_groupBox: TGroupBox
        Left = 0
        Top = 171
        Width = 1029
        Height = 152
        Align = alTop
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074' '#1086#1090#1095#1077#1090#1077
        TabOrder = 0
        object r2cbId: TCheckBox
          Left = 15
          Top = 17
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = 'Id'
          TabOrder = 0
          OnClick = r2cbIdClick
        end
        object r2b_dataCB: TCheckBox
          Left = 15
          Top = 49
          Width = 130
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          TabOrder = 1
          OnClick = r2b_dataCBClick
        end
        object r2sexcb: TCheckBox
          Left = 15
          Top = 89
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1055#1086#1083
          TabOrder = 2
          OnClick = r2sexcbClick
        end
        object r2civCB: TCheckBox
          Left = 15
          Top = 132
          Width = 122
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
          TabOrder = 3
          OnClick = r2civCBClick
        end
        object r2regionCB: TCheckBox
          Left = 191
          Top = 17
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1056#1077#1075#1080#1086#1085
          TabOrder = 4
          OnClick = r2regionCBClick
        end
        object r2gorodCB: TCheckBox
          Left = 191
          Top = 49
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1043#1086#1088#1086#1076
          TabOrder = 5
          OnClick = r2gorodCBClick
        end
        object r2adrCB: TCheckBox
          Left = 191
          Top = 89
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1040#1076#1088#1077#1089
          TabOrder = 6
          OnClick = r2adrCBClick
        end
        object r2fioCB: TCheckBox
          Left = 191
          Top = 127
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1060#1048#1054
          TabOrder = 7
          OnClick = r2fioCBClick
        end
        object r2kursCB: TCheckBox
          Left = 351
          Top = 17
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1050#1091#1088#1089
          TabOrder = 8
          OnClick = r2kursCBClick
        end
        object r2to_liveCB: TCheckBox
          Left = 351
          Top = 49
          Width = 122
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1055#1088#1086#1078#1080#1074#1072#1085#1080#1077
          TabOrder = 9
          OnClick = r2to_liveCBClick
        end
        object r2mod_tcb: TCheckBox
          Left = 351
          Top = 89
          Width = 122
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081
          TabOrder = 10
          OnClick = r2mod_tcbClick
        end
        object r2dom_tCB: TCheckBox
          Left = 351
          Top = 127
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1044#1086#1084#1072#1096#1085#1080#1081
          TabOrder = 11
          OnClick = r2dom_tCBClick
        end
        object r2dpCB: TCheckBox
          Left = 543
          Top = 17
          Width = 146
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
          TabOrder = 12
          OnClick = r2dpCBClick
        end
        object r2naim_grupCB: TCheckBox
          Left = 543
          Top = 49
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = #1043#1088#1091#1087#1087#1072
          TabOrder = 13
          OnClick = r2naim_grupCBClick
        end
        object r2st_emailCB: TCheckBox
          Left = 543
          Top = 89
          Width = 97
          Height = 17
          Align = alCustom
          Anchors = [akLeft, akRight]
          Caption = 'Email'
          TabOrder = 14
          OnClick = r2st_emailCBClick
        end
      end
      object Secondreport_data_inp: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 171
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object grouplbl: TStaticText
          Left = 14
          Top = 27
          Width = 40
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1043#1088#1091#1087#1087#1072
          TabOrder = 0
        end
        object r2groupDBL: TDBLookupComboBox
          Left = 15
          Top = 64
          Width = 969
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'grup_id'
          ListField = 'naim_grup'
          ListSource = DM.GruppDS
          TabOrder = 1
        end
        object report2_datalbl: TStaticText
          Left = 15
          Top = 107
          Width = 30
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1044#1072#1090#1072
          TabOrder = 2
        end
        object r2_date_inp: TDateTimePicker
          Left = 15
          Top = 130
          Width = 969
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          Date = 45739.481301261570000000
          Time = 45739.481301261570000000
          TabOrder = 3
        end
      end
      object SecondReportbtnBox: TGroupBox
        Left = 0
        Top = 704
        Width = 1029
        Height = 81
        Align = alBottom
        TabOrder = 2
        object seconreportBtn: TButton
          Left = 456
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1099#1074#1086#1076
          TabOrder = 0
          OnClick = seconreportBtnClick
        end
      end
      object secondreport_databox: TGroupBox
        Left = 0
        Top = 323
        Width = 1029
        Height = 381
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 3
        object secondrepotGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 364
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
    object studlistin: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074', '#1087#1088#1080#1085#1103#1090#1099#1093' '#1074' '#1090#1077#1093#1085#1080#1082#1091#1084' '#1079#1072' '#1087#1077#1088#1080#1086#1076' '
      ImageIndex = 2
      object thirdreportinpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 233
        Align = alTop
        Caption = #1042#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object b_data_lbl: TStaticText
          Left = 22
          Top = 16
          Width = 115
          Height = 17
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 0
        end
        object edatalbl: TStaticText
          Left = 22
          Top = 120
          Width = 109
          Height = 17
          Caption = #1044#1072#1090#1072' '#1082#1086#1085#1094#1072' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 1
        end
        object r3begin_data_inp: TDateTimePicker
          Left = 22
          Top = 58
          Width = 971
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          Date = 45739.921269259260000000
          Time = 45739.921269259260000000
          TabOrder = 2
        end
        object r3Enddatainp: TDateTimePicker
          Left = 22
          Top = 157
          Width = 971
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          Date = 45739.921269259260000000
          Time = 45739.921269259260000000
          TabOrder = 3
        end
      end
      object thrdrepbtnBox: TGroupBox
        Left = 0
        Top = 680
        Width = 1029
        Height = 105
        Align = alBottom
        TabOrder = 1
        object thrdrepBtn: TButton
          Left = 488
          Top = 48
          Width = 75
          Height = 25
          Caption = #1042#1099#1074#1086#1076
          TabOrder = 0
          OnClick = thrdrepBtnClick
        end
      end
      object thrdrepBoxgruper: TGroupBox
        Left = 0
        Top = 233
        Width = 1029
        Height = 136
        Align = alTop
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100'  '#1074' '#1086#1090#1095#1077#1090#1077
        TabOrder = 2
        object r3Idcb: TCheckBox
          Left = 40
          Top = 32
          Width = 97
          Height = 17
          Align = alCustom
          Caption = 'Id'
          TabOrder = 0
          OnClick = r3IdcbClick
        end
        object r3b_data: TCheckBox
          Left = 40
          Top = 64
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          TabOrder = 1
          OnClick = r3b_dataClick
        end
        object r3_sexcb: TCheckBox
          Left = 40
          Top = 96
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1055#1086#1083
          TabOrder = 2
          OnClick = r3_sexcbClick
        end
        object r3civcb: TCheckBox
          Left = 168
          Top = 32
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
          TabOrder = 3
          OnClick = r3civcbClick
        end
        object r3regioncb: TCheckBox
          Left = 168
          Top = 64
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1056#1077#1075#1080#1086#1085
          TabOrder = 4
          OnClick = r3regioncbClick
        end
        object r3gorod: TCheckBox
          Left = 168
          Top = 96
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1043#1086#1088#1086#1076
          TabOrder = 5
          OnClick = r3gorodClick
        end
        object r3adrcb: TCheckBox
          Left = 368
          Top = 32
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1040#1076#1088#1077#1089
          TabOrder = 6
          OnClick = r3adrcbClick
        end
        object r3fiocb: TCheckBox
          Left = 368
          Top = 64
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1060#1048#1054
          TabOrder = 7
          OnClick = r3fiocbClick
        end
        object r3to_livecb: TCheckBox
          Left = 488
          Top = 24
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1055#1088#1086#1078#1080#1074#1072#1085#1080#1077
          TabOrder = 8
          OnClick = r3to_livecbClick
        end
        object r3mod_tcb: TCheckBox
          Left = 488
          Top = 47
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081
          TabOrder = 9
          OnClick = r3mod_tcbClick
        end
        object r3dom_tcb: TCheckBox
          Left = 488
          Top = 96
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1044#1086#1084#1072#1096#1085#1080#1081
          TabOrder = 10
          OnClick = r3dom_tcbClick
        end
        object r3data_prcb: TCheckBox
          Left = 656
          Top = 25
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
          TabOrder = 11
          OnClick = r3data_prcbClick
        end
        object r3naim_grupcb: TCheckBox
          Left = 656
          Top = 64
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1043#1088#1091#1087#1087#1072
          TabOrder = 12
          OnClick = r3naim_grupcbClick
        end
        object r3st_emailcb: TCheckBox
          Left = 656
          Top = 103
          Width = 97
          Height = 17
          Align = alCustom
          Caption = 'Email'
          TabOrder = 13
          OnClick = r3st_emailcbClick
        end
        object r3kurscb: TCheckBox
          Left = 368
          Top = 96
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1050#1091#1088#1089
          TabOrder = 14
          OnClick = r3kurscbClick
        end
      end
      object thrdrepdataBox: TGroupBox
        Left = 0
        Top = 369
        Width = 1029
        Height = 311
        Align = alClient
        Caption = #1042#1099#1074#1086#1076
        TabOrder = 3
        object thrdrepGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 294
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
    object studlstout: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074', '#1074#1099#1073#1099#1074#1096#1080#1093' '#1080#1079' '#1090#1077#1093#1085#1080#1082#1091#1084#1072' '#1079#1072' '#1087#1077#1088#1080#1086#1076' '#1089
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 28
      object r4datainpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 169
        Align = alTop
        Caption = #1042#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object r4begindatelbl: TStaticText
          Left = 24
          Top = 23
          Width = 115
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 0
        end
        object r4enddatelbl: TStaticText
          Left = 24
          Top = 84
          Width = 109
          Height = 17
          Align = alCustom
          Caption = #1044#1072#1090#1072' '#1082#1086#1085#1094#1072' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 1
        end
        object r4begindateinp: TDateTimePicker
          Left = 24
          Top = 46
          Width = 993
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          Date = 45741.672027083330000000
          Time = 45741.672027083330000000
          TabOrder = 2
        end
        object r4enddateinp: TDateTimePicker
          Left = 24
          Top = 107
          Width = 993
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          Date = 45741.672027083330000000
          Time = 45741.672027083330000000
          TabOrder = 3
        end
      end
      object r4grouperBox: TGroupBox
        Left = 0
        Top = 169
        Width = 1029
        Height = 250
        Align = alTop
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074' '#1086#1090#1095#1077#1090#1077
        TabOrder = 1
        ExplicitTop = 111
        object r4idCB: TCheckBox
          Left = 24
          Top = 32
          Width = 97
          Height = 17
          Align = alCustom
          Caption = 'id'
          TabOrder = 0
          OnClick = r4idCBClick
        end
        object r4b_dataCB: TCheckBox
          Left = 24
          Top = 80
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          TabOrder = 1
          OnClick = r4b_dataCBClick
        end
        object r4sexCB: TCheckBox
          Left = 24
          Top = 120
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1055#1086#1083
          TabOrder = 2
          OnClick = r4sexCBClick
        end
        object r4civCB: TCheckBox
          Left = 24
          Top = 168
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
          TabOrder = 3
          OnClick = r4civCBClick
        end
        object r4regionCB: TCheckBox
          Left = 200
          Top = 32
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1056#1077#1075#1080#1086#1085
          TabOrder = 4
          OnClick = r4regionCBClick
        end
        object r4gorodCB: TCheckBox
          Left = 200
          Top = 80
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1043#1086#1088#1086#1076
          TabOrder = 5
          OnClick = r4gorodCBClick
        end
        object r4adrCB: TCheckBox
          Left = 200
          Top = 120
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1040#1076#1088#1077#1089
          TabOrder = 6
          OnClick = r4adrCBClick
        end
        object r4fioCB: TCheckBox
          Left = 200
          Top = 168
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1060#1048#1054
          TabOrder = 7
          OnClick = r4fioCBClick
        end
        object r4kursCB: TCheckBox
          Left = 378
          Top = 32
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1050#1091#1088#1089
          TabOrder = 8
          OnClick = r4kursCBClick
        end
        object r4to_liveCB: TCheckBox
          Left = 378
          Top = 80
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1055#1088#1086#1078#1080#1074#1072#1085#1080#1077
          TabOrder = 9
          OnClick = r4to_liveCBClick
        end
        object r4mod_tCB: TCheckBox
          Left = 378
          Top = 120
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1052#1086#1073#1084#1083#1100#1085#1099#1081
          TabOrder = 10
          OnClick = r4mod_tCBClick
        end
        object r4dom_tCB: TCheckBox
          Left = 378
          Top = 168
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1044#1086#1084#1072#1096#1085#1084#1081
          TabOrder = 11
          OnClick = r4dom_tCBClick
        end
        object r4data_prCB: TCheckBox
          Left = 568
          Top = 32
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
          TabOrder = 12
          OnClick = r4data_prCBClick
        end
        object r4data_otCB: TCheckBox
          Left = 568
          Top = 80
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1044#1072#1090#1072' '#1086#1090#1095#1080#1089#1083#1077#1085#1080#1103
          TabOrder = 13
          OnClick = r4data_otCBClick
        end
        object r4naim_grupCB: TCheckBox
          Left = 568
          Top = 120
          Width = 97
          Height = 17
          Align = alCustom
          Caption = #1043#1088#1091#1087#1087#1072
          TabOrder = 14
          OnClick = r4naim_grupCBClick
        end
        object r4st_emailCB: TCheckBox
          Left = 568
          Top = 168
          Width = 97
          Height = 17
          Align = alCustom
          Caption = 'Email'
          TabOrder = 15
          OnClick = r4st_emailCBClick
        end
      end
      object r4dataBox: TGroupBox
        Left = 0
        Top = 419
        Width = 1029
        Height = 261
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        ExplicitLeft = 528
        ExplicitTop = 528
        ExplicitWidth = 185
        ExplicitHeight = 105
        object r4repgrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 244
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
      object r4btnBox: TGroupBox
        Left = 0
        Top = 680
        Width = 1029
        Height = 105
        Align = alBottom
        TabOrder = 3
        ExplicitLeft = 704
        ExplicitTop = 328
        ExplicitWidth = 185
        object r4Btn: TButton
          Left = 400
          Top = 40
          Width = 75
          Height = 25
          Caption = #1042#1099#1074#1086#1076
          TabOrder = 0
          OnClick = r4BtnClick
        end
      end
    end
    object r5_tab: TTabSheet
      Caption = 
        #1057#1074#1086#1076#1085#1099#1081' '#1086#1090#1095#1077#1090' '#1086' '#1076#1074#1080#1078#1077#1085#1080#1080' '#1082#1086#1085#1090#1080#1085#1075#1077#1085#1090#1072' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'  '#1079#1072' '#1087#1077#1088#1080#1086 +
        #1076' '
      ImageIndex = 4
      object r5dataBox: TGroupBox
        Left = 0
        Top = 169
        Width = 1029
        Height = 511
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitLeft = 424
        ExplicitTop = 344
        ExplicitWidth = 185
        ExplicitHeight = 105
        object r5repGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 494
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
      object r5btnbox: TGroupBox
        Left = 0
        Top = 680
        Width = 1029
        Height = 105
        Align = alBottom
        TabOrder = 1
        ExplicitLeft = 432
        ExplicitTop = 352
        ExplicitWidth = 185
        object r5Btn: TButton
          Left = 400
          Top = 48
          Width = 75
          Height = 25
          Caption = #1042#1099#1074#1086#1076
          TabOrder = 0
          OnClick = r5BtnClick
        end
      end
      object R5_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 169
        Align = alTop
        Anchors = [akLeft, akRight]
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        DesignSize = (
          1029
          169)
        object r5begin_lbl: TStaticText
          Left = 16
          Top = 23
          Width = 177
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 0
        end
        object r5endlbl: TStaticText
          Left = 16
          Top = 98
          Width = 105
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 1
        end
        object r5beginDate_inp: TDateTimePicker
          Left = 16
          Top = 54
          Width = 937
          Height = 21
          Anchors = [akLeft, akRight]
          Date = 45741.902252557870000000
          Time = 45741.902252557870000000
          TabOrder = 2
        end
        object r5endDateinp: TDateTimePicker
          Left = 16
          Top = 121
          Width = 937
          Height = 21
          Anchors = [akLeft, akRight]
          Date = 45741.902252557870000000
          Time = 45741.902252557870000000
          TabOrder = 3
        end
      end
    end
    object r6tab: TTabSheet
      Caption = #1057#1074#1086#1076#1085#1099#1081' '#1086#1090#1095#1077#1090' '#1087#1086' '#1074#1099#1073#1099#1074#1096#1080#1084' '#1089#1090#1091#1076#1077#1085#1090#1072#1084' '#1079#1072' '#1087#1077#1088#1080#1086#1076' '
      ImageIndex = 5
      object R6inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 137
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitTop = 9
        DesignSize = (
          1029
          137)
        object r6begindatelbl: TStaticText
          Left = 3
          Top = 20
          Width = 87
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 0
        end
        object r6beginDateinp: TDateTimePicker
          Left = 3
          Top = 43
          Width = 1023
          Height = 21
          Anchors = [akLeft, akRight]
          Date = 45741.944558229170000000
          Time = 45741.944558229170000000
          TabOrder = 1
        end
        object r6enddatalbl: TStaticText
          Left = 3
          Top = 87
          Width = 81
          Height = 17
          Align = alCustom
          Anchors = [akLeft]
          Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 2
        end
        object r6Dateendinp: TDateTimePicker
          Left = 3
          Top = 110
          Width = 1023
          Height = 21
          Anchors = [akLeft, akRight]
          Date = 45741.944558229170000000
          Time = 45741.944558229170000000
          TabOrder = 3
        end
      end
      object r6dataBox: TGroupBox
        Left = 0
        Top = 137
        Width = 1029
        Height = 575
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 456
        ExplicitTop = 376
        ExplicitWidth = 185
        ExplicitHeight = 105
        object r6Grid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 558
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
      object r6btnBox: TGroupBox
        Left = 0
        Top = 712
        Width = 1029
        Height = 73
        Align = alBottom
        TabOrder = 2
        object r6Btn: TButton
          Left = 520
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1099#1074#1086#1076
          TabOrder = 0
          OnClick = r6BtnClick
        end
      end
    end
  end
end

object Fdog: TFdog
  Left = 0
  Top = 0
  Caption = #1042#1074#1086#1076' '#1076#1086#1075#1086#1074#1086#1088#1072
  ClientHeight = 985
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 625
    Width = 752
    Height = 303
    Align = alClient
    Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    ExplicitTop = 928
    ExplicitHeight = 57
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 748
      Height = 286
      Align = alClient
      DataSource = fDm.DSdogovor
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 752
    Height = 625
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1099#1093
    TabOrder = 1
    DesignSize = (
      752
      625)
    object Label1: TLabel
      Left = 3
      Top = 64
      Width = 111
      Height = 13
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103' '#1075#1086#1089#1090#1103
    end
    object Label2: TLabel
      Left = -5
      Top = 193
      Width = 121
      Height = 13
      Caption = #1083#1072#1090#1072' '#1074#1099#1076#1072#1095#1080' '#1087#1072#1089#1089#1087#1086#1088#1090#1072
    end
    object Label3: TLabel
      Left = 3
      Top = 329
      Width = 93
      Height = 13
      Caption = #1044#1072#1090#1072' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
    end
    object Label4: TLabel
      Left = 56
      Top = 456
      Width = 31
      Height = 13
      Caption = #1053#1086#1084#1077#1088
    end
    object Label5: TLabel
      Left = 3
      Top = 497
      Width = 77
      Height = 13
      Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
    end
    object Label6: TLabel
      Left = 3
      Top = 600
      Width = 79
      Height = 13
      Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
    end
    object LabeledEdit1: TLabeledEdit
      Left = 121
      Top = 24
      Width = 629
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 54
      EditLabel.Height = 13
      EditLabel.Caption = #1060#1048#1054' '#1075#1086#1089#1090#1103
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 120
      Top = 64
      Width = 632
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Date = 44180.720071724540000000
      Time = 44180.720071724540000000
      TabOrder = 1
    end
    object LabeledEdit2: TLabeledEdit
      Left = 107
      Top = 112
      Width = 629
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 89
      EditLabel.Height = 13
      EditLabel.Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1089#1087#1086#1088#1090#1072' '
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object LabeledEdit3: TLabeledEdit
      Left = 107
      Top = 153
      Width = 629
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 89
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1077#1088#1080#1103' '#1087#1072#1089#1089#1087#1086#1088#1090#1072' '
      LabelPosition = lpLeft
      TabOrder = 3
    end
    object DateTimePicker2: TDateTimePicker
      Left = 122
      Top = 193
      Width = 622
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Date = 44180.720071724540000000
      Time = 44180.720071724540000000
      TabOrder = 4
    end
    object LabeledEdit4: TLabeledEdit
      Left = 107
      Top = 244
      Width = 629
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 55
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085
      LabelPosition = lpLeft
      TabOrder = 5
    end
    object LabeledEdit5: TLabeledEdit
      Left = 107
      Top = 284
      Width = 629
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 85
      EditLabel.Height = 13
      EditLabel.Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
      LabelPosition = lpLeft
      TabOrder = 6
    end
    object DateTimePicker3: TDateTimePicker
      Left = 107
      Top = 329
      Width = 642
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Date = 44180.720071724540000000
      Time = 44180.720071724540000000
      TabOrder = 7
    end
    object LabeledEdit6: TLabeledEdit
      Left = 107
      Top = 372
      Width = 642
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 19
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1086#1083
      LabelPosition = lpLeft
      TabOrder = 8
    end
    object LabeledEdit7: TLabeledEdit
      Left = 107
      Top = 412
      Width = 642
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 71
      EditLabel.Height = 13
      EditLabel.Caption = #1062#1077#1083#1100' '#1087#1088#1080#1077#1079#1076#1072
      LabelPosition = lpLeft
      TabOrder = 9
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 107
      Top = 456
      Width = 645
      Height = 21
      KeyField = 'nomer_id'
      ListField = 'nomer_cat'
      ListSource = fDm.DSnom
      TabOrder = 10
    end
    object DateTimePicker4: TDateTimePicker
      Left = 93
      Top = 497
      Width = 656
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Date = 44180.720071724540000000
      Time = 44180.720071724540000000
      TabOrder = 11
    end
    object LabeledEdit8: TLabeledEdit
      Left = 93
      Top = 548
      Width = 659
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 90
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1088#1086#1082' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103
      LabelPosition = lpLeft
      TabOrder = 12
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 104
      Top = 601
      Width = 645
      Height = 21
      KeyField = 'admin_id'
      ListField = 'admin_fio'
      ListSource = fDm.DSadm
      TabOrder = 13
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 928
    Width = 752
    Height = 57
    Align = alBottom
    TabOrder = 2
    object Button2: TButton
      Left = 2
      Top = 15
      Width = 748
      Height = 40
      Align = alClient
      Caption = #1042#1074#1086#1076
      TabOrder = 0
      OnClick = Button2Click
    end
  end
end

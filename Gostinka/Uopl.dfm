object Fopl: TFopl
  Left = 0
  Top = 0
  Caption = #1042#1074#1086#1076' '#1086#1087#1083#1072#1090#1099
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
    Top = 0
    Width = 752
    Height = 249
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    DesignSize = (
      752
      249)
    object Label1: TLabel
      Left = 11
      Top = 208
      Width = 43
      Height = 13
      Caption = #1044#1086#1075#1086#1074#1086#1088
    end
    object Label2: TLabel
      Left = 0
      Top = 16
      Width = 35
      Height = 13
      Caption = #1059#1089#1083#1091#1075#1072
    end
    object Label3: TLabel
      Left = 11
      Top = 48
      Width = 70
      Height = 13
      Caption = #1044#1072#1090#1072'  '#1086#1087#1083#1072#1090#1099
    end
    object DateTimePicker1: TDateTimePicker
      Left = 79
      Top = 40
      Width = 670
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Date = 44180.720071724540000000
      Time = 44180.720071724540000000
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 79
      Top = 13
      Width = 673
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      KeyField = 'id_usl'
      ListField = 'usl_naim'
      ListSource = fDm.DsUsluga
      TabOrder = 1
    end
    object LabeledEdit1: TLabeledEdit
      Left = 79
      Top = 80
      Width = 670
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1083'-'#1074#1086' '#1076#1085#1077#1081
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object LabeledEdit2: TLabeledEdit
      Left = 79
      Top = 126
      Width = 673
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 73
      EditLabel.Height = 13
      EditLabel.Caption = #1060#1086#1088#1084#1072' '#1086#1087#1083#1072#1090#1099
      LabelPosition = lpLeft
      TabOrder = 3
    end
    object LabeledEdit3: TLabeledEdit
      Left = 79
      Top = 166
      Width = 673
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 67
      EditLabel.Height = 13
      EditLabel.Caption = #1054#1073#1097#1072#1103' '#1089#1091#1084#1084#1072
      LabelPosition = lpLeft
      TabOrder = 4
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 79
      Top = 208
      Width = 670
      Height = 21
      KeyField = 'dogovor_id'
      ListField = 'guest_fio'
      ListSource = fDm.DSdogovor
      TabOrder = 5
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 249
    Width = 752
    Height = 679
    Align = alClient
    Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 1
    ExplicitTop = 193
    ExplicitHeight = 735
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 748
      Height = 662
      Align = alClient
      DataSource = fDm.DSopl
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 928
    Width = 752
    Height = 57
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 2
      Top = 15
      Width = 748
      Height = 40
      Align = alClient
      Caption = #1074#1074#1086#1076
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 320
      ExplicitTop = 16
      ExplicitWidth = 75
      ExplicitHeight = 25
    end
  end
end

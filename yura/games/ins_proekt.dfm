object Fins_proekt: TFins_proekt
  Left = 0
  Top = 0
  Caption = #1042#1074#1086#1076' '#1087#1088#1086#1077#1082#1090#1072
  ClientHeight = 578
  ClientWidth = 635
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
    Width = 635
    Height = 209
    Align = alTop
    Caption = #1042#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    TabOrder = 0
    ExplicitLeft = 24
    object Label1: TLabel
      Left = 3
      Top = 70
      Width = 109
      Height = 13
      Caption = #1076#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1088#1086#1077#1082#1090#1072
    end
    object Label2: TLabel
      Left = 0
      Top = 178
      Width = 194
      Height = 13
      Caption = #1076#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103'  '#1087#1088#1086#1077#1082#1090#1072'('#1087#1083#1072#1085#1086#1074#1072#1103')'
    end
    object LabeledEdit1: TLabeledEdit
      Left = 136
      Top = 16
      Width = 496
      Height = 21
      EditLabel.Width = 93
      EditLabel.Height = 13
      EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1077#1082#1090#1072
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 118
      Top = 70
      Width = 517
      Height = 21
      Date = 44131.993537060180000000
      Time = 44131.993537060180000000
      TabOrder = 1
    end
    object LabeledEdit3: TLabeledEdit
      Left = 118
      Top = 97
      Width = 517
      Height = 21
      EditLabel.Width = 51
      EditLabel.Height = 13
      EditLabel.Caption = #1084#1077#1085#1077#1076#1078#1077#1088
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object LabeledEdit2: TLabeledEdit
      Left = 129
      Top = 43
      Width = 504
      Height = 21
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = #1046#1072#1085#1088
      LabelPosition = lpLeft
      TabOrder = 3
    end
    object LabeledEdit4: TLabeledEdit
      Left = 115
      Top = 124
      Width = 517
      Height = 21
      EditLabel.Width = 77
      EditLabel.Height = 13
      EditLabel.Caption = #1062#1077#1085#1072' '#1087#1083#1072#1085#1086#1074#1072#1103
      LabelPosition = lpLeft
      TabOrder = 4
    end
    object LabeledEdit5: TLabeledEdit
      Left = 115
      Top = 151
      Width = 517
      Height = 21
      EditLabel.Width = 96
      EditLabel.Height = 13
      EditLabel.Caption = #1062#1077#1085#1072' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103
      LabelPosition = lpLeft
      TabOrder = 5
    end
    object DateTimePicker2: TDateTimePicker
      Left = 200
      Top = 178
      Width = 432
      Height = 21
      Date = 44131.993537060180000000
      Time = 44131.993537060180000000
      TabOrder = 6
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 535
    Width = 635
    Height = 43
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 2
      Top = 15
      Width = 631
      Height = 26
      Align = alClient
      Caption = #1042#1074#1086#1076
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 224
    Width = 635
    Height = 311
    Caption = #1042#1099#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 631
      Height = 294
      Align = alClient
      DataSource = DM1.DSproect
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end

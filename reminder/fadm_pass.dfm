object Fadm_passs: TFadm_passs
  Left = 0
  Top = 0
  Caption = #1043#1077#1085#1077#1088#1072#1074#1094#1080#1103' '#1087#1072#1088#1086#1083#1103
  ClientHeight = 413
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 249
    Top = 41
    Width = 0
    Height = 319
    Align = alClient
    ExplicitLeft = 2
    ExplicitTop = 15
    ExplicitWidth = 247
    ExplicitHeight = 302
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 0
      Top = 8
      Width = 113
      Height = 17
      Caption = #1047#1085#1072#1103' '#1089#1083#1086#1074#1086
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 487
      Top = 8
      Width = 113
      Height = 17
      Caption = #1053#1077' '#1079#1085#1072#1103' '#1089#1083#1086#1074#1086
      TabOrder = 1
      OnClick = RadioButton2Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 249
    Height = 319
    Align = alLeft
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 1
    object Label1: TLabel
      Left = 3
      Top = 59
      Width = 122
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100' '#1085#1072' '#1086#1089#1085#1086#1074#1077' '#1089#1083#1086#1074#1072
    end
    object LabeledEdit1: TLabeledEdit
      Left = 3
      Top = 32
      Width = 243
      Height = 21
      EditLabel.Width = 87
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1077#1082#1088#1077#1090#1085#1086#1077' '#1089#1083#1086#1074#1086
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 3
      Top = 88
      Width = 243
      Height = 21
      EditLabel.Width = 20
      EditLabel.Height = 13
      EditLabel.Caption = 'Md5'
      TabOrder = 1
    end
    object LabeledEdit3: TLabeledEdit
      Left = 3
      Top = 128
      Width = 243
      Height = 21
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Md5 (utf)'
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 3
      Top = 155
      Width = 97
      Height = 17
      Caption = 'utf'
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 249
    Top = 41
    Width = 386
    Height = 319
    Align = alRight
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1085#1099#1093
    TabOrder = 2
    object ed: TLabel
      Left = 11
      Top = 69
      Width = 106
      Height = 13
      Caption = #1057#1080#1084#1074#1086#1083#1099' '#1076#1083#1103' '#1087#1072#1088#1086#1083#1103
    end
    object Label2: TLabel
      Left = 6
      Top = 13
      Width = 113
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'  '#1101#1083#1077#1084#1085#1090#1086#1074
    end
    object Splitter1: TSplitter
      Left = 2
      Top = 15
      Height = 302
      ExplicitLeft = 6
      ExplicitTop = 14
    end
    object Edit1: TEdit
      Left = 11
      Top = 88
      Width = 372
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 11
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '12'
    end
    object UpDown1: TUpDown
      Left = 132
      Top = 32
      Width = 16
      Height = 21
      Associate = Edit2
      Position = 12
      TabOrder = 2
      OnChanging = UpDown1Changing
    end
    object LabeledEdit4: TLabeledEdit
      Left = 9
      Top = 136
      Width = 374
      Height = 21
      EditLabel.Width = 239
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1072#1088#1086#1083#1100' '#1085#1072' '#1086#1089#1085#1086#1074#1077' '#1087#1086#1083#1091#1095#1077#1085#1085#1099#1093' '#1089#1080#1084#1086#1074#1086#1083#1086#1074'(Md5)'
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 360
    Width = 635
    Height = 53
    Align = alBottom
    TabOrder = 3
    object Button2: TButton
      Left = 38
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1082#1072' '
      TabOrder = 0
      OnClick = Button2Click
    end
    object BitBtn1: TBitBtn
      Left = 260
      Top = 17
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkOK
    end
  end
  object BitBtn2: TBitBtn
    Left = 416
    Top = 380
    Width = 75
    Height = 25
    TabOrder = 4
    OnClick = BitBtn2Click
    Kind = bkHelp
  end
end

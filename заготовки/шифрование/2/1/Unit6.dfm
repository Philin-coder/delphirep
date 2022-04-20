object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 299
  ClientWidth = 895
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
    Width = 895
    Height = 73
    Align = alTop
    Caption = #1074#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '
    TabOrder = 0
    ExplicitWidth = 635
    object LabeledEdit1: TLabeledEdit
      Left = 16
      Top = 24
      Width = 616
      Height = 21
      EditLabel.Width = 53
      EditLabel.Height = 13
      EditLabel.Caption = #1082#1086#1083' '#1082#1072#1088#1090#1099
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 256
    Width = 895
    Height = 43
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 635
    object Button1: TButton
      Left = 3
      Top = 15
      Width = 75
      Height = 25
      Caption = #1074#1074#1086#1076
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 459
      Top = 6
      Width = 75
      Height = 25
      Caption = #1087#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 3
    Top = 73
    Width = 561
    Height = 183
    Align = alRight
    Caption = #1074#1099#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 557
      Height = 166
      Align = alClient
      DataSource = DM.DSshifr
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object GroupBox4: TGroupBox
    Left = 564
    Top = 73
    Width = 331
    Height = 183
    Align = alRight
    Caption = #1074#1099#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    TabOrder = 3
    ExplicitLeft = 304
    ExplicitTop = 81
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 327
      Height = 166
      Align = alClient
      DataSource = DM.DSpr
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end

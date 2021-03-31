object vvod: Tvvod
  Left = 0
  Top = 0
  Caption = #1086#1089#1085#1086#1074#1085#1099#1077' '#1074#1074#1086#1076#1099
  ClientHeight = 512
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 512
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = -8
    ExplicitHeight = 299
    object TabSheet1: TTabSheet
      Caption = #1042#1074#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      ExplicitLeft = 0
      ExplicitTop = 28
      ExplicitHeight = 271
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 627
        Height = 57
        Align = alTop
        Caption = #1042#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        TabOrder = 0
        object LabeledEdit1: TLabeledEdit
          Left = 3
          Top = 32
          Width = 606
          Height = 21
          EditLabel.Width = 104
          EditLabel.Height = 13
          EditLabel.Caption = #1074#1074#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 429
        Width = 627
        Height = 55
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 216
        object Button1: TButton
          Left = 264
          Top = 16
          Width = 91
          Height = 25
          Caption = #1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 449
          Top = 16
          Width = 75
          Height = 25
          Caption = #1086#1090#1084#1077#1085#1080#1090#1100
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 168
          Top = 16
          Width = 75
          Height = 25
          Caption = #1076#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 2
          OnClick = Button3Click
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 57
        Width = 627
        Height = 372
        Align = alClient
        Caption = #1074#1099#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        TabOrder = 2
        ExplicitLeft = 224
        ExplicitTop = 80
        ExplicitWidth = 185
        ExplicitHeight = 105
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 623
          Height = 355
          Align = alClient
          DataSource = DM1.DSspec
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1043#1088#1091#1087#1087#1072
      ImageIndex = 1
      ExplicitHeight = 271
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 627
        Height = 105
        Align = alTop
        Caption = #1042#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        TabOrder = 0
        object Label1: TLabel
          Left = 3
          Top = 48
          Width = 81
          Height = 13
          Caption = #1085#1072#1079#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1099
        end
        object LabeledEdit2: TLabeledEdit
          Left = 3
          Top = 3
          Width = 606
          Height = 27
          EditLabel.Width = 65
          EditLabel.Height = 13
          EditLabel.Caption = #1074#1074#1086#1076' '#1075#1088#1091#1087#1087#1099
          TabOrder = 0
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 3
          Top = 67
          Width = 606
          Height = 21
          KeyField = 'id_gruppa'
          ListField = 'g_naim'
          ListSource = DM1.DSgruppa
          TabOrder = 1
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 408
        Width = 627
        Height = 76
        Align = alBottom
        TabOrder = 1
        object Button4: TButton
          Left = 280
          Top = 3
          Width = 91
          Height = 54
          Caption = #1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100
          TabOrder = 0
        end
        object Button5: TButton
          Left = 449
          Top = 6
          Width = 75
          Height = 49
          Caption = #1086#1090#1084#1077#1085#1080#1090#1100
          TabOrder = 1
        end
        object Button6: TButton
          Left = 72
          Top = 6
          Width = 75
          Height = 51
          Caption = #1076#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 2
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 105
        Width = 627
        Height = 303
        Align = alClient
        Caption = #1074#1099#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        TabOrder = 2
        ExplicitTop = 57
        ExplicitHeight = 183
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 623
          Height = 286
          Align = alClient
          DataSource = DM1.DSgruppa
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      ExplicitHeight = 271
    end
  end
end

object Fmain: TFmain
  Left = 0
  Top = 0
  Caption = #1043#1072#1083#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 944
  ClientWidth = 1409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 721
    Top = 0
    Width = 688
    Height = 901
    Align = alClient
    Caption = #1044#1072#1085#1085#1099#1077
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 684
      Height = 884
      Align = alClient
      DataSource = DM.DS_stud
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ntab'
          Title.Caption = #1055#1086#1088#1103#1076#1082#1086#1074#1099#1081' '#1085#1086#1084#1077#1088
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
          FieldName = 'stip'
          Title.Caption = #1057#1090#1080#1087#1077#1085#1076#1080#1103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uder'
          Title.Caption = #1059#1076#1077#1088#1078#1072#1085#1086
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nach'
          Title.Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'date_n'
          Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1077#1088#1080#1086#1076#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'date_k'
          Title.Caption = #1044#1072#1090#1072' '#1082#1086#1085#1094#1072' '#1087#1077#1088#1080#1086#1076#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ball'
          Title.Caption = #1054#1094#1077#1085#1082#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'naim'
          Title.Caption = #1043#1088#1091#1087#1087#1072
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 721
    Height = 901
    Align = alLeft
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 1
    DesignSize = (
      721
      901)
    object Label1: TLabel
      Left = 40
      Top = 208
      Width = 3
      Height = 13
    end
    object LabeledEdit1: TLabeledEdit
      Left = 24
      Top = 32
      Width = 651
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 20
      EditLabel.Height = 13
      EditLabel.Caption = #1060#1080#1086
      TabOrder = 0
      OnKeyPress = LabeledEdit1KeyPress
    end
    object LabeledEdit2: TLabeledEdit
      Left = 24
      Top = 78
      Width = 651
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 56
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1090#1080#1087#1077#1085#1076#1080#1103
      TabOrder = 1
      OnKeyPress = LabeledEdit2KeyPress
    end
    object LabeledEdit3: TLabeledEdit
      Left = 24
      Top = 126
      Width = 651
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = #1059#1076#1077#1088#1078#1072#1085#1080#1077
      TabOrder = 2
      OnKeyPress = LabeledEdit3KeyPress
    end
    object LabeledEdit4: TLabeledEdit
      Left = 24
      Top = 174
      Width = 651
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 60
      EditLabel.Height = 13
      EditLabel.Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077
      TabOrder = 3
      OnKeyPress = LabeledEdit4KeyPress
    end
    object GroupBox4: TGroupBox
      Left = 24
      Top = 304
      Width = 682
      Height = 81
      Align = alCustom
      Caption = #1043#1088#1091#1087#1087#1072' '#1080' '#1086#1094#1077#1085#1082#1072
      TabOrder = 4
      object Label5: TLabel
        Left = 26
        Top = 21
        Width = 38
        Height = 13
        Caption = #1054#1094#1077#1085#1082#1072
      end
      object Label6: TLabel
        Left = 280
        Top = 26
        Width = 36
        Height = 13
        Caption = #1043#1088#1091#1087#1087#1072
      end
      object UpDown1: TUpDown
        Left = 205
        Top = 21
        Width = 16
        Height = 21
        Associate = Edit1
        Min = 1
        Max = 5
        Position = 1
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 84
        Top = 21
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '1'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 336
        Top = 21
        Width = 257
        Height = 21
        KeyField = 'n_gr'
        ListField = 'naim'
        ListSource = DM.DS_groupp
        TabOrder = 2
      end
    end
    object GroupBox5: TGroupBox
      Left = 24
      Top = 201
      Width = 682
      Height = 88
      Align = alCustom
      Caption = #1054#1090#1095#1080#1089#1083#1077#1085#1080#1103' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      TabOrder = 5
      DesignSize = (
        682
        88)
      object Label2: TLabel
        Left = 16
        Top = 15
        Width = 83
        Height = 13
        Anchors = [akLeft, akTop, akRight]
        Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
      end
      object Label3: TLabel
        Left = 496
        Top = 15
        Width = 77
        Height = 13
        Anchors = [akLeft, akTop, akRight]
        Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
      end
      object DateTimePicker2: TDateTimePicker
        Left = 496
        Top = 34
        Width = 183
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Date = 45318.448062523150000000
        Time = 45318.448062523150000000
        TabOrder = 0
      end
      object DateTimePicker1: TDateTimePicker
        Left = 19
        Top = 34
        Width = 206
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Date = 45318.448062523150000000
        Time = 45318.448062523150000000
        TabOrder = 1
      end
      object Button4: TButton
        Left = 336
        Top = 32
        Width = 75
        Height = 25
        Caption = #1056#1055#1042
        TabOrder = 2
        OnClick = Button4Click
      end
    end
    object GroupBox6: TGroupBox
      Left = 24
      Top = 416
      Width = 682
      Height = 79
      Align = alCustom
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
      TabOrder = 6
      DesignSize = (
        682
        79)
      object LabeledEdit5: TLabeledEdit
        Left = 58
        Top = 40
        Width = 601
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 44
        EditLabel.Height = 13
        EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
        LabelPosition = lpLeft
        TabOrder = 0
        OnKeyPress = LabeledEdit5KeyPress
      end
    end
    object GroupBox7: TGroupBox
      Left = 24
      Top = 501
      Width = 682
      Height = 79
      Align = alCustom
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1084
      TabOrder = 7
      object CheckBox1: TCheckBox
        Left = 58
        Top = 32
        Width = 97
        Height = 17
        Caption = #1055#1086' '#1092#1072#1084#1080#1083#1080#1080
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 176
        Top = 32
        Width = 97
        Height = 17
        Caption = #1055#1086' '#1086#1094#1077#1085#1082#1077
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 296
        Top = 32
        Width = 145
        Height = 17
        Caption = #1055#1086' '#1088#1072#1079#1084#1077#1088#1091' '#1089#1090#1077#1087#1077#1085#1076#1080#1080
        TabOrder = 2
        OnClick = CheckBox3Click
      end
      object RadioButton1: TRadioButton
        Left = 496
        Top = 32
        Width = 113
        Height = 17
        Caption = 'C'#1073#1088#1086#1089
        TabOrder = 3
        OnClick = RadioButton1Click
      end
    end
    object GroupBox8: TGroupBox
      Left = 24
      Top = 704
      Width = 682
      Height = 194
      Align = alCustom
      Caption = #1054#1090#1095#1080#1089#1083#1077#1085#1080#1077
      TabOrder = 8
      DesignSize = (
        682
        194)
      object Label4: TLabel
        Left = 3
        Top = 59
        Width = 36
        Height = 13
        Caption = #1043#1088#1091#1087#1087#1072
      end
      object Label7: TLabel
        Left = 3
        Top = 105
        Width = 88
        Height = 13
        Anchors = [akLeft, akTop, akRight]
        Caption = #1044#1072#1090#1072' '#1086#1090#1095#1080#1089#1083#1082#1077#1080#1103
      end
      object Label8: TLabel
        Left = 3
        Top = 16
        Width = 44
        Height = 13
        Caption = #1057#1090#1091#1076#1077#1085#1090
      end
      object Label9: TLabel
        Left = 142
        Top = 151
        Width = 42
        Height = 13
        Caption = #1042#1077#1088#1085#1091#1090#1100
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = -3
        Top = 78
        Width = 682
        Height = 21
        KeyField = 'n_gr'
        ListField = 'naim'
        ListSource = DM.DS_groupp
        TabOrder = 0
      end
      object DateTimePicker3: TDateTimePicker
        Left = 3
        Top = 124
        Width = 676
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Date = 45318.448062523150000000
        Time = 45318.448062523150000000
        TabOrder = 1
      end
      object Button2: TButton
        Left = 26
        Top = 166
        Width = 75
        Height = 25
        Caption = #1054#1090#1095#1080#1089#1083#1080#1090#1100
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 608
        Top = 166
        Width = 75
        Height = 25
        Caption = #1042#1077#1088#1085#1091#1090#1100
        TabOrder = 3
        OnClick = Button3Click
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 3
        Top = 35
        Width = 676
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        KeyField = 'ntab'
        ListField = 'fio'
        ListSource = DM.DS_stud
        TabOrder = 4
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 142
        Top = 170
        Width = 406
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        KeyField = 'ntab'
        ListField = 'fio'
        ListSource = DM.DS_ot
        TabOrder = 5
      end
    end
    object GroupBox9: TGroupBox
      Left = 24
      Top = 586
      Width = 682
      Height = 112
      Align = alCustom
      Caption = #1054#1090#1095#1080#1089#1083#1077#1085#1085#1099#1077' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      TabOrder = 9
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 678
        Height = 95
        Align = alClient
        DataSource = DM.DS_ot
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ntab'
            Title.Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fio'
            Title.Caption = #1060#1080#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'stip'
            Title.Caption = #1057#1090#1080#1087#1077#1085#1076#1080#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'uder'
            Title.Caption = #1059#1076#1077#1088#1078#1072#1085#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nach'
            Title.Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_n'
            Title.Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_k'
            Title.Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ball'
            Title.Caption = #1054#1094#1077#1085#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'naim'
            Title.Caption = #1043#1088#1091#1087#1087#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_o'
            Title.Caption = #1044#1072#1090#1072' '#1086#1090#1095#1080#1089#1083#1077#1085#1080#1103
            Visible = True
          end>
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 901
    Width = 1409
    Height = 43
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 344
      Top = 15
      Width = 75
      Height = 25
      Caption = #1042#1074#1086#1076
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 472
    Top = 16
    object N1: TMenuItem
      Caption = #1042#1074#1086#1076' '#1075#1088#1091#1087#1087#1099
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1090#1095#1077#1090
      OnClick = N2Click
    end
  end
end

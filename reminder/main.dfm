object Fmain: TFmain
  Left = 0
  Top = 0
  ClientHeight = 729
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1008
    Height = 177
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    DesignSize = (
      1008
      177)
    object Label1: TLabel
      Left = 16
      Top = 126
      Width = 120
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1079#1072#1082#1072#1079#1072
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 15
      Width = 1004
      Height = 105
      Align = alTop
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077'  '#1079#1072#1082#1072#1079#1072
      TabOrder = 0
      object RichEdit1: TRichEdit
        Left = 2
        Top = 15
        Width = 1000
        Height = 88
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
      end
    end
    object DateTimePicker1: TDateTimePicker
      Left = 16
      Top = 145
      Width = 988
      Height = 26
      Anchors = [akLeft, akTop, akRight]
      Date = 44678.748939456020000000
      Time = 44678.748939456020000000
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 680
    Width = 1008
    Height = 49
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 328
      Top = 16
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnKeyUp = Button1KeyUp
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 177
    Width = 1008
    Height = 503
    Align = alClient
    Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 1004
      Height = 486
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Fd: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 464
    Top = 696
  end
  object SD: TSaveTextFileDialog
    Left = 504
    Top = 696
  end
  object OD: TOpenTextFileDialog
    Left = 536
    Top = 696
  end
  object CD: TColorDialog
    Left = 584
    Top = 696
  end
end
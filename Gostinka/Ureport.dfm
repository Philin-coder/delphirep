object Freport: TFreport
  Left = 0
  Top = 0
  Caption = #1058#1088#1072#1085#1079#1072#1082#1094#1080#1103' 1'
  ClientHeight = 299
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
    Height = 105
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = -6
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 46
      Height = 13
      Caption = #1044#1086#1075#1086#1074#1086#1088' '
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object DateTimePicker1: TDateTimePicker
      Left = 68
      Top = 72
      Width = 549
      Height = 21
      Date = 44180.857839259260000000
      Time = 44180.857839259260000000
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 68
      Top = 24
      Width = 564
      Height = 21
      KeyField = 'dogovor_id'
      ListField = 'guest_fio'
      ListSource = fDm.DSdogovor
      TabOrder = 1
      OnClick = DBLookupComboBox1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 105
    Width = 635
    Height = 194
    Align = alClient
    Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 1
    ExplicitTop = 8
    ExplicitHeight = 105
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 631
      Height = 177
      Align = alClient
      DataSource = fDm.DSot
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end

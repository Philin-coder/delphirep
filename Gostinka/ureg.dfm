object Freg: TFreg
  Left = 0
  Top = 0
  Caption = #1056#1077#1075#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 136
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 635
    Height = 97
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    DesignSize = (
      635
      97)
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 72
      Height = 13
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 37
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100
    end
    object ComboBox1: TComboBox
      Left = 102
      Top = 21
      Width = 515
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        #1044#1080#1088#1077#1082#1090#1086#1088' '
        #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
        #1041#1091#1093#1075#1072#1083#1090#1077#1088)
    end
    object Edit1: TEdit
      Left = 102
      Top = 65
      Width = 515
      Height = 21
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 97
    Width = 635
    Height = 39
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 256
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 633
      Height = 37
      Align = alClient
      Caption = #1042#1093#1086#1076
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 168
      ExplicitTop = 6
      ExplicitWidth = 75
      ExplicitHeight = 25
    end
  end
end

object flogged_users: Tflogged_users
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1042#1074#1086#1076' '#1083#1086#1075#1080#1085#1072' '#1080' '#1087#1072#1088#1086#1083#1103
  ClientHeight = 158
  ClientWidth = 645
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
    Width = 645
    Height = 105
    Align = alTop
    Caption = #1042#1074#1086#1076'  '#1083#1086#1075#1080#1085#1072' '#1080' '#1087#1072#1088#1086#1083#1103
    TabOrder = 0
    ExplicitWidth = 635
    DesignSize = (
      645
      105)
    object Label1: TLabel
      Left = 4
      Top = 37
      Width = 30
      Height = 13
      Caption = #1051#1086#1075#1080#1085
    end
    object Label2: TLabel
      Left = 3
      Top = 81
      Width = 36
      Height = 13
      Caption = #1087#1072#1088#1086#1083#1100
    end
    object Edit2: TEdit
      Left = 40
      Top = 78
      Width = 595
      Height = 21
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 40
      Top = 34
      Width = 605
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 1
      OnSelect = ComboBox1Select
      ExplicitWidth = 595
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 105
    Width = 645
    Height = 53
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 635
    ExplicitHeight = 43
    DesignSize = (
      645
      53)
    object Button1: TButton
      Left = 248
      Top = 15
      Width = 85
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      Caption = #1042#1093#1086#1076
      TabOrder = 0
      OnClick = Button1Click
      OnKeyUp = Button1KeyUp
      ExplicitWidth = 75
    end
  end
end

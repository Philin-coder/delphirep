object Freg: TFreg
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = #1056#1077#1096#1080#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 168
  ClientWidth = 712
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 712
    Height = 105
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093' '
    TabOrder = 0
    DesignSize = (
      712
      105)
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 72
      Height = 13
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
    end
    object Label2: TLabel
      Left = 312
      Top = 43
      Width = 43
      Height = 13
      Caption = 'press me'
      OnDblClick = Label2DblClick
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 118
      Top = 16
      Width = 592
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      KeyField = 'usverId'
      ListField = 'usver_role'
      ListSource = dM.DSpass
      TabOrder = 0
    end
    object LabeledEdit1: TLabeledEdit
      Left = 118
      Top = 65
      Width = 591
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1072#1088#1086#1083#1100
      LabelPosition = lpLeft
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 105
    Width = 712
    Height = 63
    Align = alClient
    TabOrder = 1
    object Button1: TButton
      Left = 2
      Top = 15
      Width = 708
      Height = 46
      Align = alClient
      Caption = #1042#1093#1086#1076' '
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end

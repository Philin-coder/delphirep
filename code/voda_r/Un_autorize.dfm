object Frm_autor: TFrm_autor
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1080
  ClientHeight = 729
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object main_Image: TImage
    Left = 0
    Top = 105
    Width = 1008
    Height = 573
    Align = alClient
    ExplicitLeft = 464
    ExplicitTop = 296
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object Authot_inp_Box: TGroupBox
    Left = 0
    Top = 0
    Width = 1008
    Height = 105
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 336
    ExplicitTop = 32
    ExplicitWidth = 185
    DesignSize = (
      1008
      105)
    object autorlogindEdit: TLabeledEdit
      Left = 3
      Top = 28
      Width = 1002
      Height = 21
      Anchors = [akLeft, akRight]
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = #1051#1086#1075#1080#1085
      TabOrder = 0
    end
    object autorpassEdit: TLabeledEdit
      Left = 0
      Top = 68
      Width = 1005
      Height = 21
      Anchors = [akLeft, akRight]
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1072#1088#1086#1083#1100
      TabOrder = 1
    end
  end
  object author_btn_Box: TGroupBox
    Left = 0
    Top = 678
    Width = 1008
    Height = 51
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 248
    ExplicitWidth = 635
    object enter_btn: TButton
      Left = 280
      Top = 23
      Width = 75
      Height = 25
      Caption = #1042#1093#1086#1076
      TabOrder = 0
      OnClick = enter_btnClick
    end
  end
end

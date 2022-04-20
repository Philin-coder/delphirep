object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Hashmaker'
  ClientHeight = 299
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    Align = alClient
    Caption = #1058#1077#1082#1089#1090
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 120
    ExplicitWidth = 185
    ExplicitHeight = 105
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 631
      Height = 89
      Align = alTop
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
      ExplicitLeft = 224
      ExplicitTop = 104
      ExplicitWidth = 185
    end
    object Panel1: TPanel
      Left = 2
      Top = 256
      Width = 631
      Height = 41
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 224
      ExplicitTop = 128
      ExplicitWidth = 185
      object Edit1: TEdit
        Left = 1
        Top = 1
        Width = 629
        Height = 39
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 264
        ExplicitTop = 16
        ExplicitWidth = 121
        ExplicitHeight = 21
      end
    end
    object Button1: TButton
      Left = 24
      Top = 110
      Width = 75
      Height = 25
      Caption = 'urf'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 24
      Top = 141
      Width = 75
      Height = 25
      Caption = 'Ascii'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
end

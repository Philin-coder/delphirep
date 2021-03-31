object Form1: TForm1
  Left = 170
  Top = 18
  Caption = 'Form1'
  ClientHeight = 604
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 3
    Height = 13
  end
  object QRImage1: TImage
    Left = 124
    Top = 0
    Width = 600
    Height = 600
    OnMouseDown = QRImage1MouseDown
    OnMouseMove = QRImage1MouseMove
    OnMouseUp = QRImage1MouseUp
  end
  object Label3: TLabel
    Left = 34
    Top = 203
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object Label2: TLabel
    Left = 32
    Top = 244
    Width = 7
    Height = 13
    Caption = 'B'
  end
  object Label4: TLabel
    Left = 17
    Top = 277
    Width = 33
    Height = 13
    Caption = 'Radius'
  end
  object Label5: TLabel
    Left = 34
    Top = 325
    Width = 8
    Height = 13
    Caption = 'N'
  end
  object Label6: TLabel
    Left = 35
    Top = 371
    Width = 8
    Height = 13
    Caption = 'R'
  end
  object Label7: TLabel
    Left = 34
    Top = 418
    Width = 8
    Height = 13
    Caption = 'G'
  end
  object Label8: TLabel
    Left = 35
    Top = 467
    Width = 7
    Height = 13
    Caption = 'B'
  end
  object Button1: TButton
    Left = 24
    Top = 48
    Width = 97
    Height = 25
    Caption = #1060#1088#1072#1082#1090#1072#1083' '#1046#1091#1083#1080#1072
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 88
    Width = 97
    Height = 26
    Caption = #1052#1086#1081' '#1092#1088#1072#1082#1090#1072#1083
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 56
    Top = 200
    Width = 57
    Height = 21
    TabOrder = 2
    Text = '0,14527'
  end
  object Edit2: TEdit
    Left = 56
    Top = 240
    Width = 57
    Height = 21
    TabOrder = 3
    Text = '-0,45'
  end
  object Edit3: TEdit
    Left = 56
    Top = 272
    Width = 57
    Height = 21
    TabOrder = 4
    Text = '6'
  end
  object Edit4: TEdit
    Left = 56
    Top = 320
    Width = 57
    Height = 21
    TabOrder = 5
    Text = '200'
  end
  object Edit6: TEdit
    Left = 56
    Top = 416
    Width = 65
    Height = 21
    TabOrder = 6
    Text = '126'
  end
  object Edit5: TEdit
    Left = 56
    Top = 368
    Width = 65
    Height = 21
    TabOrder = 7
    Text = '25'
  end
  object Edit7: TEdit
    Left = 56
    Top = 464
    Width = 65
    Height = 21
    TabOrder = 8
    Text = '200'
  end
end

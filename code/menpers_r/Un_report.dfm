object Frm_report: TFrm_report
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1076#1072#1085#1085#1099#1084#1080' '#1086#1090#1095#1077#1090#1085#1086#1089#1090#1080
  ClientHeight = 632
  ClientWidth = 1037
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
  object rpPC: TPageControl
    Left = 0
    Top = 0
    Width = 1037
    Height = 632
    ActivePage = delTab
    Align = alClient
    TabOrder = 0
    object updTab: TTabSheet
      Caption = #1059#1089#1083#1091#1075#1080' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      ImageIndex = 2
      object rp_data_Box: TGroupBox
        Left = 0
        Top = 137
        Width = 1029
        Height = 399
        Align = alClient
        Caption = #1042#1099#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object rp_upd_Grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 382
          Align = alClient
          DataSource = DM.report1DS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object rp_upd_btn_Box: TGroupBox
        Left = 0
        Top = 536
        Width = 1029
        Height = 68
        Align = alBottom
        TabOrder = 1
        object rp_sel_btn: TButton
          Left = 416
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1088#1072#1090#1100
          TabOrder = 0
          OnClick = rp_sel_btnClick
        end
      end
      object rp_upd_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 137
        Align = alTop
        Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object rp1_data_b_lbl: TStaticText
          Left = 24
          Top = 24
          Width = 115
          Height = 17
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 0
        end
        object rp1_data_e_inp: TDateTimePicker
          Left = 24
          Top = 97
          Width = 1002
          Height = 21
          Date = 45805.654292766200000000
          Time = 45805.654292766200000000
          TabOrder = 1
        end
        object rp1_data_e_lbl: TStaticText
          Left = 32
          Top = 74
          Width = 112
          Height = 17
          Caption = ' '#1044#1072#1090#1072' '#1082#1086#1085#1094#1072' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 2
        end
        object rp1_data_b_inp: TDateTimePicker
          Left = 24
          Top = 47
          Width = 1002
          Height = 21
          Date = 45806.667459884260000000
          Time = 45806.667459884260000000
          TabOrder = 3
        end
      end
    end
    object delTab: TTabSheet
      Caption = #1059#1089#1083#1091#1075#1080' '#1085#1072' '#1076#1072#1090#1091
      ImageIndex = 3
      object rp2_Usl_data_box: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 431
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object Del_usl_grd: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 414
          Align = alClient
          DataSource = DM.report2DS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'naim'
              Title.Caption = #1048#1084#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'otch'
              Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086' '
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'snmae'
              Title.Caption = #1060#1072#1084#1080#1083#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'opis'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cost'
              Title.Caption = #1062#1077#1085#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'date_o'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1072#1079#1072#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nazv'
              Title.Caption = #1055#1083#1072#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'opis_1'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1087#1083#1072#1085#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fio'
              Title.Caption = #1052#1077#1085#1077#1076#1078#1077#1088
              Visible = True
            end>
        end
      end
      object rp2_Usl_inp_box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object rp2_datab_lbl: TStaticText
          Left = 24
          Top = 24
          Width = 115
          Height = 17
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1077#1088#1080#1086#1076#1072
          TabOrder = 0
        end
        object rp2_data_b_inp: TDateTimePicker
          Left = 24
          Top = 47
          Width = 1002
          Height = 21
          Date = 45806.667459884260000000
          Time = 45806.667459884260000000
          TabOrder = 1
        end
      end
      object rp2_Usl_btn_box: TGroupBox
        Left = 0
        Top = 536
        Width = 1029
        Height = 68
        Align = alBottom
        TabOrder = 2
        object rp2_Usl_btn: TButton
          Left = 400
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1088#1072#1090#1100
          TabOrder = 0
          OnClick = rp2_Usl_btnClick
        end
      end
    end
  end
end

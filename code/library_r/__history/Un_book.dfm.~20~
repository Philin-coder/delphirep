object frm_book: Tfrm_book
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1082#1085#1080#1075#1086#1081
  ClientHeight = 495
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
  object BookToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 1037
    Height = 47
    TabOrder = 0
  end
  object BookPC: TPageControl
    Left = 0
    Top = 47
    Width = 1037
    Height = 448
    ActivePage = sel_tab
    Align = alClient
    TabOrder = 1
    object sel_tab: TTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1082#1085#1080#1075#1077
      object book_condBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 113
        Align = alTop
        Caption = #1055#1086#1080#1089#1082' '#1087#1086
        TabOrder = 0
        DesignSize = (
          1029
          113)
        object bookcondedit_inp: TLabeledEdit
          Left = 19
          Top = 34
          Width = 966
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 199
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1086#1095#1085#1086#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102' '#1082#1085#1080#1075#1080
          TabOrder = 0
        end
        object book_fnddEdit: TLabeledEdit
          Left = 19
          Top = 81
          Width = 966
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 166
          EditLabel.Height = 13
          EditLabel.Caption = #1046#1080#1074#1086#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102' '#1082#1085#1080#1075#1080
          TabOrder = 1
          OnKeyPress = book_fnddEditKeyPress
        end
      end
      object bookbtnBox: TGroupBox
        Left = 0
        Top = 350
        Width = 1029
        Height = 70
        Align = alBottom
        TabOrder = 1
        object bookselBtn: TButton
          Left = 336
          Top = 32
          Width = 273
          Height = 25
          Caption = #1054#1090#1073#1086#1088' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1102
          TabOrder = 0
          OnClick = bookselBtnClick
        end
      end
      object book_grupperBox: TGroupBox
        Left = 0
        Top = 113
        Width = 1029
        Height = 64
        Align = alTop
        TabOrder = 2
        object booknaimRadio_grupper: TRadioButton
          Left = 65
          Top = 22
          Width = 232
          Height = 17
          Align = alCustom
          Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1085#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1102' '#1082#1085#1080#1075#1080
          TabOrder = 0
          OnClick = booknaimRadio_grupperClick
        end
        object book_reset_Radio: TRadioButton
          Left = 640
          Top = 24
          Width = 113
          Height = 17
          Align = alCustom
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 1
          OnClick = book_reset_RadioClick
        end
      end
      object book_data_Box: TGroupBox
        Left = 0
        Top = 177
        Width = 1029
        Height = 173
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 3
        object bookGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 156
          Align = alClient
          DataSource = DM.bookDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_Book'
              Title.Caption = #1053#1086#1084#1077#1088'  '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_B'
              Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'm_Source'
              Title.Caption = #1048#1089#1090#1086#1095#1085#1080#1077' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_P'
              Title.Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'm_Count'
              Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1082#1079#1077#1084#1087#1083#1103#1088#1086#1074
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Price'
              Title.Caption = #1062#1077#1085#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_G'
              Title.Caption = #1046#1072#1085#1088
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_A'
              Title.Caption = #1040#1074#1090#1086#1088
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Publisher'
              Title.Caption = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Number_of_Pages'
              Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1088#1072#1085#1080#1094
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Year_of_Pub'
              Title.Caption = #1043#1086#1076' '#1080#1079#1076#1072#1085#1080#1103
              Visible = True
            end>
        end
      end
    end
    object ins_tab: TTabSheet
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1078#1072#1085#1088#1077
      ImageIndex = 1
      object gen_inpBox: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 81
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          81)
        object genre_inp: TLabeledEdit
          Left = 3
          Top = 40
          Width = 1014
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 135
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1085#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1103' '#1078#1072#1085#1088#1072
          TabOrder = 0
        end
      end
      object Gen_inp_btnBox: TGroupBox
        Left = 0
        Top = 358
        Width = 1029
        Height = 62
        Align = alBottom
        TabOrder = 1
        object gen_insBon: TButton
          Left = 456
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1074#1086#1076
          TabOrder = 0
        end
      end
      object gen_inp_dataBox: TGroupBox
        Left = 0
        Top = 81
        Width = 1029
        Height = 277
        Align = alClient
        TabOrder = 2
        object gen_ins_dataBox: TGroupBox
          Left = 2
          Top = 15
          Width = 1025
          Height = 260
          Align = alClient
          Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
          TabOrder = 0
          object gen_insGrid: TDBGrid
            Left = 2
            Top = 15
            Width = 1021
            Height = 243
            Align = alClient
            DataSource = DM.GenreDS
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_Genre'
                Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Name_G'
                Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1078#1072#1085#1088#1072
                Width = 122
                Visible = True
              end>
          end
        end
      end
    end
    object updTab: TTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1078#1072#1085#1088#1077
      ImageIndex = 2
      object gen_upd_inp_box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 137
        Align = alTop
        Caption = #1042#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1029
          137)
        object gen_upd_lbl: TLabel
          Left = 3
          Top = 29
          Width = 73
          Height = 13
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1078#1072#1085#1088
        end
        object Upd_gen_naim_inp: TLabeledEdit
          Left = 3
          Top = 97
          Width = 1014
          Height = 21
          Anchors = [akLeft, akRight]
          EditLabel.Width = 158
          EditLabel.Height = 13
          EditLabel.Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1078#1072#1085#1088#1072
          TabOrder = 0
        end
        object gen_updDBL: TDBLookupComboBox
          Left = 0
          Top = 48
          Width = 1017
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'Name_G'
          ListField = 'Name_G'
          ListSource = DM.GenreDS
          TabOrder = 1
        end
      end
      object Upd_gen_data_Box: TGroupBox
        Left = 0
        Top = 137
        Width = 1029
        Height = 213
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object gen_updGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 196
          Align = alClient
          DataSource = DM.GenreDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_Genre'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_G'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1078#1072#1085#1088#1072
              Width = 122
              Visible = True
            end>
        end
      end
      object upd_gen_btn_box: TGroupBox
        Left = 0
        Top = 350
        Width = 1029
        Height = 70
        Align = alBottom
        TabOrder = 2
        object upd_gen_Btn: TButton
          Left = 464
          Top = 24
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 0
        end
      end
    end
    object delTab: TTabSheet
      Caption = ' '#1059#1076#1072#1083#1077#1085#1080#1077' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086#1073' '#1078#1072#1085#1088#1077
      ImageIndex = 3
      object gen_del_inp_Box: TGroupBox
        Left = 0
        Top = 0
        Width = 1029
        Height = 105
        Align = alTop
        Caption = #1042#1074#1086#1076'  '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object gen_delLbl: TLabel
          Left = 3
          Top = 29
          Width = 73
          Height = 13
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1078#1072#1085#1088
        end
        object gen_delDBL: TDBLookupComboBox
          Left = 9
          Top = 58
          Width = 1017
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akRight]
          KeyField = 'ID_Genre'
          ListField = 'Name_G'
          ListSource = DM.GenreDS
          TabOrder = 0
        end
      end
      object gen_del_btn_Box: TGroupBox
        Left = 0
        Top = 350
        Width = 1029
        Height = 70
        Align = alBottom
        TabOrder = 1
        object gen_del_btn: TButton
          Left = 464
          Top = 24
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
        end
      end
      object gen_del_data_Box: TGroupBox
        Left = 0
        Top = 105
        Width = 1029
        Height = 245
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object gendelGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 1025
          Height = 228
          Align = alClient
          DataSource = DM.GenreDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_Genre'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1081
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_G'
              Title.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1078#1072#1085#1088#1072
              Width = 122
              Visible = True
            end>
        end
      end
    end
  end
  object BookImageList: TImageList
    Left = 256
  end
end

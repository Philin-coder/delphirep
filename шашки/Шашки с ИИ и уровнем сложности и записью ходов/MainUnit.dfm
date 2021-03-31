object MainForm: TMainForm
  Left = 327
  Top = 271
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1064#1072#1096#1082#1080' '#1089' '#1048#1048' '#1080' '#1091#1088#1086#1074#1085#1077#1084' '#1089#1083#1086#1078#1085#1086#1089#1090#1080', '#1079#1072#1087#1080#1089#1100' '#1074' '#1092#1072#1081#1083' '#1093#1086#1076#1086#1074
  ClientHeight = 276
  ClientWidth = 671
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00CCC0
    000CCCC0000000000CCCC7777CCCCCCC0000CCCC00000000CCCC7777CCCCCCCC
    C0000CCCCCCCCCCCCCC7777CCCCC0CCCCC0000CCCCCCCCCCCC7777CCCCC700CC
    C00CCCC0000000000CCCC77CCC77000C0000CCCC00000000CCCC7777C7770000
    00000CCCC000000CCCC777777777C000C00000CCCC0000CCCC77777C777CCC00
    CC00000CCCCCCCCCC77777CC77CCCCC0CCC000CCCCC00CCCCC777CCC7CCCCCCC
    CCCC0CCCCCCCCCCCCCC7CCCCCCCCCCCC0CCCCCCCCCCCCCCCCCCCCCC7CCC70CCC
    00CCCCCCCC0CC0CCCCCCCC77CC7700CC000CCCCCC000000CCCCCC777CC7700CC
    0000CCCC00000000CCCC7777CC7700CC0000C0CCC000000CCC7C7777CC7700CC
    0000C0CCC000000CCC7C7777CC7700CC0000CCCC00000000CCCC7777CC7700CC
    000CCCCCC000000CCCCCC777CC7700CC00CCCCCCCC0CC0CCCCCCCC77CC770CCC
    0CCCCCCCCCCCCCCCCCCCCCC7CCC7CCCCCCCC0CCCCCCCCCCCCCC7CCCCCCCCCCC0
    CCC000CCCCC00CCCCC777CCC7CCCCC00CC00000CCCCCCCCCC77777CC77CCC000
    C00000CCCC0000CCCC77777C777C000000000CCCC000000CCCC777777777000C
    0000CCCC00000000CCCC7777C77700CCC00CCCC0000000000CCCC77CCC770CCC
    CC0000CCCCCCCCCCCC7777CCCCC7CCCCC0000CCCCCCCCCCCCCC7777CCCCCCCCC
    0000CCCC00000000CCCC7777CCCCCCC0000CCCC0000000000CCCC7777CCC0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline PositionFrame: TPositionFrame
    Left = 7
    Top = 7
    Width = 267
    Height = 266
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    TabOrder = 0
    inherited Image: TImage
      Width = 267
      Height = 265
      Align = alNone
    end
  end
  object PartyView: TListView
    Left = 280
    Top = 7
    Width = 385
    Height = 208
    Columns = <
      item
        Caption = '#'
      end
      item
        Caption = 'White'
      end
      item
        Caption = 'Black'
      end>
    ReadOnly = True
    RowSelect = True
    TabOrder = 1
    ViewStyle = vsReport
  end
  object MainMenu: TMainMenu
    Left = 105
    Top = 102
    object GameMenu: TMenuItem
      Tag = 60
      Caption = #1048#1043#1056#1040
      ShortCut = 16451
      OnClick = CopyGameActionExecute
      object NewItem: TMenuItem
        Action = NewGameAction
        Caption = #1053#1086#1074#1072#1103' '#1080#1075#1088#1072
      end
      object Separator1: TMenuItem
        Caption = '-'
      end
      object BeginerItem: TMenuItem
        Tag = 20
        Action = BeginerAction
        Caption = #1059#1088#1086#1074#1077#1085#1100' '#1089#1083#1086#1078#1085#1086#1089#1090#1080' '#1083#1077#1075#1082#1080#1081
        GroupIndex = 2
        RadioItem = True
      end
      object IntermediateItem: TMenuItem
        Tag = 55
        Action = IntermediateAction
        Caption = #1059#1088#1086#1074#1077#1085#1100' '#1089#1083#1086#1078#1085#1086#1089#1090#1080' '#1089#1088#1077#1076#1085#1080#1081
        GroupIndex = 2
        RadioItem = True
      end
      object ExpertItem: TMenuItem
        Tag = 60
        Action = ExpertAction
        Caption = #1059#1088#1086#1074#1077#1085#1100' '#1089#1083#1086#1078#1085#1086#1089#1090#1080'  '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1081
        GroupIndex = 2
        RadioItem = True
      end
      object Separator2: TMenuItem
        Caption = '-'
        GroupIndex = 2
      end
      object UndoMoveItem: TMenuItem
        Action = UndoMoveAction
        Caption = #1042#1086#1079#1074#1088#1072#1090' '#1093#1086#1076#1072
        GroupIndex = 2
      end
      object CopyGameItem: TMenuItem
        Action = CopyGameAction
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1093#1086#1076#1099' '#1074' '#1092#1072#1081#1083
        GroupIndex = 2
      end
      object Separator4: TMenuItem
        Caption = '-'
        GroupIndex = 2
      end
      object ExitItem: TMenuItem
        Action = ExitAction
        Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        GroupIndex = 2
      end
    end
    object ModeMenu: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object MachineWhiteItem: TMenuItem
        Action = MachineWhiteAction
        Caption = #1048#1075#1088#1072' '#1048#1048' '#1073#1077#1083#1099#1084#1080
        GroupIndex = 1
        RadioItem = True
      end
      object MachineBlackItem: TMenuItem
        Action = MachineBlackAction
        Caption = #1048#1075#1088#1072' '#1048#1048' '#1095#1077#1088#1085#1099#1084#1080
        GroupIndex = 1
        RadioItem = True
      end
      object TwoMachineItem: TMenuItem
        Action = TwoMachineAction
        Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088' '#1087#1088#1086#1090#1080#1074' '#1089#1072#1084#1086#1075#1086' '#1089#1077#1073#1103
        GroupIndex = 1
        RadioItem = True
      end
      object ViewItem: TMenuItem
        Action = ViewGameAction
        Caption = #1041#1077#1079' '#1048#1048',  '#1076#1074#1072' '#1080#1075#1088#1086#1082#1072
        GroupIndex = 1
        RadioItem = True
      end
      object Separator3: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object FlipBoardItem: TMenuItem
        Action = FlipBoardAction
        Caption = #1055#1077#1088#1077#1074#1077#1088#1085#1091#1090#1100' '#1076#1086#1089#1082#1091
        GroupIndex = 1
      end
    end
  end
  object ActionList: TActionList
    OnUpdate = ActionListUpdate
    Left = 144
    Top = 159
    object NewGameAction: TAction
      Category = 'Game'
      Caption = '&New'
      ShortCut = 113
      OnExecute = NewGameActionExecute
    end
    object BeginerAction: TAction
      Tag = 20
      Category = 'Level'
      Caption = '&Beginer'
      OnExecute = LevelActionExecute
    end
    object IntermediateAction: TAction
      Tag = 40
      Category = 'Level'
      Caption = '&Intermediate'
      OnExecute = LevelActionExecute
    end
    object ExpertAction: TAction
      Tag = 60
      Category = 'Level'
      Caption = '&Expert'
      OnExecute = LevelActionExecute
    end
    object UndoMoveAction: TAction
      Category = 'Game'
      Caption = '&Undo move'
      ShortCut = 8
      OnExecute = UndoMoveActionExecute
    end
    object ExitAction: TAction
      Category = 'Game'
      Caption = 'E&xit'
      ShortCut = 32856
      OnExecute = ExitActionExecute
    end
    object MachineWhiteAction: TAction
      Category = 'Mode'
      Caption = 'Machine &white'
      OnExecute = MachineWhiteActionExecute
    end
    object MachineBlackAction: TAction
      Category = 'Mode'
      Caption = 'Machine &black'
      OnExecute = MachineBlackActionExecute
    end
    object TwoMachineAction: TAction
      Category = 'Mode'
      Caption = '&Two machine'
      OnExecute = TwoMachineActionExecute
    end
    object ViewGameAction: TAction
      Category = 'Mode'
      Caption = '&View game'
      OnExecute = ViewGameActionExecute
    end
    object FlipBoardAction: TAction
      Caption = '&Flip board'
      ShortCut = 114
      OnExecute = FlipBoardActionExecute
    end
    object SetPositionAction: TAction
      Category = 'Debug'
      Caption = 'Set position'
    end
    object AddToLibraryAction: TAction
      Category = 'Debug'
      Caption = 'Add to library'
      ShortCut = 49217
    end
    object CopyGameAction: TAction
      Category = 'Game'
      Caption = 'Copy game'
      ShortCut = 16451
      OnExecute = CopyGameActionExecute
    end
  end
end

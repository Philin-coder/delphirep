object DM: TDM
  OldCreateOrder = False
  Height = 255
  Width = 374
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\code\Result\delp' +
      'hi\code\kadr_r\base\mdb\kadr_base.mdb;Persist Security Info=Fals' +
      'e'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 24
  end
  object ProfQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from prof;')
    Left = 32
    Top = 96
  end
  object ProfDS: TDataSource
    DataSet = ProfQuery
    Left = 32
    Top = 160
  end
  object doQuery: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      'select * from prof;')
    Left = 320
    Top = 80
  end
  object doDS: TDataSource
    DataSet = doQuery
    Left = 328
    Top = 152
  end
  object dogQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dogovor;')
    Left = 88
    Top = 96
  end
  object dogDS: TDataSource
    DataSet = dogQuery
    Left = 96
    Top = 160
  end
  object ankQuery: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT questionnaire.ank_nom, questionnaire.b_data, questionnair' +
        'e.fio, questionnaire.obr,  questionnaire.staj, questionnaire.kva' +
        'l, questionnaire.wish_cond, prof.prof_name'
      'FROM questionnaire'
      'inner join prof on questionnaire.id_prof= prof.id_prof'
      'WHERE (((1)=1));')
    Left = 152
    Top = 96
  end
  object ankDS: TDataSource
    DataSet = ankQuery
    Left = 160
    Top = 160
  end
  object VaKQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT*  FROM VAKANSIA;')
    Left = 216
    Top = 96
  end
  object VakDS: TDataSource
    DataSet = VaKQuery
    Left = 224
    Top = 160
  end
end

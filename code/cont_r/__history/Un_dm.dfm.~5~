object DM: TDM
  OldCreateOrder = False
  Height = 225
  Width = 358
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=cont_r'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 8
  end
  object specQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from spec;')
    Left = 24
    Top = 64
  end
  object spectDS: TDataSource
    DataSet = specQuery
    Left = 24
    Top = 128
  end
end

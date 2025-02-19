object DM: TDM
  OldCreateOrder = False
  Height = 295
  Width = 458
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=testworkdb'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 24
  end
  object QueryStud: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      'select * from stud;')
    Left = 24
    Top = 81
  end
  object DSStud: TDataSource
    DataSet = QueryStud
    Left = 32
    Top = 152
  end
end

object DM: TDM
  OldCreateOrder = False
  Height = 333
  Width = 428
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=testdb;Use Procedure for Prepare=1;Auto' +
      ' Translate=True;Packet Size=4096;Workstation ID=DESKTOP-97N3JC1;' +
      'Use Encryption for Data=False;Tag with column collation when pos' +
      'sible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 32
  end
  object TestQuery: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      'select * from Test_tbl;')
    Left = 32
    Top = 80
  end
  object DSTest: TDataSource
    DataSet = TestQuery
    Left = 24
    Top = 144
  end
end

object DM: TDM
  OldCreateOrder = False
  Height = 255
  Width = 374
  object Connection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\code\Result\delp' +
      'hi\code\kadr_r\base\mdb\kadr_base.mdb;Persist Security Info=Fals' +
      'e'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 24
  end
  object ProfQuery: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      'select * from prof;')
    Left = 32
    Top = 72
  end
  object ProfDS: TDataSource
    DataSet = ProfQuery
    Left = 32
    Top = 144
  end
end

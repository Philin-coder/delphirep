object DM: TDM
  OldCreateOrder = False
  Height = 358
  Width = 491
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=concurs_r'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
  end
  object muserQuery: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      'select '
      '  mwork.id_work,'
      '  mwork.work_naim,'
      '  mwork.work_opis,'
      '  mwork.work_data '
      'from mwork'
      'where 1=1')
    Left = 40
    Top = 72
  end
  object muserDS: TDataSource
    DataSet = muserQuery
    Left = 40
    Top = 128
  end
  object ADOStoredProc1: TADOStoredProc
    Parameters = <>
    Left = 32
    Top = 192
  end
end

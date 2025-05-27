object DM: TDM
  OldCreateOrder = False
  Height = 472
  Width = 645
  object Connection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=men_pers_r'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 8
    Top = 8
  end
  object userQuery: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      'select'
      ' usver_r.user_id,'
      ' usver_r.user_pas,'
      ' usver_r.usver_name'
      'from usver_r '
      'where 1=1')
    Left = 104
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = userQuery
    Left = 104
    Top = 128
  end
  object ADOStoredProc1: TADOStoredProc
    Parameters = <>
    Left = 112
    Top = 184
  end
  object ADOStoredProc2: TADOStoredProc
    Parameters = <>
    Left = 120
    Top = 248
  end
  object ADOStoredProc3: TADOStoredProc
    Parameters = <>
    Left = 128
    Top = 304
  end
  object ADOStoredProc4: TADOStoredProc
    Parameters = <>
    Left = 128
    Top = 376
  end
end

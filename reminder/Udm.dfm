object fdm: Tfdm
  OldCreateOrder = False
  Height = 378
  Width = 625
  object Query_pass: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from users')
    Left = 48
    Top = 96
  end
  object DS_PASS: TDataSource
    DataSet = Query_pass
    Left = 56
    Top = 168
  end
  object ins_pass: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_pass;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@usver_name'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = ''
      end
      item
        Name = '@usver_pass'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end>
    Left = 56
    Top = 232
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=reminde_base'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 16
  end
end

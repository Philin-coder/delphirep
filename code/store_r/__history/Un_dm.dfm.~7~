object DM: TDM
  OldCreateOrder = False
  Height = 269
  Width = 360
  object goodQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'good.id_good,'
      'good.naim_good,'
      'good.quant_good,'
      'good.cost_good '
      'from good'
      'where 1=1;')
    Left = 16
    Top = 64
  end
  object goodDS: TDataSource
    DataSet = goodQuery
    Left = 16
    Top = 128
  end
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=store_r'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
  end
  object sel_good: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_good;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@naim_good'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
      end>
    Left = 16
    Top = 200
  end
end

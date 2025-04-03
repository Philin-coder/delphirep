object DM: TDM
  OldCreateOrder = False
  Height = 375
  Width = 811
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=library_r'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
  end
  object AutQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'Author.ID_Author,'
      'Author.Name_A'
      'from Author'
      'where 1=1')
    Left = 56
    Top = 56
  end
  object autDS: TDataSource
    DataSet = AutQuery
    Left = 56
    Top = 112
  end
  object Sel_autor_by_name: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_autor_by_name;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Name_A'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 56
    Top = 176
  end
  object ins_autor: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_autor;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@Name_A'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end>
    Left = 56
    Top = 232
  end
  object upd_autor: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_autor;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@ID_Author'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Name_A'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end>
    Left = 64
    Top = 288
  end
end

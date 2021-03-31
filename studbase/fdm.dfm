object DM1: TDM1
  OldCreateOrder = False
  Height = 344
  Width = 669
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=test'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 8
  end
  object Queryspc: TADOQuery
    Connection = ADOConnection1
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from spec')
    Left = 32
    Top = 80
  end
  object DSspec: TDataSource
    DataSet = Queryspc
    Left = 32
    Top = 128
  end
  object ins_spec: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_spec;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@naimspec'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = ''
      end>
    Left = 32
    Top = 184
  end
  object Querygruppa: TADOQuery
    Connection = ADOConnection1
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select  *   from gruppa')
    Left = 136
    Top = 80
  end
  object DSgruppa: TDataSource
    DataSet = Querygruppa
    Left = 136
    Top = 136
  end
  object ins_gruppa: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_gruppa;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@g_naim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = ''
      end
      item
        Name = '@id_spec'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@soc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end>
    Left = 136
    Top = 192
  end
end

object DM: TDM
  OldCreateOrder = False
  Height = 468
  Width = 709
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=somebase'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 64
    Top = 16
  end
  object shifr: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'shifr;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@KOD'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end>
    Left = 40
    Top = 72
  end
  object Queryshifr: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *  from peopleview')
    Left = 40
    Top = 128
  end
  object DSshifr: TDataSource
    DataSet = Queryshifr
    Left = 40
    Top = 184
  end
  object Querypr: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select  *  from peopleview')
    Left = 112
    Top = 72
  end
  object DSpr: TDataSource
    DataSet = Querypr
    Left = 112
    Top = 120
  end
end

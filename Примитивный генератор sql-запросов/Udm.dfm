object fDM: TfDM
  OldCreateOrder = False
  Height = 388
  Width = 668
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=kapheedra'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 16
  end
  object Queryspec: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from spec')
    Left = 104
    Top = 64
    object QueryspecSpecId: TAutoIncField
      FieldName = 'SpecId'
      ReadOnly = True
    end
    object Queryspecnaim: TStringField
      FieldName = 'naim'
      Size = 50
    end
    object Queryspecotr: TStringField
      FieldName = 'otr'
      Size = 50
    end
  end
  object Querystud: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from stud')
    Left = 328
    Top = 72
  end
  object Querykaph: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from kaph')
    Left = 176
    Top = 64
  end
  object Querygrupp: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from grupp')
    Left = 256
    Top = 72
  end
  object DSspec: TDataSource
    DataSet = Queryspec
    Left = 104
    Top = 120
  end
  object DSstud: TDataSource
    DataSet = Querystud
    Left = 328
    Top = 128
  end
  object Dskaph: TDataSource
    DataSet = Querykaph
    Left = 184
    Top = 128
  end
  object DSgrupp: TDataSource
    DataSet = Querygrupp
    Left = 256
    Top = 136
  end
  object querytest: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from spec')
    Left = 408
    Top = 72
  end
  object DStest: TDataSource
    DataSet = querytest
    Left = 408
    Top = 128
  end
end

object fDM: TfDM
  OldCreateOrder = False
  Height = 470
  Width = 705
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\code\Result\delp' +
      'hi\voda\voda.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 8
  end
  object Querypass: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usver')
    Left = 88
    Top = 72
    object Querypassuserid: TAutoIncField
      FieldName = 'userid'
      ReadOnly = True
    end
    object Querypassuser_name: TWideStringField
      FieldName = 'user_name'
      Size = 255
    end
    object Querypassuser_pass: TWideStringField
      FieldName = 'user_pass'
      Size = 255
    end
  end
  object DSpass: TDataSource
    DataSet = Querypass
    Left = 96
    Top = 144
  end
  object Querytpe_s: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from type_s')
    Left = 184
    Top = 72
  end
  object DStpe_s: TDataSource
    DataSet = Querytpe_s
    Left = 200
    Top = 160
  end
  object Querymaster: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from master')
    Left = 248
    Top = 72
  end
  object DSmaster: TDataSource
    DataSet = Querymaster
    Left = 256
    Top = 160
  end
end

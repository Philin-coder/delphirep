object DM1: TDM1
  OldCreateOrder = False
  Height = 487
  Width = 880
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Razrab_Andryuschenko'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 24
  end
  object Querydol: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dolshnost')
    Left = 48
    Top = 80
  end
  object ins_dol: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_dol;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Nam_dol'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = ''
      end>
    Left = 40
    Top = 200
  end
  object DSdol: TDataSource
    DataSet = Querydol
    Left = 40
    Top = 144
  end
  object Queryetap: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from etap')
    Left = 104
    Top = 80
    object QueryetapN_Etap: TAutoIncField
      FieldName = 'N_Etap'
      ReadOnly = True
    end
    object QueryetapNam_etap: TStringField
      FieldName = 'Nam_etap'
      Size = 100
    end
  end
  object DSetap: TDataSource
    DataSet = Queryetap
    Left = 112
    Top = 136
  end
  object ins_etap: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_etap;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Nam_etap'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end>
    Left = 120
    Top = 200
  end
  object Querywork: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from work')
    Left = 168
    Top = 80
    object QueryworkN_Work: TAutoIncField
      FieldName = 'N_Work'
      ReadOnly = True
    end
    object QueryworkNam_work: TStringField
      FieldName = 'Nam_work'
      Size = 100
    end
    object QueryworkT_days: TWideStringField
      FieldName = 'T_days'
      Size = 10
    end
    object QueryworkN_Etap: TIntegerField
      FieldName = 'N_Etap'
    end
  end
  object DSwork: TDataSource
    DataSet = Querywork
    Left = 176
    Top = 144
  end
  object ins_work: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_work;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Nam_work'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = ''
      end
      item
        Name = '@T_days'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@N_Etap'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 176
    Top = 200
  end
  object Querywoker: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  rabotnik')
    Left = 232
    Top = 80
  end
  object ins_rabotnic: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_rabotnic;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = ''
      end
      item
        Name = '@N_Dol'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Iphone'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@St_rab'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end
      item
        Name = '@Date_pr'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end>
    Left = 240
    Top = 200
  end
  object DSwoker: TDataSource
    DataSet = Querywoker
    Left = 240
    Top = 136
  end
  object Queryproect: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from proect')
    Left = 296
    Top = 80
  end
  object DSproect: TDataSource
    DataSet = Queryproect
    Left = 296
    Top = 136
  end
  object ins_proect: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_proect;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Nam_proect'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = ''
      end
      item
        Name = '@janr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end
      item
        Name = '@data_nash'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@menager'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end
      item
        Name = '@cost_plan'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 10
        Value = 0.000000000000000000
      end
      item
        Name = '@cost_fact'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 10
        Value = 0.000000000000000000
      end
      item
        Name = '@dataendplan'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 16
        Value = '0:00:00'
      end>
    Left = 304
    Top = 208
  end
  object Queryzadanie: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from  zadanie')
    Left = 368
    Top = 80
  end
  object ins_zadanie: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_zadanie;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Sr_vip'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@N_Rab'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@St_rab'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Data_nash'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@N_Proekta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@N_Work'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 368
    Top = 208
  end
  object DSzadanie: TDataSource
    DataSet = Queryzadanie
    Left = 368
    Top = 136
  end
  object Queryreport: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'exec  report1 '#39'2020-12-12'#39)
    Left = 440
    Top = 80
  end
  object DSreport: TDataSource
    DataSet = Queryreport
    Left = 432
    Top = 152
  end
  object Querytest: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select Rabotnik.Fio,Dolshnost.Nam_dol,Rabotnik.Date_pr, Rabotnik' +
        '.Iphone, Work.Nam_work,Proect.Nam_proect, Proect.dataendplan'
      'from Rabotnik'
      'join Dolshnost on Dolshnost.N_Dol=Rabotnik.N_Dol'
      'join Zadanie on Zadanie.N_Rab=Rabotnik.N_Rab'
      'join Work on Zadanie.N_Work=Work.N_Work'
      'join Proect on Zadanie.N_Proekta=Proect.N_Proekta')
    Left = 512
    Top = 80
    object QuerytestFio: TStringField
      FieldName = 'Fio'
      Size = 100
    end
    object QuerytestNam_dol: TStringField
      FieldName = 'Nam_dol'
      Size = 100
    end
    object QuerytestDate_pr: TWideStringField
      FieldName = 'Date_pr'
      Size = 10
    end
    object QuerytestIphone: TIntegerField
      FieldName = 'Iphone'
    end
    object QuerytestNam_work: TStringField
      FieldName = 'Nam_work'
      Size = 100
    end
    object QuerytestNam_proect: TStringField
      FieldName = 'Nam_proect'
      Size = 100
    end
    object Querytestdataendplan: TWideStringField
      FieldName = 'dataendplan'
      Size = 10
    end
  end
  object DStest: TDataSource
    DataSet = Querytest
    Left = 496
    Top = 152
  end
end

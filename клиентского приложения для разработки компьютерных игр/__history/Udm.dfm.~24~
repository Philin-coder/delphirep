object dM: TdM
  OldCreateOrder = False
  Height = 562
  Width = 997
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Razrab_Andryuschenko'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 8
    Top = 8
  end
  object Querypass: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *  from usver')
    Left = 72
    Top = 80
    object QuerypassusverId: TAutoIncField
      FieldName = 'usverId'
      ReadOnly = True
    end
    object Querypassusver_role: TStringField
      FieldName = 'usver_role'
      Size = 50
    end
    object Querypassusver_pass: TStringField
      FieldName = 'usver_pass'
      Size = 50
    end
  end
  object DSpass: TDataSource
    DataSet = Querypass
    Left = 80
    Top = 144
  end
  object ins_user: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_user;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@usver_role'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end
      item
        Name = '@usver_pass'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end>
    Left = 80
    Top = 200
  end
  object Queryproekt: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Proect')
    Left = 144
    Top = 80
  end
  object DSproekt: TDataSource
    DataSet = Queryproekt
    Left = 168
    Top = 128
  end
  object ins_proekt: TADOStoredProc
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
        Size = 16
        Value = '0:00:00'
      end
      item
        Name = '@id_manager'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
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
    Left = 160
    Top = 200
  end
  object Querymanager: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from manager')
    Left = 232
    Top = 80
  end
  object DSmanager: TDataSource
    DataSet = Querymanager
    Left = 240
    Top = 136
  end
  object Ins_manager: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_manager;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@fio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end
      item
        Name = '@usverid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 248
    Top = 200
  end
  object Queryot: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select Proect.Nam_proect, Proect.janr, manager.fio, Proect.data_' +
        'nash,Proect.dataend,Proect.dataendplan, Proect.cost_plan, Proect' +
        '.cost_fact'
      'from Proect '
      'join manager on manager.id_manager=Proect.id_manager')
    Left = 808
    Top = 64
    object QueryotNam_proect: TStringField
      FieldName = 'Nam_proect'
      Size = 100
    end
    object Queryotjanr: TStringField
      FieldName = 'janr'
      FixedChar = True
      Size = 50
    end
    object Queryotfio: TStringField
      FieldName = 'fio'
      Size = 50
    end
    object Queryotdata_nash: TWideStringField
      FieldName = 'data_nash'
      Size = 10
    end
    object Queryotdataend: TWideStringField
      FieldName = 'dataend'
      Size = 10
    end
    object Queryotdataendplan: TWideStringField
      FieldName = 'dataendplan'
      Size = 10
    end
    object Queryotcost_plan: TBCDField
      FieldName = 'cost_plan'
      Precision = 10
      Size = 2
    end
    object Queryotcost_fact: TBCDField
      FieldName = 'cost_fact'
      Precision = 10
      Size = 3
    end
  end
  object DSot: TDataSource
    DataSet = Queryot
    Left = 816
    Top = 144
  end
  object etapQuery: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from etap')
    Left = 312
    Top = 88
  end
  object DSetap: TDataSource
    DataSet = etapQuery
    Left = 312
    Top = 144
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
    Left = 312
    Top = 200
  end
  object Querywork: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from work')
    Left = 376
    Top = 88
  end
  object DSwork: TDataSource
    DataSet = Querywork
    Left = 384
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
        Size = 16
        Value = '0:00:00'
      end
      item
        Name = '@N_Etap'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 384
    Top = 200
  end
  object DStask: TDataSource
    DataSet = Querytask
    Left = 432
    Top = 144
  end
  object Querytask: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from zadanie')
    Left = 432
    Top = 88
    object QuerytaskN_Zad: TAutoIncField
      FieldName = 'N_Zad'
      ReadOnly = True
    end
    object QuerytaskSr_vip: TWideStringField
      FieldName = 'Sr_vip'
      Size = 10
    end
    object QuerytaskN_Rab: TIntegerField
      FieldName = 'N_Rab'
    end
    object QuerytaskSt_rab: TStringField
      FieldName = 'St_rab'
      FixedChar = True
      Size = 50
    end
    object QuerytaskData_nash: TWideStringField
      FieldName = 'Data_nash'
      Size = 10
    end
    object QuerytaskDate_fakt: TWideStringField
      FieldName = 'Date_fakt'
      Size = 10
    end
    object QuerytaskN_Proekta: TIntegerField
      FieldName = 'N_Proekta'
    end
    object QuerytaskN_Work: TIntegerField
      FieldName = 'N_Work'
    end
  end
  object Queryrabotnik: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from rabotnik where Date_yv is null')
    Left = 504
    Top = 88
  end
  object DSrabotnik: TDataSource
    DataSet = Queryrabotnik
    Left = 504
    Top = 144
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
        Size = 16
        Value = '0:00:00'
      end
      item
        Name = '@usverid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 504
    Top = 200
  end
  object Ins_zadanie: TADOStoredProc
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
        Size = 16
        Value = '0:00:00'
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
        Value = ''
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
    Left = 440
    Top = 200
  end
  object DSdol: TDataSource
    DataSet = Querydol
    Left = 576
    Top = 144
  end
  object Querydol: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dolshnost')
    Left = 568
    Top = 80
  end
  object Ins_dol: TADOStoredProc
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
      end
      item
        Name = '@id_manager'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 576
    Top = 208
  end
  object Queryuv: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from rabotnik where Date_yv is not  null')
    Left = 624
    Top = 88
  end
  object upd_rab: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'upd_rab;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@N_rab'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@date_yv'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 16
        Value = '0:00:00'
      end>
    Left = 632
    Top = 224
  end
  object DsUv: TDataSource
    DataSet = Queryuv
    Left = 624
    Top = 144
  end
  object Querysearch: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'select Zadanie.N_Zad, Zadanie.Sr_vip,Rabotnik.Fio, Zadanie.St_ra' +
        'b, Zadanie.Data_nash,Zadanie.Date_fakt, Proect.Nam_proect, Work.' +
        'Nam_work'
      'from Zadanie'
      'join Proect on Zadanie.N_Proekta=Proect.N_Proekta'
      'join Work on Zadanie.N_Work=Work.N_Work'
      'join Rabotnik on Rabotnik.N_Rab=Zadanie.N_Rab'
      ' where Zadanie.Date_fakt is null')
    Left = 688
    Top = 80
  end
  object DSsearch: TDataSource
    DataSet = Querysearch
    Left = 696
    Top = 144
  end
  object Querytasklist: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from zadanie')
    Left = 744
    Top = 64
  end
  object DStasklist: TDataSource
    DataSet = Querytasklist
    Left = 752
    Top = 128
  end
  object sel_task: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sel_task;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@n_rab'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 760
    Top = 200
  end
  object Queryvip: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from zadanie')
    Left = 864
    Top = 80
  end
  object Dsvz: TDataSource
    DataSet = Queryvip
    Left = 872
    Top = 160
  end
  object vip_zadan: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'vip_zadan;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@N_zad'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@date_fakt'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 16
        Value = '0:00:00'
      end>
    Left = 872
    Top = 232
  end
end

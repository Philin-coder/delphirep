object fDM: TfDM
  OldCreateOrder = False
  Height = 317
  Width = 626
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=uspev'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 24
  end
  object Queryprich: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from prich')
    Left = 48
    Top = 88
  end
  object ins_prich: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_prich;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@prich_naim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end>
    Left = 48
    Top = 224
  end
  object DSprich: TDataSource
    DataSet = Queryprich
    Left = 56
    Top = 160
  end
  object Querytype_class: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from type_class')
    Left = 112
    Top = 96
  end
  object ins_klass_type: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_klass_type;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@naim_tip'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = ''
      end>
    Left = 120
    Top = 224
  end
  object DStype_class: TDataSource
    DataSet = Querytype_class
    Left = 120
    Top = 168
  end
  object Queryklass: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from klass')
    Left = 184
    Top = 96
    object Queryklassklass_id: TAutoIncField
      FieldName = 'klass_id'
      ReadOnly = True
    end
    object Queryklassklass_naim: TStringField
      FieldName = 'klass_naim'
      Size = 150
    end
    object QueryklassKlass_r: TStringField
      FieldName = 'Klass_r'
      Size = 150
    end
    object Queryklasskol_m: TIntegerField
      FieldName = 'kol_m'
    end
    object QueryklassTYpe_claass_id: TIntegerField
      FieldName = 'TYpe_claass_id'
    end
  end
  object ins_klass: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_klass;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@klass_naim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@Klass_r'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@kol_m'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@TYpe_claass_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 184
    Top = 232
  end
  object Dsklass: TDataSource
    DataSet = Queryklass
    Left = 176
    Top = 168
  end
  object Queryuchen: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from uchen')
    Left = 264
    Top = 104
    object Queryuchenuchen_id: TAutoIncField
      FieldName = 'uchen_id'
      ReadOnly = True
    end
    object QueryuchenFIO: TStringField
      FieldName = 'FIO'
      Size = 150
    end
    object Queryuchenphone_m: TStringField
      FieldName = 'phone_m'
      Size = 150
    end
    object Queryuchenadr: TStringField
      FieldName = 'adr'
      Size = 150
    end
    object Queryuchendatar: TWideStringField
      FieldName = 'datar'
      Size = 10
    end
    object Queryuchenpol: TStringField
      FieldName = 'pol'
      Size = 150
    end
    object Queryuchenhealth_group: TStringField
      FieldName = 'health_group'
      Size = 150
    end
    object QueryuchenDatap: TWideStringField
      FieldName = 'Datap'
      Size = 10
    end
    object Queryuchendatav: TWideStringField
      FieldName = 'datav'
      Size = 10
    end
    object Queryuchenfio_m: TStringField
      FieldName = 'fio_m'
      Size = 150
    end
    object Queryuchencitizen: TStringField
      FieldName = 'citizen'
      Size = 150
    end
    object Queryuchenphone_o: TStringField
      FieldName = 'phone_o'
      Size = 150
    end
    object Queryuchenklass_id: TIntegerField
      FieldName = 'klass_id'
    end
  end
  object DSUchen: TDataSource
    DataSet = Queryuchen
    Left = 256
    Top = 160
  end
  object ins_uchen: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_uchen;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@fio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@phone_m'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@adr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@datar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 16
        Value = '0:00:00'
      end
      item
        Name = '@pol'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@health_group'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@Datap'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 16
        Value = '0:00:00'
      end
      item
        Name = '@datav'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = '@fio_m'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@citizen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@phone_o'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@klass_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 248
    Top = 232
  end
  object Queryprikaz: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from prikaz')
    Left = 360
    Top = 96
    object Queryprikazprikaz_id: TAutoIncField
      FieldName = 'prikaz_id'
      ReadOnly = True
    end
    object Queryprikazprikaz_date: TWideStringField
      FieldName = 'prikaz_date'
      Size = 10
    end
    object Queryprikazprikaz_type: TStringField
      FieldName = 'prikaz_type'
      Size = 50
    end
    object Queryprikazdate_k: TWideStringField
      FieldName = 'date_k'
      Size = 10
    end
    object Queryprikazuchen_id: TIntegerField
      FieldName = 'uchen_id'
    end
    object Queryprikazprikaz_sod: TStringField
      FieldName = 'prikaz_sod'
      Size = 150
    end
    object Queryprikazprich_id: TIntegerField
      FieldName = 'prich_id'
    end
    object Queryprikazdata_n: TWideStringField
      FieldName = 'data_n'
      Size = 10
    end
  end
  object Dsyprikaz: TDataSource
    DataSet = Queryprikaz
    Left = 368
    Top = 168
  end
  object ins_prikaz: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_prikaz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@prikaz_date'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@prikaz_type'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end
      item
        Name = '@date_k'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@uchen_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@prikaz_sod'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@prich_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@data_n'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end>
    Left = 360
    Top = 240
  end
end

object fDm: TfDm
  OldCreateOrder = False
  Height = 465
  Width = 637
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=hotel;Data Source=(LOCAL)'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 16
  end
  object Queryadm: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from adm')
    Left = 88
    Top = 80
  end
  object DSadm: TDataSource
    DataSet = Queryadm
    Left = 88
    Top = 136
  end
  object ins_adm: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_adm;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@admin_fio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@admin_smena'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end>
    Left = 88
    Top = 208
  end
  object QueryUsl: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usluga')
    Left = 144
    Top = 80
  end
  object DsUsluga: TDataSource
    DataSet = QueryUsl
    Left = 152
    Top = 152
  end
  object ins_usluga: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_usluga;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@usl_naim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@usl_stoim'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 10
        Value = 0.000000000000000000
      end
      item
        Name = '@usl_ed_izm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end>
    Left = 152
    Top = 216
  end
  object ins_nomer: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_nomer;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@nomer_cat'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@nomer_st'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 10
        Value = 0.000000000000000000
      end
      item
        Name = '@nomer_status'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end>
    Left = 224
    Top = 216
  end
  object Querynom: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from nomer')
    Left = 216
    Top = 72
  end
  object DSnom: TDataSource
    DataSet = Querynom
    Left = 216
    Top = 140
  end
  object Querydog: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dogovor')
    Left = 296
    Top = 72
    object Querydogdogovor_id: TAutoIncField
      FieldName = 'dogovor_id'
      ReadOnly = True
    end
    object Querydogguest_fio: TStringField
      FieldName = 'guest_fio'
      Size = 150
    end
    object Querydogguest_datar: TWideStringField
      FieldName = 'guest_datar'
      Size = 10
    end
    object Querydogguest_passp_n: TStringField
      FieldName = 'guest_passp_n'
      Size = 150
    end
    object Querydogguest_passp_s: TStringField
      FieldName = 'guest_passp_s'
      Size = 150
    end
    object Querydogguest_dvp: TWideStringField
      FieldName = 'guest_dvp'
      Size = 10
    end
    object Querydogguest_kem_vid: TStringField
      FieldName = 'guest_kem_vid'
      Size = 150
    end
    object Querydogguest_m_r: TStringField
      FieldName = 'guest_m_r'
      Size = 150
    end
    object Querydogguest_data_reg: TWideStringField
      FieldName = 'guest_data_reg'
      Size = 10
    end
    object Querydogguest_pol: TStringField
      FieldName = 'guest_pol'
      Size = 150
    end
    object Querydogguest_cel_p: TStringField
      FieldName = 'guest_cel_p'
      Size = 150
    end
    object Querydognomer_id: TIntegerField
      FieldName = 'nomer_id'
    end
    object Querydogdate_dog: TWideStringField
      FieldName = 'date_dog'
      Size = 10
    end
    object Querydogsrok_d: TBCDField
      FieldName = 'srok_d'
      Precision = 10
      Size = 2
    end
    object Querydogadmin_id: TIntegerField
      FieldName = 'admin_id'
    end
  end
  object DSdogovor: TDataSource
    DataSet = Querydog
    Left = 304
    Top = 136
  end
  object ins_dog: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_dog;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@guest_fio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@guest_datar'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@guest_passp_n'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@guest_passp_s'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@guest_dvp'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@guest_kem_vid'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@guest_m_r'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@guest_data_reg'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@guest_pol'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@guest_cel_p'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@nomer_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@date_dog'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@srok_d'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 10
        Value = 0.000000000000000000
      end
      item
        Name = '@admin_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 312
    Top = 208
  end
  object Queryopl: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from oplata')
    Left = 376
    Top = 88
  end
  object DSopl: TDataSource
    DataSet = Queryopl
    Left = 376
    Top = 152
  end
  object ins_opl: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_opl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@id_usl'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@date_opl'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@kol_d'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@form_opl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end
      item
        Name = '@total_s'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 10
        Value = 0.000000000000000000
      end
      item
        Name = '@dogovor_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 376
    Top = 216
  end
  object Queryot: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from usluga')
    Left = 448
    Top = 96
  end
  object DSot: TDataSource
    DataSet = Queryot
    Left = 472
    Top = 176
  end
end

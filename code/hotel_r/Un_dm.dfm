object DM: TDM
  OldCreateOrder = False
  Height = 431
  Width = 544
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=hotel_r'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 16
  end
  object admQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  m_admin.id_admin,'
      '  m_admin.fio_admin,'
      '  case  '
      '  when m_admin.smena=0 then '#39#1053#1086#1095#1085#1072#1103#39'  '
      '  when m_admin.smena=1 then '#39#1044#1085#1077#1074#1085#1072#1103#39#9
      '  when m_admin.smena=2 then '#39#1042#1077#1095#1077#1088#1085#1103#1103#39#9
      '  else '#39#1059#1090#1088#1077#1085#1085#1103#1103#39
      '  end as smena'
      'from '
      'm_admin '
      'where 1=1')
    Left = 40
    Top = 72
  end
  object admDS: TDataSource
    DataSet = admQuery
    Left = 40
    Top = 128
  end
  object ins_adm: TADOStoredProc
    Connection = Connection
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
        Name = '@fio_admin'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@smena'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 56
    Top = 240
  end
  object sel_adm_by_fio: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_adm_by_fio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@fio_admin'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 48
    Top = 176
  end
  object upd_adm: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_adm;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_admin'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@smena'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 64
    Top = 296
  end
  object del_adm: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_adm;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_admin'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 64
    Top = 352
  end
  object type_nQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'type_nomer.id_type_nomer,'
      'type_nomer.type_naim,'
      'type_nomer.type_opis,'
      'type_nomer.type_image '
      'from type_nomer '
      'where 1=1')
    Left = 120
    Top = 72
  end
  object TYpe_nDS: TDataSource
    DataSet = type_nQuery
    Left = 120
    Top = 128
  end
  object sel_type_by_opis: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_type_by_opis;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@type_opis'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 136
    Top = 176
  end
  object ins_type: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_type;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@type_naim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@type_opis'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@type_image'
        Attributes = [paNullable]
        DataType = ftBlob
        Size = 2147483647
        Value = Null
      end>
    Left = 144
    Top = 232
  end
  object upd_type_n: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_type_n;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_type_nomer'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@type_naim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 160
    Top = 288
  end
  object del_type: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_type;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_type_nomer'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 168
    Top = 344
  end
  object UslQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'usluga.usl_id,'
      'usluga.usl_cost,'
      'usluga.usl_naim,'
      'usluga.usl_ed_ism '
      'from usluga'
      'where 1=1')
    Left = 256
    Top = 64
  end
  object uslDS: TDataSource
    DataSet = UslQuery
    Left = 264
    Top = 120
  end
  object ins_usl: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_usl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@usl_cost'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 10
        Value = Null
      end
      item
        Name = '@usl_naim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@usl_ed_ism'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 288
    Top = 232
  end
  object upd_usl: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_usl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@usl_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@usl_naim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 288
    Top = 288
  end
  object del_usl: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_usl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@usl_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 288
    Top = 352
  end
  object sel_usl_by_name: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_usl_by_name;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@usl_naim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 280
    Top = 176
  end
  object nom_query: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'nomer.nomer_id,'
      'nomer.nomer_kind,'
      'nomer.nomer_cost_day,'
      'type_nomer.type_image'
      'from nomer'
      
        'inner join  type_nomer on type_nomer.id_type_nomer=nomer.id_type' +
        '_nomer'
      'where 1=1')
    Left = 360
    Top = 72
  end
  object nomDS: TDataSource
    DataSet = nom_query
    Left = 368
    Top = 128
  end
  object sel_nom_by_kind: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_nom_by_kind;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@nomer_kind'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 376
    Top = 176
  end
  object ins_nom: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_nom;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@nomer_kind'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@nomer_cost_day'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_type_nomer'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 376
    Top = 240
  end
  object upd_nom: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_nom;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@nomer_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@nomer_kind'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 368
    Top = 296
  end
  object del_nom: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_nom;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@nomer_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 384
    Top = 352
  end
  object dogQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'dogovor.dog_id,'
      'dogovor.guest_fio,'
      'dogovor.data_b,'
      'dogovor.pass_n,'
      'dogovor.pass_seria,'
      'dogovor.kem_vid,'
      'dogovor.mesto_r,'
      'dogovor.data_reg,'
      'dogovor.pol,'
      'dogovor.perpose,'
      'nomer.nomer_kind,'
      'dogovor.date_dog,'
      'dogovor.sr_dog,'
      'm_admin.fio_admin'
      'from dogovor '
      'inner join nomer on  dogovor.nomer_id=nomer.nomer_id'
      'inner join m_admin on dogovor.id_admin=m_admin.id_admin'
      'where 1=1')
    Left = 416
    Top = 72
  end
  object dogDS: TDataSource
    DataSet = dogQuery
    Left = 432
    Top = 128
  end
  object ADOStoredProc1: TADOStoredProc
    Parameters = <>
    Left = 464
    Top = 176
  end
  object ADOStoredProc2: TADOStoredProc
    Parameters = <>
    Left = 456
    Top = 352
  end
  object ADOStoredProc3: TADOStoredProc
    Parameters = <>
    Left = 440
    Top = 296
  end
  object ADOStoredProc4: TADOStoredProc
    Parameters = <>
    Left = 440
    Top = 232
  end
end

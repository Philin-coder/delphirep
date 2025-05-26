object DM: TDM
  OldCreateOrder = False
  Height = 529
  Width = 671
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=vod_r'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 8
  end
  object userQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  usver.userid,'
      '  usver.user_name,'
      '  usver.user_pass'
      'from usver'
      'where 1=1')
    Left = 56
    Top = 72
  end
  object userDS: TDataSource
    DataSet = userQuery
    Left = 64
    Top = 136
  end
  object upd_user: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_user;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@userid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@user_pass'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 72
    Top = 360
  end
  object ins_user: TADOStoredProc
    Connection = Connection
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
        Name = '@user_name'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@user_pass'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 80
    Top = 288
  end
  object del_user: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_user;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@userid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 72
    Top = 424
  end
  object sel_user_by_login: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_user_by_login;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@user_name'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 72
    Top = 216
  end
  object typeQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  type_s.type_id,'
      '  type_s.typr_opis,'
      '  type_s.mechan,'
      '  type_s.tochn '
      'from type_s '
      'where 1=1 ')
    Left = 208
    Top = 72
  end
  object typeDS: TDataSource
    DataSet = typeQuery
    Left = 208
    Top = 160
  end
  object sel_by_opis: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_by_opis;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@typr_opis'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 216
    Top = 216
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
        Name = '@type_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 232
    Top = 416
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
        Name = '@typr_opis'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@mechan'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@tochn'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 216
    Top = 280
  end
  object upd_type: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_type;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@type_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@typr_opis'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 216
    Top = 344
  end
  object masterQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  m_master.id_master, '
      '  m_master.fio_master,'
      '  m_master.kont_d,'
      '  m_master.dnr,'
      '  m_master.dns,'
      '  usver.user_name'
      '  from m_master'
      '  inner join usver on usver.userid=m_master.userid '
      '  where 1=1')
    Left = 288
    Top = 72
  end
  object masterDS: TDataSource
    DataSet = masterQuery
    Left = 304
    Top = 136
  end
  object sel_master_by_fio: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_master_by_fio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@fio_master'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 304
    Top = 200
  end
  object ins_master: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_master;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@fio_master'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@kont_d'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@dnr'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@dns'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@userid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 320
    Top = 280
  end
  object upd_master: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_master;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_master'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@kont_d'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 320
    Top = 352
  end
  object del_master: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_master;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_master'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 328
    Top = 408
  end
  object operQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  operator.oper_id,'
      '  operator.oper_naim,'
      '  usver.user_name,'
      '  operator.smdata '
      '  from operator '
      '  inner join usver on usver.userid=operator.userid'
      '  where 1=1')
    Left = 376
    Top = 72
  end
  object operDS: TDataSource
    DataSet = operQuery
    Left = 384
    Top = 128
  end
  object sel_oper: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_oper;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@oper_naim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 408
    Top = 200
  end
  object ins_oper: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_oper;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@oper_naim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@userid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@smdata'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end>
    Left = 408
    Top = 272
  end
  object upd_oper: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_oper;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@oper_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@smdata'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end>
    Left = 416
    Top = 320
  end
  object del_oper: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_oper;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@oper_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 416
    Top = 408
  end
  object schetQuery: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      '  schet.schet_id,'
      '  schet.d_ust,'
      '  schet.vrem_p,'
      '  schet.vrem_sp,'
      '  schet.Nomer,'
      '  type_s.typr_opis'
      '  from schet'
      '  inner join type_s on type_s.type_id=schet.type_id'
      '  where 1=1')
    Left = 472
    Top = 80
  end
  object schetDS: TDataSource
    DataSet = schetQuery
    Left = 488
    Top = 144
  end
  object sel_schet: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_schet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Nomer'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 504
    Top = 208
  end
  object ins_schet: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_schet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@d_ust'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = '@vrem_p'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = '@vrem_sp'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = '@Nomer'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@type_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 496
    Top = 280
  end
  object upd_shchet: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_shchet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@schet_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@vrem_sp'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end>
    Left = 496
    Top = 328
  end
  object del_shcet: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_shcet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@schet_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 504
    Top = 408
  end
  object klientQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '   klient.klient_id,'
      '   klient.fio,'
      '   klient.adr,'
      '   klient.prim,'
      '   klient.kont_d,'
      '   klient.tel,'
      '   klient.pokaz,'
      '   operator.oper_naim,'
      '   schet.Nomer,'
      '   m_master.fio_master'
      '  from klient '
      '  inner join operator on operator.oper_id=klient.oper_id'
      '  inner join schet on schet.schet_id=klient.schet_id'
      '  inner join m_master on m_master.id_master=klient.id_master'
      '  where 1=1')
    Left = 544
    Top = 80
  end
  object klientDS: TDataSource
    DataSet = klientQuery
    Left = 560
    Top = 136
  end
  object sel_klient: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_klient;1'
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
        DataType = ftWideString
        Size = 1000
      end>
    Left = 568
    Top = 208
  end
  object ins_klient: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_klient;1'
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
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = '@adr'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = '@prim'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = '@kont_d'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = '@tel'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = '@pokaz'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@oper_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@schet_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_master'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 560
    Top = 280
  end
  object upd_klient: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_klient;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@klient_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@kont_d'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
      end>
    Left = 560
    Top = 328
  end
  object del_klient: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_klient;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@klient_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 568
    Top = 408
  end
end

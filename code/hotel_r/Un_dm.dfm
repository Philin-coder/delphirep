object DM: TDM
  OldCreateOrder = False
  Height = 431
  Width = 893
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
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'nomer.nomer_id,'
      'nomer.nomer_kind,'
      'nomer.nomer_cost_day,'
      'type_nomer.type_image,'
      'case '
      '  when nomer.nomer_st=0 then '#39#1047#1072#1085#1103#1090#39
      '  else '#39#1057#1074#1086#1073#1086#1076#1077#1085#39
      ' end as nom_st'
      'from nomer'
      
        'inner join  type_nomer on type_nomer.id_type_nomer=nomer.id_type' +
        '_nomer'
      'where 1=1'
      'and nomer.nomer_st=0')
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
      end
      item
        Name = '@nomer_st'
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
    Left = 456
    Top = 72
  end
  object dogDS: TDataSource
    DataSet = dogQuery
    Left = 456
    Top = 128
  end
  object sel_dog_by_fio: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_dog_by_fio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@guest_fio'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 456
    Top = 176
  end
  object del_dog: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_dog;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@dog_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 456
    Top = 352
  end
  object upd_dog: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_dog;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@dog_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@perpose'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 440
    Top = 296
  end
  object ins_dog: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_dog;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@guest_fio'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@data_b'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = '@pass_n'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@pass_seria'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@kem_vid'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@mesto_r'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@data_reg'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = '@pol'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@perpose'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
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
        Name = '@date_dog'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 16
        Value = Null
      end
      item
        Name = '@sr_dog'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_admin'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 456
    Top = 232
  end
  object PayQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  pay.pay_id,'
      '  usluga.usl_naim,'
      '  pay.pay_data,'
      '  pay.mdays,'
      '  pay.pay_from,'
      '  pay.total_s,'
      '  dogovor.guest_fio'
      'from pay'
      'inner join usluga on usluga.usl_id=pay.usl_id'
      'inner join dogovor on dogovor.dog_id=pay.dog_id'
      'where 1=1')
    Left = 528
    Top = 72
  end
  object PayDS: TDataSource
    DataSet = PayQuery
    Left = 536
    Top = 136
  end
  object sel_pay_by_form: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_pay_by_form;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pay_from'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 544
    Top = 184
  end
  object ins_pay: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_pay;1'
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
        Name = '@pay_data'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = '@mdays'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@pay_from'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@total_s'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0.000000000000000000
      end
      item
        Name = '@dog_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 560
    Top = 232
  end
  object upd_pay: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_pay;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pay_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@pay_from'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 552
    Top = 296
  end
  object del_pay: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_pay;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pay_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 552
    Top = 360
  end
  object fbQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  feedback.feedback_id,'
      '  dogovor.guest_fio,'
      '  feedback.feedback_text,'
      ' case '
      '   when  feedback.feeadbackmarck=1 then '#39#1054#1095#1077#1085#1100' '#1087#1083#1086#1093#1086#39
      '   when  feedback.feeadbackmarck=2 then '#39#1055#1083#1086#1093#1086#39
      '   when  feedback.feeadbackmarck=3 then '#39#1059#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086#39
      '   when  feedback.feeadbackmarck=4 then '#39#1061#1086#1088#1086#1096#1086#39
      '   else '#39#1054#1090#1083#1080#1095#1085#1086#39
      ' end as fb'
      'from feedback '
      'inner join dogovor on dogovor.dog_id=feedback.dog_id'
      'where 1=1;')
    Left = 632
    Top = 72
  end
  object fbDS: TDataSource
    DataSet = fbQuery
    Left = 632
    Top = 136
  end
  object sel_feedback_by_fio: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_feedback_by_fio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@guest_fio'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 640
    Top = 184
  end
  object ins_feedback: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_feedback;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@dog_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@feedback_text'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@feeadbackmarck'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 632
    Top = 248
  end
  object upd_feedback: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_feedback;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@feedback_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@feedback_text'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 632
    Top = 296
  end
  object del_feedback: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_feedback;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@feedback_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 632
    Top = 360
  end
  object reportQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select dogovor.dog_id, dogovor.data_b,  dogovor.pass_n, dogovor.' +
        'pass_seria,dogovor.kem_vid,dogovor.mesto_r,dogovor.data_reg,'
      
        'dogovor.pol,dogovor.perpose,dogovor.guest_fio,nomer.nomer_kind, ' +
        'dogovor.date_dog, dogovor.sr_dog,fio_admin'
      'from dogovor'
      'inner join nomer on dogovor.nomer_id=nomer.nomer_id '
      'inner join m_admin on dogovor.id_admin=m_admin.id_admin'
      'where 1=1')
    Left = 704
    Top = 72
  end
  object report1: TADOStoredProc
    Connection = Connection
    ProcedureName = 'report1;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@d1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = '@d2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end>
    Left = 720
    Top = 184
  end
  object reportDS: TDataSource
    DataSet = reportQuery
    Left = 712
    Top = 136
  end
  object check_out: TADOStoredProc
    Connection = Connection
    ProcedureName = 'check_out;1'
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
    Left = 728
    Top = 248
  end
  object check_in: TADOStoredProc
    Connection = Connection
    ProcedureName = 'check_in;1'
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
    Left = 736
    Top = 312
  end
end

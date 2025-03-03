object DM: TDM
  OldCreateOrder = False
  Height = 255
  Width = 374
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=kadr_r_imp'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 24
  end
  object ProfQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from prof;')
    Left = 32
    Top = 96
  end
  object ProfDS: TDataSource
    DataSet = ProfQuery
    Left = 32
    Top = 160
  end
  object doQuery: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      'select * from prof;')
    Left = 320
    Top = 80
  end
  object doDS: TDataSource
    DataSet = doQuery
    Left = 328
    Top = 152
  end
  object dogQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dogovor;')
    Left = 88
    Top = 96
  end
  object dogDS: TDataSource
    DataSet = dogQuery
    Left = 96
    Top = 160
  end
  object ankQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT questionarie.ank_nom, questionarie.b_data, questionarie.f' +
        'io, questionarie.obr,  questionarie.staj, questionarie.kval, que' +
        'stionarie.wish_cond, prof.prof_name'
      'FROM questionarie'
      'inner join prof on questionarie.id_prof= prof.id_prof'
      'WHERE 1=1;')
    Left = 152
    Top = 96
  end
  object ankDS: TDataSource
    DataSet = ankQuery
    Left = 160
    Top = 160
  end
  object VaKQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  vakansia.position,'
      '  vakansia.pay, '
      '  dogovor.company,'
      '  prof.prof_name, '
      '  vakansia.quantity, '
      '  --vakansia.vak_st,'
      '  case '
      
        '  when vakansia.vak_st=0  then '#39#1042#1072#1082#1072#1085#1089#1080#1080' '#1077#1089#1090#1100#39'  else '#39#1042#1072#1082#1072#1085#1089#1080#1081' '#1085 +
        #1077#1090#39' end as vak_free'
      'from '
      '  vakansia'
      '  inner join dogovor on'
      '  dogovor.id_dog=vakansia.id_dog'
      '  inner join prof on '
      '  prof.id_prof=vakansia.id_prof'
      '  where vakansia.quantity>0')
    Left = 216
    Top = 96
  end
  object VakDS: TDataSource
    DataSet = VaKQuery
    Left = 224
    Top = 160
  end
end

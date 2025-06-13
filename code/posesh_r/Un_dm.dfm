object dm: Tdm
  OldCreateOrder = False
  Height = 278
  Width = 424
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=posech_r'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 8
  end
  object TeacherQuery: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      'select  '
      'Teacher.id_teacher,'
      'Teacher.fio,'
      'Teacher.department'
      'from '
      'Teacher where 1=1')
    Left = 64
    Top = 56
  end
  object teacherDS: TDataSource
    DataSet = TeacherQuery
    Left = 72
    Top = 120
  end
end

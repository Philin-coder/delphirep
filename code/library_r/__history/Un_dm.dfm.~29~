object DM: TDM
  OldCreateOrder = False
  Height = 432
  Width = 811
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=library_r'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
  end
  object AutQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'Author.ID_Author,'
      'Author.Name_A'
      'from Author'
      'where 1=1')
    Left = 56
    Top = 56
  end
  object autDS: TDataSource
    DataSet = AutQuery
    Left = 56
    Top = 112
  end
  object Sel_autor_by_name: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_autor_by_name;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Name_A'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 56
    Top = 176
  end
  object ins_autor: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_autor;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Name_A'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 56
    Top = 232
  end
  object upd_autor: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_autor;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Author'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Name_A'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 64
    Top = 288
  end
  object del_autor: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_autor;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Author'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 56
    Top = 344
  end
  object GenreQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'Genre.ID_Genre,'
      'Genre.Name_G'
      ' from Genre'
      ' where 1=1')
    Left = 136
    Top = 56
  end
  object GenreDS: TDataSource
    DataSet = GenreQuery
    Left = 136
    Top = 112
  end
  object sel_genre: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_genre;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Name_G'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 144
    Top = 176
  end
  object ins_genre: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_genre;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Name_G'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 152
    Top = 232
  end
  object upd_genre: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_genre;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Genre'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Name_G'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 160
    Top = 288
  end
  object del_genre: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_genre;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Genre'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 160
    Top = 352
  end
  object bookQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'Book.ID_Book,'
      'Book.Name_B,'
      'Book.m_Source,'
      'Book.Date_P,'
      'Book.m_Count,'
      'Book.Price,'
      'Genre.Name_G,'
      'Author.Name_A,'
      'Book.Publisher,'
      'Book.Number_of_Pages,'
      'Book.Year_of_Pub'
      'from '
      'Book '
      'inner join Genre on Genre.ID_Genre=Book.ID_Genre'
      'inner join Author on Author.ID_Author=Book.ID_Author'
      'where 1=1')
    Left = 216
    Top = 64
  end
  object bookDS: TDataSource
    DataSet = bookQuery
    Left = 216
    Top = 128
  end
  object sel_book: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_book;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Name_B'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 216
    Top = 184
  end
  object INS_BOOK_normal: TADOStoredProc
    Connection = Connection
    ProcedureName = 'INS_BOOK_normal;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NAME_B'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
        Value = Null
      end
      item
        Name = '@m_SOURCE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 70
        Value = Null
      end
      item
        Name = '@DATE_P'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@m_COUNT'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PRICE'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 5
        Value = Null
      end
      item
        Name = '@ID_GENRE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_AUTHOR'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PUBLISHER'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@NAMBER_PAGES'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@YEAR_PUB'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 224
    Top = 240
  end
  object ins_book: TADOStoredProc
    Connection = Connection
    ProcedureName = 'INS_BOOK;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NAME_B'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
        Value = Null
      end
      item
        Name = '@m_SOURCE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 70
        Value = Null
      end
      item
        Name = '@DATE_P'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@m_COUNT'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PRICE'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 5
        Value = Null
      end
      item
        Name = '@ID_GENRE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_AUTHOR'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PUBLISHER'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@NAMBER_PAGES'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@YEAR_PUB'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Precision = 10
        Value = Null
      end>
    Left = 296
    Top = 232
  end
  object upd_book: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_book;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_book'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@name_b'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 224
    Top = 288
  end
  object del_book: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_book;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_book'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 232
    Top = 356
  end
  object docQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Doc.ID_Doc, '
      'Book.Name_B,'
      
        'case Doc.m_Status when 0 then '#39#1042' '#1085#1072#1083#1080#1095#1080#1080#39' else '#39#1042#1099#1076#1072#1085#39' end as bo' +
        'ok_state'
      'from Doc '
      'inner join Book on Book.ID_Book=Doc.ID_Book'
      'where 1=1')
    Left = 344
    Top = 72
  end
  object docDS: TDataSource
    AutoEdit = False
    DataSet = docQuery
    Left = 352
    Top = 128
  end
  object sel_doc_in: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_doc_in;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@name_b'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
      end>
    Left = 352
    Top = 184
  end
  object sel_doc_all_in: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_doc_all_in;1'
    Parameters = <>
    Left = 360
    Top = 232
  end
  object sel_doc_all_out: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_doc_all_out;1'
    Parameters = <>
    Left = 368
    Top = 296
  end
  object ADOStoredProc4: TADOStoredProc
    Parameters = <>
    Left = 512
    Top = 384
  end
end

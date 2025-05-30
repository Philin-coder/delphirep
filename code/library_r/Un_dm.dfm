object DM: TDM
  OldCreateOrder = False
  Height = 630
  Width = 951
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
        Value = Null
      end
      item
        Name = '@name_b'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
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
  object INS_DOC: TADOStoredProc
    Connection = Connection
    ProcedureName = 'INS_DOC;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Book'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Status'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 360
    Top = 352
  end
  object upd_doc: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_doc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@status'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ID_Doc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 360
    Top = 400
  end
  object del_doc: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_doc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_doc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 368
    Top = 452
  end
  object readerQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      'Reader.ID_Reader,'
      'Reader.Name_R,'
      'Reader.Date_B,'
      'Reader.Adres,'
      'Reader.Tel,'
      'Reader.Date_R'
      'from Reader'
      'where 1=1')
    Left = 448
    Top = 64
  end
  object readerDS: TDataSource
    DataSet = readerQuery
    Left = 456
    Top = 128
  end
  object sel_reader: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_reader;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Name_R'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 464
    Top = 192
  end
  object sel_reader_by_age: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_reader_by_age;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@check_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end>
    Left = 480
    Top = 264
  end
  object sel_reader_by_data_r: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_reader_by_data_r;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@check_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end>
    Left = 496
    Top = 320
  end
  object INS_Reader: TADOStoredProc
    Connection = Connection
    ProcedureName = 'INS_Reader;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Name_R'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@Date_B'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = '@Adres'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 70
        Value = Null
      end
      item
        Name = '@Tel'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@Date_R'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end>
    Left = 496
    Top = 376
  end
  object upd_reader: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_reader;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@tel'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@id_reader'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 496
    Top = 424
  end
  object del_reader: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_reader;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Reader'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 504
    Top = 480
  end
  object deliveryQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'Delivery.ID_Delivery ,'
      'Book.Name_B,'
      'Reader.Name_R,'
      'Delivery.Date_D,'
      'Delivery.Date_Return_Plan,'
      'Delivery.Date_Return_Fact'
      'from Delivery'
      'inner join  Doc on Delivery.ID_Doc=Doc.ID_Doc'
      'inner join Book on Book.ID_Book=Doc.ID_Book'
      'inner join Reader on Reader.ID_Reader=Delivery.ID_Reader'
      'where 1=1 and'
      'Delivery.Date_Return_Fact is null')
    Left = 584
    Top = 64
  end
  object deliveryDS: TDataSource
    DataSet = deliveryQuery
    Left = 584
    Top = 120
  end
  object sel_delivery: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_delivery;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@name_r'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 592
    Top = 176
  end
  object sel_book_bak_common: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_book_bak_common;1'
    Parameters = <>
    Left = 592
    Top = 240
  end
  object sel_delivery_d: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_delivery_d;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@check_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end>
    Left = 592
    Top = 312
  end
  object INS_Delivary: TADOStoredProc
    Connection = Connection
    ProcedureName = 'INS_Delivary;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Doc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ID_Reader'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Date_D'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = '@Date_Return_Plan'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end>
    Left = 592
    Top = 376
  end
  object Upd_Delivary: TADOStoredProc
    Connection = Connection
    ProcedureName = 'Upd_Delivary;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Date_Return_Fact'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = '@ID_Delivery'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 592
    Top = 424
  end
  object del_delivery: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_delivery;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Delivery'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 592
    Top = 480
  end
  object AttachmentQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'attachment.id_attachment,'
      'attachment.file_name_attachment,'
      'attachment.attachment,'
      'attachment.attachment_description,'
      'Book.Name_B'
      'from attachment '
      'inner join Doc on attachment.ID_Doc=Doc.ID_Doc'
      'inner join Book on Doc.ID_Book=Book.ID_Book'
      'where 1=1')
    Left = 680
    Top = 56
  end
  object AttachmentDS: TDataSource
    DataSet = AttachmentQuery
    Left = 696
    Top = 128
  end
  object sel_attachment_by_fname: TADOStoredProc
    Connection = Connection
    ProcedureName = 'sel_attachment_by_fname;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@m_fname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end>
    Left = 712
    Top = 184
  end
  object ins_attachment: TADOStoredProc
    Connection = Connection
    ProcedureName = 'ins_attachment;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@file_name_attachment'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@attachment'
        Attributes = [paNullable]
        DataType = ftBlob
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@attachment_description'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@ID_Doc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 712
    Top = 232
  end
  object get_attachment: TADOStoredProc
    Connection = Connection
    ProcedureName = 'get_attachment;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_attachment'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 712
    Top = 288
  end
  object upd_attachment_description: TADOStoredProc
    Connection = Connection
    ProcedureName = 'upd_attachment_description;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_attachment'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@attachment_description'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 720
    Top = 344
  end
  object del_att: TADOStoredProc
    Connection = Connection
    ProcedureName = 'del_att;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_attachment'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 720
    Top = 400
  end
  object reportQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      'Book.Name_B,'
      'Author.Name_A,'
      'COUNT(Delivery.ID_Delivery) as books'
      'FROM Delivery,Doc,Book, Author '
      'WHERE '
      'Author.ID_Author=Book.ID_Author AND '
      'Book.ID_Book=Doc.ID_Book '
      'AND Doc.ID_Doc=Delivery.ID_Doc'
      'GROUP BY Book.Name_B,Author.Name_A'
      'ORDER BY COUNT(Delivery.ID_Delivery) DESC')
    Left = 800
    Top = 56
  end
  object ReporDS: TDataSource
    DataSet = reportQuery
    Left = 808
    Top = 120
  end
  object REPORT_1: TADOStoredProc
    Connection = Connection
    ProcedureName = 'REPORT_1;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@D1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
      end
      item
        Name = '@D2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Size = 10
      end>
    Left = 824
    Top = 184
  end
end

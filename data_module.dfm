object DataLibrary: TDataLibrary
  OldCreateOrder = False
  Left = 894
  Top = 139
  Height = 809
  Width = 383
  object ConnectionLibrary: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Z:\Course_work\Sibr' +
      'i\sibri\db\Library.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    BeforeConnect = ConnectionLibraryBeforeConnect
    Left = 40
    Top = 8
  end
  object Authors: TADOTable
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    TableName = 'AUTHORS'
    Left = 40
    Top = 56
  end
  object DSAuthors: TDataSource
    DataSet = Authors
    Left = 128
    Top = 56
  end
  object Categories: TADOTable
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    TableName = 'CATEGORIES'
    Left = 40
    Top = 112
  end
  object DSCategories: TDataSource
    DataSet = Categories
    Left = 128
    Top = 112
  end
  object Books: TADOTable
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    OnCalcFields = BooksCalcFields
    TableName = 'BOOKS'
    Left = 40
    Top = 168
    object Booksid_Book: TAutoIncField
      DisplayWidth = 15
      FieldName = 'id_Book'
      ReadOnly = True
    end
    object Bookspublisher_id: TIntegerField
      DisplayWidth = 15
      FieldName = 'publisher_id'
    end
    object Bookscategory_id: TIntegerField
      DisplayWidth = 15
      FieldName = 'category_id'
    end
    object Booksreason_id: TIntegerField
      DisplayWidth = 15
      FieldName = 'reason_id'
    end
    object Booksauthors: TStringField
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'authors'
      Size = 30
      Calculated = True
    end
    object Bookstitle: TWideStringField
      DisplayWidth = 22
      FieldName = 'title'
      Size = 50
    end
    object Bookspublication_date: TDateTimeField
      DisplayWidth = 27
      FieldName = 'publication_date'
    end
    object Bookscount: TIntegerField
      DisplayWidth = 15
      FieldName = 'count'
    end
    object BooksISBN: TWideStringField
      DisplayWidth = 29
      FieldName = 'ISBN'
    end
    object BooksBBC: TWideStringField
      DisplayWidth = 21
      FieldName = 'BBC'
    end
    object BooksUDC: TWideStringField
      DisplayWidth = 18
      FieldName = 'UDC'
      Size = 50
    end
    object Booksdescryption: TWideStringField
      DisplayWidth = 22
      FieldName = 'descryption'
      Size = 255
    end
    object Bookspublisher: TStringField
      FieldKind = fkLookup
      FieldName = 'publisher'
      LookupDataSet = Publishers
      LookupKeyFields = 'id_Publisher'
      LookupResultField = 'title'
      KeyFields = 'publisher_id'
      Lookup = True
    end
    object Bookscategory: TStringField
      FieldKind = fkLookup
      FieldName = 'category'
      LookupDataSet = Categories
      LookupKeyFields = 'id_Category'
      LookupResultField = 'title'
      KeyFields = 'category_id'
      Size = 15
      Lookup = True
    end
    object Booksreason: TStringField
      FieldKind = fkLookup
      FieldName = 'reason'
      LookupDataSet = Reasons
      LookupKeyFields = 'id_Absence_reason'
      LookupResultField = 'title'
      KeyFields = 'reason_id'
      Size = 15
      Lookup = True
    end
  end
  object Reasons: TADOTable
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    TableName = 'ABSENCE_REASONS'
    Left = 40
    Top = 224
  end
  object Streets: TADOTable
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    TableName = 'STREETS'
    Left = 40
    Top = 408
  end
  object Restrictions: TADOTable
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    TableName = 'RESTRICTIONS'
    Left = 40
    Top = 464
  end
  object AppliedRestrictions: TADOTable
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    OnCalcFields = AppliedRestrictionsCalcFields
    IndexFieldNames = 'reader_id'
    MasterFields = 'id_Reader'
    MasterSource = DSReaders
    TableName = 'APPLIED_RESTRICTIONS'
    Left = 40
    Top = 528
    object AppliedRestrictionsid_Applied_restriction: TAutoIncField
      FieldName = 'id_Applied_restriction'
      ReadOnly = True
    end
    object AppliedRestrictionsreader_id: TIntegerField
      FieldName = 'reader_id'
    end
    object AppliedRestrictionsrestriction_id: TIntegerField
      FieldName = 'restriction_id'
    end
    object AppliedRestrictionsapplied_date: TDateTimeField
      FieldName = 'applied_date'
    end
    object AppliedRestrictionstime: TStringField
      FieldKind = fkCalculated
      FieldName = 'time'
      Size = 5
      Calculated = True
    end
    object AppliedRestrictionsapplied_time: TDateTimeField
      FieldName = 'applied_time'
      Visible = False
    end
    object AppliedRestrictionsrestriction: TStringField
      FieldKind = fkLookup
      FieldName = 'restriction'
      LookupDataSet = Restrictions
      LookupKeyFields = 'id_Restriction'
      LookupResultField = 'title'
      KeyFields = 'restriction_id'
      Lookup = True
    end
  end
  object DSBooks: TDataSource
    DataSet = Books
    Left = 128
    Top = 168
  end
  object DSReasons: TDataSource
    DataSet = Reasons
    Left = 128
    Top = 224
  end
  object DSStreets: TDataSource
    DataSet = Streets
    Left = 128
    Top = 408
  end
  object DSRestrictions: TDataSource
    DataSet = Restrictions
    Left = 128
    Top = 464
  end
  object DSApplRestr: TDataSource
    DataSet = AppliedRestrictions
    Left = 128
    Top = 528
  end
  object Readers: TADOTable
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    AfterScroll = ReadersAfterScroll
    OnCalcFields = ReadersCalcFields
    OnFilterRecord = ReadersFilterRecord
    TableName = 'READERS'
    Left = 40
    Top = 344
    object Readersid_Reader: TAutoIncField
      FieldName = 'id_Reader'
      ReadOnly = True
    end
    object Readerspassport_number: TIntegerField
      FieldName = 'passport_number'
    end
    object Readerslast_name: TWideStringField
      FieldName = 'last_name'
    end
    object Readersfirst_name: TWideStringField
      FieldName = 'first_name'
    end
    object Readerspatronymic: TWideStringField
      FieldName = 'patronymic'
    end
    object Readersbirth_date: TDateTimeField
      FieldName = 'birth_date'
    end
    object Readersstreet_id: TIntegerField
      FieldName = 'street_id'
    end
    object Readershome_number: TIntegerField
      FieldName = 'home_number'
    end
    object Readershome_case: TIntegerField
      FieldName = 'home_case'
    end
    object Readerswork_place: TWideStringField
      FieldName = 'work_place'
      Size = 30
    end
    object Readerswork_phone: TWideStringField
      FieldName = 'work_phone'
    end
    object Readershome_phone: TWideStringField
      FieldName = 'home_phone'
    end
    object Readerscell_phone: TWideStringField
      FieldName = 'cell_phone'
    end
    object Readersstreet: TStringField
      FieldKind = fkLookup
      FieldName = 'street'
      LookupDataSet = Streets
      LookupKeyFields = 'id_Street'
      LookupResultField = 'title'
      KeyFields = 'street_id'
      Size = 30
      Lookup = True
    end
    object Readersdebt: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'debt'
      Calculated = True
    end
    object Readerstdatecomp: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'tdatecomp'
      Calculated = True
    end
  end
  object DSReaders: TDataSource
    DataSet = Readers
    Left = 128
    Top = 344
  end
  object Publishers: TADOTable
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    TableName = 'PUBLISHERS'
    Left = 40
    Top = 592
  end
  object DSPublishers: TDataSource
    DataSet = Publishers
    Left = 128
    Top = 592
  end
  object TakenBooks: TADOTable
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    OnCalcFields = TakenBooksCalcFields
    IndexFieldNames = 'reader_id'
    TableName = 'TAKEN_BOOKS'
    Left = 40
    Top = 288
    object TakenBooksid_Taken_book: TAutoIncField
      FieldName = 'id_Taken_book'
      ReadOnly = True
    end
    object TakenBooksbook_id: TIntegerField
      FieldName = 'book_id'
    end
    object TakenBooksreader_id: TIntegerField
      FieldName = 'reader_id'
    end
    object TakenBookstaken_date: TDateTimeField
      FieldName = 'taken_date'
    end
    object TakenBooksreturn_date: TDateTimeField
      FieldName = 'return_date'
    end
    object TakenBooksbook_title: TStringField
      FieldKind = fkLookup
      FieldName = 'book_title'
      LookupDataSet = Books
      LookupKeyFields = 'id_Book'
      LookupResultField = 'title'
      KeyFields = 'book_id'
      Lookup = True
    end
    object TakenBooksauthors: TStringField
      FieldKind = fkLookup
      FieldName = 'authors'
      LookupDataSet = Books
      LookupKeyFields = 'id_Book'
      LookupResultField = 'authors'
      KeyFields = 'book_id'
      Size = 30
      Lookup = True
    end
    object TakenBooksmust_return_date: TDateField
      FieldKind = fkCalculated
      FieldName = 'must_return_date'
      Calculated = True
    end
  end
  object DSTakenBooks: TDataSource
    DataSet = TakenBooks
    Left = 128
    Top = 288
  end
  object ParticipatingAuthors: TADOTable
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    OnCalcFields = ParticipatingAuthorsCalcFields
    IndexFieldNames = 'book_id'
    MasterFields = 'id_Book'
    MasterSource = DSBooks
    TableName = 'PARTICIPATING_AUTHORS'
    Left = 40
    Top = 656
    object ParticipatingAuthorsid_Participating_author: TAutoIncField
      FieldName = 'id_Participating_author'
      ReadOnly = True
    end
    object ParticipatingAuthorsbook_id: TIntegerField
      FieldName = 'book_id'
    end
    object ParticipatingAuthorsauthor_id: TIntegerField
      FieldName = 'author_id'
    end
    object ParticipatingAuthorsauthor: TStringField
      FieldKind = fkCalculated
      FieldName = 'author'
      Calculated = True
    end
  end
  object DSPartAuthors: TDataSource
    DataSet = ParticipatingAuthors
    Left = 128
    Top = 656
  end
  object AuthorsQuery: TADOQuery
    Connection = ConnectionLibrary
    Parameters = <
      item
        Name = 'bookid'
        Size = -1
        Value = Null
      end>
    Left = 208
    Top = 656
  end
  object TakenBooksQuery: TADOQuery
    Connection = ConnectionLibrary
    Parameters = <
      item
        Name = 'cat'
        Size = -1
        Value = Null
      end
      item
        Name = 'month'
        Size = -1
        Value = Null
      end>
    Left = 216
    Top = 288
  end
  object EditAuthorsQuery: TADOQuery
    Connection = ConnectionLibrary
    Parameters = <
      item
        Name = 'author_id'
        Size = -1
        Value = Null
      end>
    Left = 288
    Top = 656
  end
  object DSQuery1: TDataSource
    DataSet = TakenBooksQuery
    Left = 296
    Top = 288
  end
  object DebtorsQuery: TADOQuery
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'restr'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT READERS.last_name, READERS.first_name, READERS.p' +
        'atronymic, [STREETS]![title]+", '#1076#1086#1084'  "+CStr([READERS]![home_numb' +
        'er])+", '#1082#1086#1088#1087#1091#1089'  "+CStr([READERS]![home_case]) AS adress, READERS' +
        '.home_phone'
      
        'FROM STREETS INNER JOIN ((READERS INNER JOIN APPLIED_RESTRICTION' +
        'S ON READERS.id_Reader = APPLIED_RESTRICTIONS.reader_id) INNER J' +
        'OIN TAKEN_BOOKS ON READERS.id_Reader = TAKEN_BOOKS.reader_id) ON' +
        ' STREETS.id_Street = READERS.street_id'
      
        'WHERE ((([APPLIED_RESTRICTIONS]![restriction_id])=:restr) AND ((' +
        '[TAKEN_BOOKS]![return_date]) Is Null));')
    Left = 216
    Top = 344
  end
  object DSQuery2: TDataSource
    DataSet = DebtorsQuery
    Left = 296
    Top = 344
  end
  object DSQuery3: TDataSource
    DataSet = StatQuery
    Left = 296
    Top = 408
  end
  object StatQuery: TADOQuery
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        'SELECT CATEGORIES.title, Count(BOOKS.id_Book) AS [Count-id_Book]' +
        ', Sum(BOOKS.count) AS [Sum-count], ABSENCE_REASONS.title'
      
        'FROM ABSENCE_REASONS INNER JOIN (CATEGORIES INNER JOIN BOOKS ON ' +
        'CATEGORIES.id_Category = BOOKS.category_id) ON ABSENCE_REASONS.i' +
        'd_Absence_reason = BOOKS.reason_id'
      'GROUP BY CATEGORIES.title, ABSENCE_REASONS.title;')
    Left = 216
    Top = 408
  end
  object Rep1Query: TADOQuery
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'trash_reas'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      
        'SELECT BOOKS.title, First(AUTHORS.last_name) AS [First-last_name' +
        '], Year([BOOKS]![publication_date]) AS pubYear'
      
        'FROM BOOKS INNER JOIN (AUTHORS INNER JOIN PARTICIPATING_AUTHORS ' +
        'ON AUTHORS.id_Author = PARTICIPATING_AUTHORS.author_id) ON BOOKS' +
        '.id_Book = PARTICIPATING_AUTHORS.book_id'
      
        'GROUP BY BOOKS.title, Year([BOOKS]![publication_date]), BOOKS.re' +
        'ason_id'
      
        'HAVING (((Year([BOOKS]![publication_date]))<Year(Now())-40) AND ' +
        '((BOOKS.reason_id)<>:trash_reas));')
    Left = 216
    Top = 464
  end
  object Rep2Query: TADOQuery
    Connection = ConnectionLibrary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'date'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT BOOKS.title, First(AUTHORS.last_name) AS [First-last_name' +
        '], TAKEN_BOOKS.taken_date, [taken_date]+Day(14) AS must_return_d' +
        'ate'
      
        'FROM (BOOKS INNER JOIN TAKEN_BOOKS ON BOOKS.id_Book = TAKEN_BOOK' +
        'S.book_id) INNER JOIN (AUTHORS INNER JOIN PARTICIPATING_AUTHORS ' +
        'ON AUTHORS.id_Author = PARTICIPATING_AUTHORS.author_id) ON BOOKS' +
        '.id_Book = PARTICIPATING_AUTHORS.book_id'
      
        'GROUP BY BOOKS.title, TAKEN_BOOKS.taken_date, [taken_date]+Day(1' +
        '4), TAKEN_BOOKS.return_date'
      
        'HAVING (((TAKEN_BOOKS.taken_date)=:date) AND (([taken_date]+Day(' +
        '14))<Now()) AND ((TAKEN_BOOKS.return_date) Is Null));')
    Left = 216
    Top = 520
  end
  object DSRep1: TDataSource
    DataSet = Rep1Query
    Left = 296
    Top = 464
  end
  object DSRep2: TDataSource
    Left = 296
    Top = 520
  end
  object Settings: TADOTable
    Active = True
    Connection = ConnectionLibrary
    CursorType = ctStatic
    TableName = 'SETTINGS'
    Left = 40
    Top = 712
  end
  object DSSettings: TDataSource
    DataSet = Settings
    Left = 128
    Top = 712
  end
  object StatusQuery: TADOQuery
    Connection = ConnectionLibrary
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT READERS.id_Reader, TAKEN_BOOKS.taken_date'
      
        'FROM READERS INNER JOIN TAKEN_BOOKS ON READERS.id_Reader = TAKEN' +
        '_BOOKS.reader_id'
      
        'WHERE (((READERS.id_Reader)=:id) AND (([TAKEN_BOOKS]![taken_date' +
        ']+Day(14))<Date() And [TAKEN_BOOKS]![return_date] Is Null));')
    Left = 296
    Top = 720
  end
  object TakenFromDate: TADOQuery
    Connection = ConnectionLibrary
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'date'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT TAKEN_BOOKS.id_Taken_book, TAKEN_BOOKS.reader_id, TAKEN_B' +
        'OOKS.taken_date'
      'FROM TAKEN_BOOKS'
      
        'WHERE (((TAKEN_BOOKS.reader_id)=:id) AND ((TAKEN_BOOKS.taken_dat' +
        'e)=:date));')
    Left = 208
    Top = 720
  end
end

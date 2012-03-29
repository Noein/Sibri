object DataLibrary: TDataLibrary
  OldCreateOrder = False
  Left = 900
  Top = 248
  Height = 771
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
    IndexFieldNames = 'reader_id'
    MasterFields = 'id_Reader'
    MasterSource = DSReaders
    TableName = 'APPLIED_RESTRICTIONS'
    Left = 40
    Top = 528
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
    TableName = 'READERS'
    Left = 40
    Top = 344
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
    IndexFieldNames = 'reader_id'
    TableName = 'TAKEN_BOOKS'
    Left = 40
    Top = 288
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
    Parameters = <>
    Left = 216
    Top = 288
  end
  object EditAuthorsQuery: TADOQuery
    Connection = ConnectionLibrary
    Parameters = <
      item
        Name = 'author_id'
        Value = Null
      end>
    Left = 288
    Top = 656
  end
end

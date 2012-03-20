object DataLibrary: TDataLibrary
  OldCreateOrder = False
  Left = 1071
  Top = 181
  Height = 755
  Width = 207
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
    TableName = 'BOOKS'
    Left = 40
    Top = 168
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
    IndexFieldNames = 'book_id'
    MasterFields = 'id_Book'
    MasterSource = DSBooks
    TableName = 'PARTICIPATING_AUTHORS'
    Left = 40
    Top = 656
  end
  object DSPartAuthors: TDataSource
    DataSet = ParticipatingAuthors
    Left = 128
    Top = 656
  end
end

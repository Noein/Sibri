object DataLibrary: TDataLibrary
  OldCreateOrder = False
  Left = 1083
  Top = 344
  Height = 677
  Width = 194
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Z:\home\natsuo\deve' +
      'lop\dev\Projects\Course_work\Sibri\sibri\db\Library.mdb;Persist ' +
      'Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    BeforeConnect = ADOConnection1BeforeConnect
    Left = 32
    Top = 8
  end
  object Authors: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'AUTHORS'
    Left = 32
    Top = 56
  end
  object DSAuthors: TDataSource
    DataSet = Authors
    Left = 112
    Top = 56
  end
  object Categories: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'CATEGORIES'
    Left = 32
    Top = 112
  end
  object DSCategories: TDataSource
    DataSet = Categories
    Left = 112
    Top = 112
  end
  object Books: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'BOOKS'
    Left = 32
    Top = 168
  end
  object Reasons: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ABSENCE_REASONS'
    Left = 32
    Top = 224
  end
  object Streets: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'STREETS'
    Left = 32
    Top = 408
  end
  object Restrictions: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'RESTRICTIONS'
    Left = 32
    Top = 464
  end
  object AppliedRestrictions: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'reader_id'
    MasterFields = 'id_Reader'
    MasterSource = DSReaders
    TableName = 'APPLIED_RESTRICTIONS'
    Left = 32
    Top = 528
  end
  object DSBooks: TDataSource
    DataSet = Books
    Left = 112
    Top = 168
  end
  object DSReasons: TDataSource
    DataSet = Reasons
    Left = 112
    Top = 224
  end
  object DSStreets: TDataSource
    DataSet = Streets
    Left = 112
    Top = 408
  end
  object DSRestrictions: TDataSource
    DataSet = Restrictions
    Left = 112
    Top = 464
  end
  object DSApplRestr: TDataSource
    DataSet = AppliedRestrictions
    Left = 112
    Top = 528
  end
  object Readers: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'READERS'
    Left = 32
    Top = 344
  end
  object DSReaders: TDataSource
    DataSet = Readers
    Left = 112
    Top = 344
  end
  object Publishers: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'PUBLISHERS'
    Left = 32
    Top = 592
  end
  object DSPublishers: TDataSource
    DataSet = Publishers
    Left = 112
    Top = 592
  end
  object TakenBooks: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'reader_id'
    MasterFields = 'id_Reader'
    MasterSource = DSReaders
    TableName = 'TAKEN_BOOKS'
    Left = 32
    Top = 288
  end
  object DSTakenBooks: TDataSource
    DataSet = TakenBooks
    Left = 112
    Top = 288
  end
end

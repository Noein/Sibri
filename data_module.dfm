object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 1083
  Top = 385
  Height = 636
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
    Connection = ADOConnection1
    TableName = 'ABSENCE_REASONS'
    Left = 32
    Top = 224
  end
  object TakenBooks: TADOTable
    Connection = ADOConnection1
    TableName = 'TAKEN_BOOKS'
    Left = 32
    Top = 280
  end
  object Readers: TADOTable
    Connection = ADOConnection1
    TableName = 'READERS'
    Left = 32
    Top = 344
  end
  object Streets: TADOTable
    Connection = ADOConnection1
    TableName = 'STREETS'
    Left = 32
    Top = 408
  end
  object Restrictions: TADOTable
    Connection = ADOConnection1
    TableName = 'RESTRICTIONS'
    Left = 32
    Top = 464
  end
  object AppliedRestrictions: TADOTable
    Connection = ADOConnection1
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
  object DSTakenBooks: TDataSource
    DataSet = TakenBooks
    Left = 112
    Top = 280
  end
  object DSReaders: TDataSource
    DataSet = Readers
    Left = 112
    Top = 344
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
end

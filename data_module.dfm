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
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ABSENCE_REASONS'
    Left = 32
    Top = 224
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
    Top = 280
  end
  object Readers: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'READERS'
    Left = 32
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
      Size = 255
    end
    object Readersfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 255
    end
    object Readerspatronymic: TWideStringField
      FieldName = 'patronymic'
      Size = 255
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
      Size = 255
    end
    object Readerswork_phone: TWideStringField
      FieldName = 'work_phone'
      Size = 255
    end
    object Readershome_phone: TWideStringField
      FieldName = 'home_phone'
      Size = 255
    end
    object Readerscell_phone: TWideStringField
      FieldName = 'cell_phone'
      Size = 255
    end
    object Readersstatus: TWideStringField
      FieldName = 'status'
      Size = 255
    end
    object Readersstreet: TStringField
      FieldKind = fkLookup
      FieldName = 'street'
      LookupDataSet = Streets
      LookupKeyFields = 'id_Street'
      LookupResultField = 'title'
      KeyFields = 'street_id'
      Size = 50
      Lookup = True
    end
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

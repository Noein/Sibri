object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 807
  Top = 560
  Height = 461
  Width = 470
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
    Top = 24
  end
  object Authors: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'AUTHORS'
    Left = 120
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = Authors
    Left = 200
    Top = 24
  end
end

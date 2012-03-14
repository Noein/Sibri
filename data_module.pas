unit data_module;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    Authors: TADOTable;
    DataSource1: TDataSource;
    Categories: TADOTable;
    DataSource2: TDataSource;
    Books: TADOTable;
    Reasons: TADOTable;
    TakenBooks: TADOTable;
    Readers: TADOTable;
    Streets: TADOTable;
    Restrictions: TADOTable;
    AppliedRestrictions: TADOTable;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    DataSource9: TDataSource;
    procedure ADOConnection1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

// Returns a full path to the current dir
function currentDirPath():String;
begin
  result:=extractFileDir(expandFileName('anything'));
end;

// Makes connection string at runtime.
// it's necessary because delphi don't understand relative paths.
procedure TDataModule1.ADOConnection1BeforeConnect(Sender: TObject);
begin
  ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=' + currentDirPath() +
   '\db\Library.mdb;Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";' +
   'Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;' +
   'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
end;

end.

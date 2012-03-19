{
  Copyright © 2012 Vladislav Mileshkin

  This file is part of Sibri.

  Sibri is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  Sibri is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with Sibri.  If not, see <http://www.gnu.org/licenses/>.
}
unit data_module;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataLibrary = class(TDataModule)
    ConnectionLibrary: TADOConnection;
    Authors: TADOTable;
    DSAuthors: TDataSource;
    Categories: TADOTable;
    DSCategories: TDataSource;
    Books: TADOTable;
    Reasons: TADOTable;
    Streets: TADOTable;
    Restrictions: TADOTable;
    AppliedRestrictions: TADOTable;
    DSBooks: TDataSource;
    DSReasons: TDataSource;
    DSStreets: TDataSource;
    DSRestrictions: TDataSource;
    DSApplRestr: TDataSource;
    Readers: TADOTable;
    DSReaders: TDataSource;
    Publishers: TADOTable;
    DSPublishers: TDataSource;
    TakenBooks: TADOTable;
    DSTakenBooks: TDataSource;
    ParticipatingAuthors: TADOTable;
    DSPartAuthors: TDataSource;
    procedure ConnectionLibraryBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataLibrary: TDataLibrary;

implementation

{$R *.dfm}

// Returns a full path to the current dir
function currentDirPath():String;
begin
  result:=extractFileDir(expandFileName('anything'));
end;

// Makes connection string at runtime.
// it's necessary because delphi don't understand relative paths.
procedure TDataLibrary.ConnectionLibraryBeforeConnect(Sender: TObject);
begin
  ConnectionLibrary.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=' + currentDirPath() +
   '\db\Library.mdb;Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";' +
   'Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;' +
   'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
end;

end.

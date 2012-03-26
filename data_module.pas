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
  SysUtils, Dialogs, Classes, DB, ADODB, Variants;

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
    Booksid_Book: TAutoIncField;
    Bookspublisher_id: TIntegerField;
    Bookscategory_id: TIntegerField;
    Booksreason_id: TIntegerField;
    Bookstitle: TWideStringField;
    Bookspublication_date: TDateTimeField;
    Bookscount: TIntegerField;
    BooksISBN: TWideStringField;
    BooksBBC: TWideStringField;
    BooksUDC: TWideStringField;
    Booksdescryption: TWideStringField;
    Booksauthors: TStringField;
    AuthorsQuery: TADOQuery;
    TakenBooksQuery: TADOQuery;
    procedure ConnectionLibraryBeforeConnect(Sender: TObject);
    procedure ReadersAfterScroll(DataSet: TDataSet);
    procedure BooksCalcFields(DataSet: TDataSet);
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

procedure TDataLibrary.ReadersAfterScroll(DataSet: TDataSet);
begin
  if Readers.FieldByName('id_Reader').Value <> Null then begin
    TakenBooks.Filter:='reader_id = '+''''+Readers.FieldByName('id_Reader').AsString+''''+' AND return_date = null';
    TakenBooks.Filtered:=True;
    end
  else
    TakenBooks.Filter:='id_Taken_book = null';
end;

procedure TDataLibrary.BooksCalcFields(DataSet: TDataSet);
var
  authorsstr:string;
  i:integer;
begin
  AuthorsQuery.Close;
  AuthorsQuery.SQL.Clear;
  AuthorsQuery.SQL.Add('SELECT AUTHORS.last_name, AUTHORS.first_name, AUTHORS.patronymic, PARTICIPATING_AUTHORS.author_id');
  AuthorsQuery.SQL.Add('FROM AUTHORS INNER JOIN PARTICIPATING_AUTHORS ON AUTHORS.id_Author = PARTICIPATING_AUTHORS.author_id');
  AuthorsQuery.SQL.Add('WHERE (([PARTICIPATING_AUTHORS]![book_id]=:bookid))');
  AuthorsQuery.Parameters.ParamByName('bookid').Value:=Books.FieldByName('id_Book').AsInteger;
  AuthorsQuery.Open;
  For i:=AuthorsQuery.RecordCount downto 1 do begin
    authorsstr:=authorsstr+AuthorsQuery.FieldByName('last_name').AsString;
    if AuthorsQuery.FieldByName('first_name').Value <> Null then
      authorsstr:=authorsstr+' '+AuthorsQuery.FieldByName('first_name').AsString[1]+'.';
    if AuthorsQuery.FieldByName('patronymic').Value <> Null then
      authorsstr:=authorsstr+' '+AuthorsQuery.FieldByName('patronymic').AsString[1]+'.';
    if i > 1 then authorsstr:=authorsstr+', ';
  end;
  Books.FieldByName('authors').AsString:=authorsstr;
end;

end.

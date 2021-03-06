{**
 * Copyright (C) 2012 Vladislav Mileshkin
 *
 * This file is part of Sibri.
 *
 * Sibri is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Sibri is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Sibri.  If not, see <http://www.gnu.org/licenses/>.
 *}

unit data_module;

interface

uses
  SysUtils, Dialogs, Classes, DB, ADODB, Variants, DateUtils;

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
    Sanctions: TADOTable;
    DSBooks: TDataSource;
    DSReasons: TDataSource;
    DSStreets: TDataSource;
    DSSanctions: TDataSource;
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
    Booksdescription: TWideStringField;
    Booksauthors: TStringField;
    AuthorsQuery: TADOQuery;
    TakenBooksQuery: TADOQuery;
    ParticipatingAuthorsid_Participating_author: TAutoIncField;
    ParticipatingAuthorsbook_id: TIntegerField;
    ParticipatingAuthorsauthor_id: TIntegerField;
    ParticipatingAuthorsauthor: TStringField;
    EditAuthorsQuery: TADOQuery;
    Readersid_Reader: TAutoIncField;
    Readerspassport_number: TIntegerField;
    Readerslast_name: TWideStringField;
    Readersfirst_name: TWideStringField;
    Readerspatronymic: TWideStringField;
    Readersbirth_date: TDateTimeField;
    Readersstreet_id: TIntegerField;
    Readershome_number: TIntegerField;
    Readershome_case: TIntegerField;
    Readerswork_place: TWideStringField;
    Readerswork_phone: TWideStringField;
    Readershome_phone: TWideStringField;
    Readerscell_phone: TWideStringField;
    Readersstreet: TStringField;
    TakenBooksid_Taken_book: TAutoIncField;
    TakenBooksbook_id: TIntegerField;
    TakenBooksreader_id: TIntegerField;
    TakenBookstaken_date: TDateTimeField;
    TakenBooksreturn_date: TDateTimeField;
    TakenBooksbook_title: TStringField;
    Bookspublisher: TStringField;
    Bookscategory: TStringField;
    Booksreason: TStringField;
    TakenBooksauthors: TStringField;
    DSQuery1: TDataSource;
    DebtorsQuery: TADOQuery;
    DSQuery2: TDataSource;
    DSQuery3: TDataSource;
    StatQuery: TADOQuery;
    Rep1Query: TADOQuery;
    Rep2Query: TADOQuery;
    DSRep1: TDataSource;
    DSRep2: TDataSource;
    TakenBooksmust_return_date: TDateField;
    Settings: TADOTable;
    DSSettings: TDataSource;
    StatusQuery: TADOQuery;
    TakenFromDate: TADOQuery;
    Readersdebt: TBooleanField;
    Readerstdatecomp: TBooleanField;
    AppliedSanctions: TADOTable;
    AppliedSanctionsid_Applied_sanction: TAutoIncField;
    AppliedSanctionsreader_id: TIntegerField;
    AppliedSanctionssanction_id: TIntegerField;
    AppliedSanctionsapplied_date: TDateTimeField;
    AppliedSanctionsapplied_time: TDateTimeField;
    AppliedSanctionstime: TStringField;
    AppliedSanctionssanction: TStringField;
    procedure ConnectionLibraryBeforeConnect(Sender: TObject);
    procedure ReadersAfterScroll(DataSet: TDataSet);
    procedure BooksCalcFields(DataSet: TDataSet);
    procedure ParticipatingAuthorsCalcFields(DataSet: TDataSet);
    procedure TakenBooksCalcFields(DataSet: TDataSet);
    procedure ReadersCalcFields(DataSet: TDataSet);
    procedure ReadersFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure AppliedSanctionsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function currentDirPath():String;
  end;

var
  DataLibrary: TDataLibrary;

implementation

uses main;

{$R *.dfm}

// Returns a full path to the current dir
function TDataLibrary.currentDirPath():String;
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
    AuthorsQuery.Next;
    if AuthorsQuery.FieldByName('first_name').Value <> Null then
      authorsstr:=authorsstr+' '+AuthorsQuery.FieldByName('first_name').AsString[1]+'.';
    if AuthorsQuery.FieldByName('patronymic').Value <> Null then
      authorsstr:=authorsstr+' '+AuthorsQuery.FieldByName('patronymic').AsString[1]+'.';
    if i > 1 then authorsstr:=authorsstr+', ';
  end;
  Books.FieldByName('authors').AsString:=authorsstr;
end;

procedure TDataLibrary.ParticipatingAuthorsCalcFields(DataSet: TDataSet);
var
  authorstr:string;
begin
  EditAuthorsQuery.Close;
  EditAuthorsQuery.SQL.Clear;
  EditAuthorsQuery.SQL.Add('SELECT AUTHORS.last_name, AUTHORS.first_name, AUTHORS.patronymic');
  EditAuthorsQuery.SQL.Add('FROM AUTHORS WHERE ([id_Author]=:author_id)');
  EditAuthorsQuery.Parameters.ParamByName('author_id').Value:=ParticipatingAuthors.FieldByName('author_id').AsInteger;
  EditAuthorsQuery.Open;
  authorstr:=authorstr+EditAuthorsQuery.FieldByName('last_name').AsString+' ';
  if EditAuthorsQuery.FieldByName('first_name').Value <> Null then
    authorstr:=authorstr+EditAuthorsQuery.FieldByName('first_name').AsString+' ';
  if EditAuthorsQuery.FieldByName('patronymic').Value <> Null then
    authorstr:=authorstr+EditAuthorsQuery.FieldByName('patronymic').AsString;
  ParticipatingAuthors.FieldByName('author').AsString:=authorstr;
end;

procedure TDataLibrary.TakenBooksCalcFields(DataSet: TDataSet);
begin
  TakenBooks.FieldByName('must_return_date').AsDateTime:=IncDay(TakenBooks.FieldByName('taken_date').AsDateTime, 14);
end;

procedure TDataLibrary.ReadersCalcFields(DataSet: TDataSet);
begin
  if MainForm.Checkbox1.Checked = True then begin
    StatusQuery.Close;
    StatusQuery.Parameters.ParamByName('id').Value:=Readers.FieldByName('id_Reader').AsInteger;
    StatusQuery.Open;
    if StatusQuery.RecordCount > 0 then Readers.FieldByName('debt').Value:=True else Readers.FieldByName('debt').Value:=False;
  end;
  if MainForm.Checkbox2.Checked = True then begin
    TakenFromDate.Close;
    TakenFromDate.Parameters.ParamByName('id').Value:=Readers.FieldByName('id_Reader').AsInteger;
    TakenFromDate.Parameters.ParamByName('date').Value:=StrToDate(DateToStr(MainForm.DateTimePicker3.Date));
    TakenFromDate.Open;
    if TakenFromDate.RecordCount > 0 then Readers.FieldByName('tdatecomp').Value:=True else Readers.FieldByName('tdatecomp').Value:=False;
  end;
end;

procedure TDataLibrary.ReadersFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if MainForm.CheckBox2.Checked=true then
    if Readers.FieldByName('tdatecomp').AsBoolean=True then
      Accept:=True else Accept:=False;
end;

procedure TDataLibrary.AppliedSanctionsCalcFields(DataSet: TDataSet);
begin
  AppliedSanctions.FieldByName('time').AsString:=FormatDateTime('hh:nn', AppliedSanctions.FieldByName('applied_time').AsDateTime);
end;

end.

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
unit taken_books;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TTakenBooksQForm = class(TForm)
    StaticText1: TStaticText;
    DBLookupComboBoxCat: TDBLookupComboBox;
    StaticText2: TStaticText;
    DateTimePickerFrom: TDateTimePicker;
    DateTimePickerTo: TDateTimePicker;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    procedure DBLookupComboBoxCatClick(Sender: TObject);
    procedure runQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TakenBooksQForm: TTakenBooksQForm;

implementation

uses data_module;

{$R *.dfm}

procedure TTakenBooksQForm.runQuery;
begin
  DataLibrary.TakenBooksQuery.Close;
  DataLibrary.TakenBooksQuery.SQL.Clear;
  DataLibrary.TakenBooksQuery.SQL.Add('SELECT DISTINCT BOOKS.id_Book, First([AUTHORS]![last_name]+" "+[AUTHORS]![first_name]) AS Author, BOOKS.title, Year([publication_date]) AS [Year]');
  DataLibrary.TakenBooksQuery.SQL.Add('FROM CATEGORIES INNER JOIN (AUTHORS INNER JOIN ((BOOKS INNER JOIN TAKEN_BOOKS ON BOOKS.id_Book = TAKEN_BOOKS.book_id) ');
  DataLibrary.TakenBooksQuery.SQL.Add('INNER JOIN PARTICIPATING_AUTHORS ON BOOKS.id_Book = PARTICIPATING_AUTHORS.book_id) ON AUTHORS.id_Author = PARTICIPATING_AUTHORS.author_id) ON CATEGORIES.id_Category = BOOKS.category_id');
  DataLibrary.TakenBooksQuery.SQL.Add('GROUP BY BOOKS.id_Book, BOOKS.title, BOOKS.publication_date, BOOKS.category_id, TAKEN_BOOKS.taken_date');
  DataLibrary.TakenBooksQuery.SQL.Add('HAVING (((BOOKS.category_id)=:cat) AND ((TAKEN_BOOKS.taken_date)>:fromDate And (TAKEN_BOOKS.taken_date)<:toDate));');
  if DBLookupComboBoxCat.KeyValue <> Null then
    DataLibrary.TakenBooksQuery.Parameters.ParamByName('cat').Value:=DBLookupComboBoxCat.KeyValue;
  DataLibrary.TakenBooksQuery.Parameters.ParamByName('fromDate').Value:=DateToStr(DateTimePickerFrom.Date);
  DataLibrary.TakenBooksQuery.Parameters.ParamByName('toDate').Value:=DateToStr(DateTimePickerTo.Date);
  DataLibrary.TakenBooksQuery.Open;
end;

procedure TTakenBooksQForm.DBLookupComboBoxCatClick(Sender: TObject);
begin
  runQuery();
end;

end.

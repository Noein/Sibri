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

procedure makeQuery;
var
  query:string;
  i:integer;
begin
  DataLibrary.TakenBooksQuery.Close;
  DataLibrary.TakenBooksQuery.SQL.Clear;
  DataLibrary.TakenBooksQuery.SQL.Add('');
  DataLibrary.TakenBooksQuery.SQL.Add('WHERE (([PARTICIPATING_AUTHORS]![book_id]=:bookid))');
  //DataLibrary.TakenBooksQuery.Parameters.ParamByName('bookid').Value:=Books.FieldByName('id_Book').AsInteger;
  DataLibrary.TakenBooksQuery.Open;
end;

procedure TTakenBooksQForm.DBLookupComboBoxCatClick(Sender: TObject);
begin
  makeQuery();
end;

end.

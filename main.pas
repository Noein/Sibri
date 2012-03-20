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
unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, XPMan, ComCtrls, Menus, ExtCtrls,
  DBCtrls, DB;

const
  DEBUG = true;

type
  TMainForm = class(TForm)
    XPManifest1: TXPManifest;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    DBGrid2: TDBGrid;
    FindReaderEdit: TLabeledEdit;
    ExtendSearchButton: TButton;
    FindReaderButton: TButton;
    Label1: TLabel;
    DBGrid3: TDBGrid;
    Label2: TLabel;
    ReturnBookButton: TButton;
    AppyRestButton: TButton;
    CleanRestButton: TButton;
    AddReaderButton: TButton;
    EditReaderButton: TButton;
    DelReaderButton: TButton;
    DBGridBooks: TDBGrid;
    DBGrid5: TDBGrid;
    DBNavigator5: TDBNavigator;
    DBGrid6: TDBGrid;
    DBNavigator6: TDBNavigator;
    DBGrid7: TDBGrid;
    DBNavigator7: TDBNavigator;
    DBGrid8: TDBGrid;
    DBNavigator8: TDBNavigator;
    DBGrid9: TDBGrid;
    DBNavigator9: TDBNavigator;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid10: TDBGrid;
    DBNavigator10: TDBNavigator;
    AddBookButton: TButton;
    FindBookEdit: TLabeledEdit;
    FindBookButton: TButton;
    Button4: TButton;
    EditBookButton: TButton;
    DelBookButton: TButton;
    TakeBookButton: TButton;
    N4: TMenuItem;
    NEEDMoreTimeButton: TButton;
    procedure N2Click(Sender: TObject);
    procedure AddBookButtonClick(Sender: TObject);
    procedure AddReaderButtonClick(Sender: TObject);
    procedure DelReaderButtonClick(Sender: TObject);
    procedure EditReaderButtonClick(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure TakeBookButtonClick(Sender: TObject);
    procedure DelBookButtonClick(Sender: TObject);
    procedure EditBookButtonClick(Sender: TObject);
    procedure FindReaderButtonClick(Sender: TObject);
    procedure FindBookButtonClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ReturnBookButtonClick(Sender: TObject);
    procedure NEEDMoreTimeButtonClick(Sender: TObject);
    procedure CleanRestButtonClick(Sender: TObject);
    procedure AppyRestButtonClick(Sender: TObject);
    procedure ExtendSearchButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  
var
  MainForm: TMainForm;


implementation

uses data_module, about, book_add, reader_edit, reader_add, book_edit,
  apply_restr, reader_search;

{$R *.dfm}

// Help -> About program
procedure TMainForm.N2Click(Sender: TObject);
begin
  AboutForm.Memo1.lines.loadFromFile('COPYING');
  AboutForm.showModal();
end;

procedure TMainForm.AddBookButtonClick(Sender: TObject);
begin
  BookAddForm.showModal();
end;

procedure TMainForm.EditBookButtonClick(Sender: TObject);
begin
  BookEditForm.showModal();
end;

procedure TMainForm.DelBookButtonClick(Sender: TObject);
begin
  DataLibrary.Books.Delete;
end;

procedure TMainForm.AddReaderButtonClick(Sender: TObject);
begin
  ReaderAddForm.showModal();
end;

procedure TMainForm.EditReaderButtonClick(Sender: TObject);
begin
  ReaderEditForm.showModal();
end;

procedure TMainForm.DelReaderButtonClick(Sender: TObject);
begin
  DataLibrary.Readers.Delete;
end;

procedure TMainForm.TabSheet6Show(Sender: TObject);
begin
   TakeBookButton.Caption:='Взять книгу для читателя: '+
   DataLibrary.Readers.FieldByName('last_name').AsString+' '+
   DataLibrary.Readers.FieldByName('first_name').AsString;
end;

procedure TMainForm.TakeBookButtonClick(Sender: TObject);
var count:integer;
begin
  count:=DataLibrary.Books.fieldByName('count').AsInteger;
  if count > 0 then begin
    DataLibrary.Books.Edit;
    DataLibrary.Books.fieldByName('count').AsInteger:=count - 1;
    DataLibrary.Books.Post;
    DataLibrary.Books.Refresh;
    DataLibrary.TakenBooks.insert;
    DataLibrary.TakenBooks.FieldByName('book_id').AsInteger:=DataLibrary.Books.fieldByName('id_Book').AsInteger;
    DataLibrary.TakenBooks.FieldByName('reader_id').AsInteger:=DataLibrary.Readers.fieldByName('id_Reader').AsInteger;
    DataLibrary.TakenBooks.FieldByName('taken_date').AsString:=DateToStr(Now);
    DataLibrary.TakenBooks.FieldByName('return_date').Assign(Nil);
    DataLibrary.TakenBooks.Post;
    DataLibrary.TakenBooks.Refresh;
    end
  else
    showMessage('Нельзя взять книгу, экземпляров которой не осталось!');
end;

procedure TMainForm.FindReaderButtonClick(Sender: TObject);
begin
  if NOT(FindReaderEdit.Text = '') then begin
      DataLibrary.Readers.Filter:='last_name LIKE '+''''+FindReaderEdit.Text+'%''';
      DataLibrary.Readers.Filtered:=true;
    end
  else
    DataLibrary.Readers.Filtered:=false;
end;

procedure TMainForm.FindBookButtonClick(Sender: TObject);
begin
  if NOT(FindBookEdit.Text = '') then begin
      DataLibrary.Books.Filter:='title LIKE '+''''+FindBookEdit.Text+'%''';
      DataLibrary.Books.Filtered:=true;
    end
  else
    DataLibrary.Books.Filtered:=false;
end;

procedure TMainForm.N4Click(Sender: TObject);
begin
  close();
end;

procedure TMainForm.ReturnBookButtonClick(Sender: TObject);
begin
  DataLibrary.Books.Locate('id_Book', DataLibrary.TakenBooks.fieldByName('book_id').AsString, [locaseinsensitive]);
  DataLibrary.Books.Edit;
  DataLibrary.Books.fieldByName('count').AsInteger:=DataLibrary.Books.fieldByName('count').AsInteger + 1;
  DataLibrary.Books.Post;
  DataLibrary.Books.Refresh;
  DataLibrary.TakenBooks.Edit;
  DataLibrary.TakenBooks.fieldByName('return_date').AsString:=DateToStr(Now);
  DataLibrary.TakenBooks.Post;
  DataLibrary.TakenBooks.Refresh;
end;

procedure TMainForm.NEEDMoreTimeButtonClick(Sender: TObject);
begin
  DataLibrary.TakenBooks.Edit;
  DataLibrary.TakenBooks.fieldByName('taken_date').AsString:=DateToStr(Now);
  DataLibrary.TakenBooks.Post;
  DataLibrary.TakenBooks.Refresh;
end;

procedure TMainForm.CleanRestButtonClick(Sender: TObject);
var i:integer;
begin
  For i:=DataLibrary.AppliedRestrictions.RecordCount downto 1 do
    DataLibrary.AppliedRestrictions.Delete();
end;

procedure TMainForm.AppyRestButtonClick(Sender: TObject);
begin
  ApplyRestForm.showModal();
end;

procedure TMainForm.ExtendSearchButtonClick(Sender: TObject);
begin
  ReaderSearchForm.showModal();
end;

end.

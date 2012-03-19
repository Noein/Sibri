{
  Copyright � 2012 Vladislav Mileshkin

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
unit book_add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TBookAddForm = class(TForm)
    SaveButton: TButton;
    CancelButton: TButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    Edit1: TEdit;
    Label1: TLabel;
    DBGridPA: TDBGrid;
    DBNavPA: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure SaveButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BookAddForm: TBookAddForm;

implementation

uses data_module;

{$R *.dfm}

procedure TBookAddForm.CancelButtonClick(Sender: TObject);
begin
  close();
  DateTimePicker1.Date:=Now;
  DBLookupComboBox1.KeyValue:=Null;
  DBLookupComboBox2.KeyValue:=Null;
  DBLookupComboBox3.KeyValue:=Null;
end;

procedure TBookAddForm.SaveButtonClick(Sender: TObject);
begin
  DataLibrary.Books.Insert;
  DataLibrary.Books.FieldByName('publisher_id').AsString:=DBLookupComboBox1.KeyValue;
  DataLibrary.Books.FieldByName('category_id').AsString:=DBLookupComboBox2.KeyValue;
  DataLibrary.Books.FieldByName('reason_id').AsString:=DBLookupComboBox3.KeyValue;
  DataLibrary.Books.FieldByName('title').AsString:=Edit1.Text;
  DataLibrary.Books.FieldByName('publication_date').AsString:=DateToStr(DateTimePicker1.Date);
  DataLibrary.Books.FieldByName('count').AsString:=Edit5.Text;
  DataLibrary.Books.FieldByName('ISBN').AsString:=Edit2.Text;
  DataLibrary.Books.FieldByName('BBC').AsString:=Edit3.Text;
  DataLibrary.Books.FieldByName('UDC').AsString:=Edit4.Text;
  DataLibrary.Books.FieldByName('descryption').AsString:=Edit7.Text;
  DataLibrary.Books.Post;
  DataLibrary.Books.Refresh;
  close();
end;

end.
